--- AWS SDK config

local M = {}

--- The http_request function to use when calling AWS service endpoints
-- Replace this function with a function that matches what your engine
-- provides
-- @param uri
-- @param method GET|POST etc
-- @param headers Request headers (key-value pair table)
-- @param post_data Optional data to send (string)
-- @param callback Callback function to invoke when request has completed. The
-- callback function must take a single argument consisting of a response table.
-- The response table is expected to have the following fields:
--   * status - Status code (number)
--   * response - The response data (string)
--   * headers - Response headers (table, key-value pairs)
function M.http_request(uri, method, headers, post_data, callback)
	print("No-op http_request. Replace with your own implementation")
	print(uri, method, headers, post_data, callback)
end



--- Use the Defold http.request() function to make HTTP requests
function M.use_defold()
	M.http_request = function(uri, method, headers, post_data, callback)
		http.request(uri, method, function(_, _, response)
			callback(response)
		end, headers, post_data)
	end
end


--- Use the LuaSocket http module to make HTTP requests
function M.use_luasocket(http, ltn12)
	M.http_request = function(uri, method, headers, post_data, callback)
		local response = {}
		local result, code, response_headers, status = http.request({
			method = method,
			url = uri,
			headers = headers,
			source = ltn12.source.string(post_data),
			sink = ltn12.sink.table(response)
		})
		callback({ status = code, response = response and response[1] or nil, headers = response_headers })
	end
end

function M.use_resty_http(http)
	local json = require "aws-sdk.utils.json"
	M.http_request = function(uri, method, headers, post_data, callback)
		for k, v in pairs(headers) do print(k, v) end
		local response, error = http:request_uri(uri, {
			method = method,
			body = post_data,
			headers = {
				["X-Amz-Target"] = headers["X-Amz-Target"],
				["Content-Type"] = headers["application/x-amz-json-1.1"],
				["Authorization"] = headers["Authorization"],
				["X-Amz-Date"] = headers["X-Amz-Date"],
				["Host"] = "ecr.ap-southeast-1.amazonaws.com"
			},
		})
		if error then
			ngx.log(ngx.ERR, "HHH - ERROR!")
			ngx.log(ngx.ERR, error)
			callback({ status = 500, response = error})
		end
		ngx.log(ngx.INFO, response.body)
		callback({ status = response.status, response = json.encode(response.body), headers = response.headers })
	end
end

--- Use the Corona network.request function to make HTTP requests
function M.use_corona()
	M.http_request = function(uri, method, headers, post_data, callback)
		network.request(uri, method, function(event)
			callback({ status = event.status, headers = event.responseHeaders, response = event.response })
		end, {
			headers = headers,
			body = post_data,
		})
	end
end

return M
