--- GENERATED CODE - DO NOT MODIFY
-- Amazon Elastic Transcoder (elastictranscoder-2012-09-25)

local M = {}

M.metadata = {
	api_version = "2012-09-25",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "elastictranscoder",
	service_abbreviation = "",
	service_full_name = "Amazon Elastic Transcoder",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "elastictranscoder-2012-09-25",
}

local keys = {}
local asserts = {}

keys.JobOutput = { ["Status"] = true, ["AppliedColorSpaceConversion"] = true, ["Rotate"] = true, ["Encryption"] = true, ["AlbumArt"] = true, ["FrameRate"] = true, ["StatusDetail"] = true, ["PresetId"] = true, ["Height"] = true, ["Width"] = true, ["Watermarks"] = true, ["SegmentDuration"] = true, ["FileSize"] = true, ["Key"] = true, ["Captions"] = true, ["Duration"] = true, ["DurationMillis"] = true, ["ThumbnailPattern"] = true, ["ThumbnailEncryption"] = true, ["Id"] = true, ["Composition"] = true, nil }

function asserts.AssertJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertJobStatus(struct["Status"]) end
	if struct["AppliedColorSpaceConversion"] then asserts.AssertString(struct["AppliedColorSpaceConversion"]) end
	if struct["Rotate"] then asserts.AssertRotate(struct["Rotate"]) end
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["AlbumArt"] then asserts.AssertJobAlbumArt(struct["AlbumArt"]) end
	if struct["FrameRate"] then asserts.AssertFloatString(struct["FrameRate"]) end
	if struct["StatusDetail"] then asserts.AssertDescription(struct["StatusDetail"]) end
	if struct["PresetId"] then asserts.AssertId(struct["PresetId"]) end
	if struct["Height"] then asserts.AssertNullableInteger(struct["Height"]) end
	if struct["Width"] then asserts.AssertNullableInteger(struct["Width"]) end
	if struct["Watermarks"] then asserts.AssertJobWatermarks(struct["Watermarks"]) end
	if struct["SegmentDuration"] then asserts.AssertFloatString(struct["SegmentDuration"]) end
	if struct["FileSize"] then asserts.AssertNullableLong(struct["FileSize"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	if struct["Captions"] then asserts.AssertCaptions(struct["Captions"]) end
	if struct["Duration"] then asserts.AssertNullableLong(struct["Duration"]) end
	if struct["DurationMillis"] then asserts.AssertNullableLong(struct["DurationMillis"]) end
	if struct["ThumbnailPattern"] then asserts.AssertThumbnailPattern(struct["ThumbnailPattern"]) end
	if struct["ThumbnailEncryption"] then asserts.AssertEncryption(struct["ThumbnailEncryption"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["Composition"] then asserts.AssertComposition(struct["Composition"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobOutput[k], "JobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobOutput
-- <important> <p>Outputs recommended instead.</p> </important> <p>If you specified one output for a job, information about that output. If you specified multiple outputs for a job, the <code>Output</code> object lists information about the first output. This duplicates the information that is listed for the first output in the <code>Outputs</code> object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [JobStatus] <p> The status of one output in a job. If you specified only one output for the job, <code>Outputs:Status</code> is always the same as <code>Job:Status</code>. If you specified more than one output: </p> <ul> <li> <p> <code>Job:Status</code> and <code>Outputs:Status</code> for all of the outputs is Submitted until Elastic Transcoder starts to process the first output.</p> </li> <li> <p>When Elastic Transcoder starts to process the first output, <code>Outputs:Status</code> for that output and <code>Job:Status</code> both change to Progressing. For each output, the value of <code>Outputs:Status</code> remains Submitted until Elastic Transcoder starts to process the output.</p> </li> <li> <p>Job:Status remains Progressing until all of the outputs reach a terminal status, either Complete or Error.</p> </li> <li> <p>When all of the outputs reach a terminal status, <code>Job:Status</code> changes to Complete only if <code>Outputs:Status</code> for all of the outputs is <code>Complete</code>. If <code>Outputs:Status</code> for one or more outputs is <code>Error</code>, the terminal status for <code>Job:Status</code> is also <code>Error</code>.</p> </li> </ul> <p>The value of <code>Status</code> is one of the following: <code>Submitted</code>, <code>Progressing</code>, <code>Complete</code>, <code>Canceled</code>, or <code>Error</code>. </p>
-- * AppliedColorSpaceConversion [String] <p>If Elastic Transcoder used a preset with a <code>ColorSpaceConversionMode</code> to transcode the output file, the <code>AppliedColorSpaceConversion</code> parameter shows the conversion used. If no <code>ColorSpaceConversionMode</code> was defined in the preset, this parameter is not be included in the job response.</p>
-- * Rotate [Rotate] <p>The number of degrees clockwise by which you want Elastic Transcoder to rotate the output relative to the input. Enter one of the following values:</p> <p> <code>auto</code>, <code>0</code>, <code>90</code>, <code>180</code>, <code>270</code> </p> <p> The value <code>auto</code> generally works only if the file that you're transcoding contains rotation metadata.</p>
-- * Encryption [Encryption] <p>The encryption settings, if any, that you want Elastic Transcoder to apply to your output files. If you choose to use encryption, you must specify a mode to use. If you choose not to use encryption, Elastic Transcoder writes an unencrypted file to your Amazon S3 bucket.</p>
-- * AlbumArt [JobAlbumArt] <p>The album art to be associated with the output file, if any.</p>
-- * FrameRate [FloatString] <p>Frame rate of the output file, in frames per second.</p>
-- * StatusDetail [Description] <p>Information that further explains <code>Status</code>.</p>
-- * PresetId [Id] <p>The value of the <code>Id</code> object for the preset that you want to use for this job. The preset determines the audio, video, and thumbnail settings that Elastic Transcoder uses for transcoding. To use a preset that you created, specify the preset ID that Elastic Transcoder returned in the response when you created the preset. You can also use the Elastic Transcoder system presets, which you can get with <code>ListPresets</code>.</p>
-- * Height [NullableInteger] <p>Height of the output file, in pixels.</p>
-- * Width [NullableInteger] <p>Specifies the width of the output file in pixels.</p>
-- * Watermarks [JobWatermarks] <p>Information about the watermarks that you want Elastic Transcoder to add to the video during transcoding. You can specify up to four watermarks for each output. Settings for each watermark must be defined in the preset that you specify in <code>Preset</code> for the current output.</p> <p>Watermarks are added to the output video in the sequence in which you list them in the job output—the first watermark in the list is added to the output video first, the second watermark in the list is added next, and so on. As a result, if the settings in a preset cause Elastic Transcoder to place all watermarks in the same location, the second watermark that you add covers the first one, the third one covers the second, and the fourth one covers the third.</p>
-- * SegmentDuration [FloatString] <important> <p>(Outputs in Fragmented MP4 or MPEG-TS format only.</p> </important> <p>If you specify a preset in <code>PresetId</code> for which the value of <code>Container</code> is <code>fmp4</code> (Fragmented MP4) or <code>ts</code> (MPEG-TS), <code>SegmentDuration</code> is the target maximum duration of each segment in seconds. For <code>HLSv3</code> format playlists, each media segment is stored in a separate <code>.ts</code> file. For <code>HLSv4</code>, <code>MPEG-DASH</code>, and <code>Smooth</code> playlists, all media segments for an output are stored in a single file. Each segment is approximately the length of the <code>SegmentDuration</code>, though individual segments might be shorter or longer.</p> <p>The range of valid values is 1 to 60 seconds. If the duration of the video is not evenly divisible by <code>SegmentDuration</code>, the duration of the last segment is the remainder of total length/SegmentDuration.</p> <p>Elastic Transcoder creates an output-specific playlist for each output <code>HLS</code> output that you specify in OutputKeys. To add an output to the master playlist for this job, include it in the <code>OutputKeys</code> of the associated playlist.</p>
-- * FileSize [NullableLong] <p>File size of the output file, in bytes.</p>
-- * Key [Key] <p> The name to assign to the transcoded file. Elastic Transcoder saves the file in the Amazon S3 bucket specified by the <code>OutputBucket</code> object in the pipeline that is specified by the pipeline ID.</p>
-- * Captions [Captions] <p>You can configure Elastic Transcoder to transcode captions, or subtitles, from one format to another. All captions must be in UTF-8. Elastic Transcoder supports two types of captions:</p> <ul> <li> <p> <b>Embedded:</b> Embedded captions are included in the same file as the audio and video. Elastic Transcoder supports only one embedded caption per language, to a maximum of 300 embedded captions per file.</p> <p>Valid input values include: <code>CEA-608 (EIA-608</code>, first non-empty channel only), <code>CEA-708 (EIA-708</code>, first non-empty channel only), and <code>mov-text</code> </p> <p>Valid outputs include: <code>mov-text</code> </p> <p>Elastic Transcoder supports a maximum of one embedded format per output.</p> </li> <li> <p> <b>Sidecar:</b> Sidecar captions are kept in a separate metadata file from the audio and video data. Sidecar captions require a player that is capable of understanding the relationship between the video file and the sidecar file. Elastic Transcoder supports only one sidecar caption per language, to a maximum of 20 sidecar captions per file.</p> <p>Valid input values include: <code>dfxp</code> (first div element only), <code>ebu-tt</code>, <code>scc</code>, <code>smpt</code>, <code>srt</code>, <code>ttml</code> (first div element only), and <code>webvtt</code> </p> <p>Valid outputs include: <code>dfxp</code> (first div element only), <code>scc</code>, <code>srt</code>, and <code>webvtt</code>.</p> </li> </ul> <p>If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.</p> <p>Elastic Transcoder does not support OCR (Optical Character Recognition), does not accept pictures as a valid input for captions, and is not available for audio-only transcoding. Elastic Transcoder does not preserve text formatting (for example, italics) during the transcoding process.</p> <p>To remove captions or leave the captions empty, set <code>Captions</code> to null. To pass through existing captions unchanged, set the <code>MergePolicy</code> to <code>MergeRetain</code>, and pass in a null <code>CaptionSources</code> array.</p> <p>For more information on embedded files, see the Subtitles Wikipedia page.</p> <p>For more information on sidecar files, see the Extensible Metadata Platform and Sidecar file Wikipedia pages.</p>
-- * Duration [NullableLong] <p>Duration of the output file, in seconds.</p>
-- * DurationMillis [NullableLong] <p>Duration of the output file, in milliseconds.</p>
-- * ThumbnailPattern [ThumbnailPattern] <p>Whether you want Elastic Transcoder to create thumbnails for your videos and, if so, how you want Elastic Transcoder to name the files.</p> <p>If you don't want Elastic Transcoder to create thumbnails, specify "".</p> <p>If you do want Elastic Transcoder to create thumbnails, specify the information that you want to include in the file name for each thumbnail. You can specify the following values in any sequence:</p> <ul> <li> <p> <b> <code>{count}</code> (Required)</b>: If you want to create thumbnails, you must include <code>{count}</code> in the <code>ThumbnailPattern</code> object. Wherever you specify <code>{count}</code>, Elastic Transcoder adds a five-digit sequence number (beginning with <b>00001</b>) to thumbnail file names. The number indicates where a given thumbnail appears in the sequence of thumbnails for a transcoded file. </p> <important> <p>If you specify a literal value and/or <code>{resolution}</code> but you omit <code>{count}</code>, Elastic Transcoder returns a validation error and does not create the job.</p> </important> </li> <li> <p> <b>Literal values (Optional)</b>: You can specify literal values anywhere in the <code>ThumbnailPattern</code> object. For example, you can include them as a file name prefix or as a delimiter between <code>{resolution}</code> and <code>{count}</code>. </p> </li> <li> <p> <b> <code>{resolution}</code> (Optional)</b>: If you want Elastic Transcoder to include the resolution in the file name, include <code>{resolution}</code> in the <code>ThumbnailPattern</code> object. </p> </li> </ul> <p>When creating thumbnails, Elastic Transcoder automatically saves the files in the format (.jpg or .png) that appears in the preset that you specified in the <code>PresetID</code> value of <code>CreateJobOutput</code>. Elastic Transcoder also appends the applicable file name extension.</p>
-- * ThumbnailEncryption [Encryption] <p>The encryption settings, if any, that you want Elastic Transcoder to apply to your thumbnail.</p>
-- * Id [String] <p>A sequential counter, starting with 1, that identifies an output among the outputs from the current job. In the Output syntax, this value is always 1.</p>
-- * Composition [Composition] <p>You can create an output file that contains an excerpt from the input file. This excerpt, called a clip, can come from the beginning, middle, or end of the file. The Composition object contains settings for the clips that make up an output file. For the current release, you can only specify settings for a single clip per output file. The Composition object cannot be null.</p>
-- @return JobOutput structure as a key-value pair table
function M.JobOutput(args)
	assert(args, "You must provide an argument table when creating JobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["AppliedColorSpaceConversion"] = args["AppliedColorSpaceConversion"],
		["Rotate"] = args["Rotate"],
		["Encryption"] = args["Encryption"],
		["AlbumArt"] = args["AlbumArt"],
		["FrameRate"] = args["FrameRate"],
		["StatusDetail"] = args["StatusDetail"],
		["PresetId"] = args["PresetId"],
		["Height"] = args["Height"],
		["Width"] = args["Width"],
		["Watermarks"] = args["Watermarks"],
		["SegmentDuration"] = args["SegmentDuration"],
		["FileSize"] = args["FileSize"],
		["Key"] = args["Key"],
		["Captions"] = args["Captions"],
		["Duration"] = args["Duration"],
		["DurationMillis"] = args["DurationMillis"],
		["ThumbnailPattern"] = args["ThumbnailPattern"],
		["ThumbnailEncryption"] = args["ThumbnailEncryption"],
		["Id"] = args["Id"],
		["Composition"] = args["Composition"],
	}
	asserts.AssertJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestRoleResponse = { ["Messages"] = true, ["Success"] = true, nil }

function asserts.AssertTestRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRoleResponse to be of type 'table'")
	if struct["Messages"] then asserts.AssertExceptionMessages(struct["Messages"]) end
	if struct["Success"] then asserts.AssertSuccess(struct["Success"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestRoleResponse[k], "TestRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRoleResponse
-- <p>The <code>TestRoleResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Messages [ExceptionMessages] <p>If the <code>Success</code> element contains <code>false</code>, this value is an array of one or more error messages that were generated during the test process.</p>
-- * Success [Success] <p>If the operation is successful, this value is <code>true</code>; otherwise, the value is <code>false</code>.</p>
-- @return TestRoleResponse structure as a key-value pair table
function M.TestRoleResponse(args)
	assert(args, "You must provide an argument table when creating TestRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Messages"] = args["Messages"],
		["Success"] = args["Success"],
	}
	asserts.AssertTestRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsByStatusResponse = { ["NextPageToken"] = true, ["Jobs"] = true, nil }

function asserts.AssertListJobsByStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByStatusResponse to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertId(struct["NextPageToken"]) end
	if struct["Jobs"] then asserts.AssertJobs(struct["Jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsByStatusResponse[k], "ListJobsByStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByStatusResponse
-- <p> The <code>ListJobsByStatusResponse</code> structure. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [Id] <p> A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of <code>NextPageToken</code> is <code>null</code>. </p>
-- * Jobs [Jobs] <p>An array of <code>Job</code> objects that have the specified status.</p>
-- @return ListJobsByStatusResponse structure as a key-value pair table
function M.ListJobsByStatusResponse(args)
	assert(args, "You must provide an argument table when creating ListJobsByStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Jobs"] = args["Jobs"],
	}
	asserts.AssertListJobsByStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReadPresetResponse = { ["Preset"] = true, nil }

function asserts.AssertReadPresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPresetResponse to be of type 'table'")
	if struct["Preset"] then asserts.AssertPreset(struct["Preset"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReadPresetResponse[k], "ReadPresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPresetResponse
-- <p>The <code>ReadPresetResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Preset [Preset] <p>A section of the response body that provides information about the preset.</p>
-- @return ReadPresetResponse structure as a key-value pair table
function M.ReadPresetResponse(args)
	assert(args, "You must provide an argument table when creating ReadPresetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Preset"] = args["Preset"],
	}
	asserts.AssertReadPresetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Notifications = { ["Completed"] = true, ["Warning"] = true, ["Progressing"] = true, ["Error"] = true, nil }

function asserts.AssertNotifications(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notifications to be of type 'table'")
	if struct["Completed"] then asserts.AssertSnsTopic(struct["Completed"]) end
	if struct["Warning"] then asserts.AssertSnsTopic(struct["Warning"]) end
	if struct["Progressing"] then asserts.AssertSnsTopic(struct["Progressing"]) end
	if struct["Error"] then asserts.AssertSnsTopic(struct["Error"]) end
	for k,_ in pairs(struct) do
		assert(keys.Notifications[k], "Notifications contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notifications
-- <p>The Amazon Simple Notification Service (Amazon SNS) topic or topics to notify in order to report job status.</p> <important> <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p> </important>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Completed [SnsTopic] <p>The Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing the job.</p>
-- * Warning [SnsTopic] <p>The Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition.</p>
-- * Progressing [SnsTopic] <p>The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process the job.</p>
-- * Error [SnsTopic] <p>The Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition.</p>
-- @return Notifications structure as a key-value pair table
function M.Notifications(args)
	assert(args, "You must provide an argument table when creating Notifications")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Completed"] = args["Completed"],
		["Warning"] = args["Warning"],
		["Progressing"] = args["Progressing"],
		["Error"] = args["Error"],
	}
	asserts.AssertNotifications(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Preset = { ["Thumbnails"] = true, ["Container"] = true, ["Description"] = true, ["Video"] = true, ["Audio"] = true, ["Type"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertPreset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Preset to be of type 'table'")
	if struct["Thumbnails"] then asserts.AssertThumbnails(struct["Thumbnails"]) end
	if struct["Container"] then asserts.AssertPresetContainer(struct["Container"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Video"] then asserts.AssertVideoParameters(struct["Video"]) end
	if struct["Audio"] then asserts.AssertAudioParameters(struct["Audio"]) end
	if struct["Type"] then asserts.AssertPresetType(struct["Type"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Preset[k], "Preset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Preset
-- <p>Presets are templates that contain most of the settings for transcoding media files from one format to another. Elastic Transcoder includes some default presets for common formats, for example, several iPod and iPhone versions. You can also create your own presets for formats that aren't included among the default presets. You specify which preset you want to use when you create a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Thumbnails [Thumbnails] <p>A section of the response body that provides information about the thumbnail preset values, if any.</p>
-- * Container [PresetContainer] <p>The container type for the output file. Valid values include <code>flac</code>, <code>flv</code>, <code>fmp4</code>, <code>gif</code>, <code>mp3</code>, <code>mp4</code>, <code>mpg</code>, <code>mxf</code>, <code>oga</code>, <code>ogg</code>, <code>ts</code>, and <code>webm</code>.</p>
-- * Description [Description] <p>A description of the preset.</p>
-- * Video [VideoParameters] <p>A section of the response body that provides information about the video preset values.</p>
-- * Audio [AudioParameters] <p>A section of the response body that provides information about the audio preset values.</p>
-- * Type [PresetType] <p>Whether the preset is a default preset provided by Elastic Transcoder (<code>System</code>) or a preset that you have defined (<code>Custom</code>).</p>
-- * Id [Id] <p>Identifier for the new preset. You use this value to get settings for the preset or to delete it.</p>
-- * Arn [String] <p>The Amazon Resource Name (ARN) for the preset.</p>
-- * Name [Name] <p>The name of the preset.</p>
-- @return Preset structure as a key-value pair table
function M.Preset(args)
	assert(args, "You must provide an argument table when creating Preset")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Thumbnails"] = args["Thumbnails"],
		["Container"] = args["Container"],
		["Description"] = args["Description"],
		["Video"] = args["Video"],
		["Audio"] = args["Audio"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertPreset(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Timing = { ["FinishTimeMillis"] = true, ["SubmitTimeMillis"] = true, ["StartTimeMillis"] = true, nil }

function asserts.AssertTiming(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Timing to be of type 'table'")
	if struct["FinishTimeMillis"] then asserts.AssertNullableLong(struct["FinishTimeMillis"]) end
	if struct["SubmitTimeMillis"] then asserts.AssertNullableLong(struct["SubmitTimeMillis"]) end
	if struct["StartTimeMillis"] then asserts.AssertNullableLong(struct["StartTimeMillis"]) end
	for k,_ in pairs(struct) do
		assert(keys.Timing[k], "Timing contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Timing
-- <p>Details about the timing of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinishTimeMillis [NullableLong] <p>The time the job finished transcoding, in epoch milliseconds.</p>
-- * SubmitTimeMillis [NullableLong] <p>The time the job was submitted to Elastic Transcoder, in epoch milliseconds.</p>
-- * StartTimeMillis [NullableLong] <p>The time the job began transcoding, in epoch milliseconds.</p>
-- @return Timing structure as a key-value pair table
function M.Timing(args)
	assert(args, "You must provide an argument table when creating Timing")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinishTimeMillis"] = args["FinishTimeMillis"],
		["SubmitTimeMillis"] = args["SubmitTimeMillis"],
		["StartTimeMillis"] = args["StartTimeMillis"],
	}
	asserts.AssertTiming(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineOutputConfig = { ["Bucket"] = true, ["StorageClass"] = true, ["Permissions"] = true, nil }

function asserts.AssertPipelineOutputConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineOutputConfig to be of type 'table'")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["Permissions"] then asserts.AssertPermissions(struct["Permissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineOutputConfig[k], "PipelineOutputConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineOutputConfig
-- <p>The <code>PipelineOutputConfig</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p> The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files. Specify this value when all of the following are true:</p> <ul> <li> <p>You want to save transcoded files, thumbnails (if any), and playlists (if any) together in one bucket.</p> </li> <li> <p>You do not want to specify the users or groups who have access to the transcoded files, thumbnails, and playlists.</p> </li> <li> <p>You do not want to specify the permissions that Elastic Transcoder grants to the files.</p> </li> <li> <p>You want to associate the transcoded files and thumbnails with the Amazon S3 Standard storage class.</p> </li> </ul> <p>If you want to save transcoded files and playlists in one bucket and thumbnails in another bucket, specify which users can access the transcoded files or the permissions the users have, or change the Amazon S3 storage class, omit OutputBucket and specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code> instead. </p>
-- * StorageClass [StorageClass] <p> The Amazon S3 storage class, <code>Standard</code> or <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket. </p>
-- * Permissions [Permissions] <p>Optional. The <code>Permissions</code> object specifies which users and/or predefined Amazon S3 groups you want to have access to transcoded files and playlists, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.</p> <p>If you include <code>Permissions</code>, Elastic Transcoder grants only the permissions that you specify. It does not grant full permissions to the owner of the role specified by <code>Role</code>. If you want that user to have full control, you must explicitly grant full control to the user.</p> <p> If you omit <code>Permissions</code>, Elastic Transcoder grants full control over the transcoded files and playlists to the owner of the role specified by <code>Role</code>, and grants no other permissions to any other user or group.</p>
-- @return PipelineOutputConfig structure as a key-value pair table
function M.PipelineOutputConfig(args)
	assert(args, "You must provide an argument table when creating PipelineOutputConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["StorageClass"] = args["StorageClass"],
		["Permissions"] = args["Permissions"],
	}
	asserts.AssertPipelineOutputConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Permission = { ["Access"] = true, ["Grantee"] = true, ["GranteeType"] = true, nil }

function asserts.AssertPermission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Permission to be of type 'table'")
	if struct["Access"] then asserts.AssertAccessControls(struct["Access"]) end
	if struct["Grantee"] then asserts.AssertGrantee(struct["Grantee"]) end
	if struct["GranteeType"] then asserts.AssertGranteeType(struct["GranteeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Permission[k], "Permission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Permission
-- <p>The <code>Permission</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Access [AccessControls] <p> The permission that you want to give to the AWS user that is listed in Grantee. Valid values include: </p> <ul> <li> <p> <code>READ</code>: The grantee can read the thumbnails and metadata for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>FULL_CONTROL</code>: The grantee has READ, READ_ACP, and WRITE_ACP permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> </ul>
-- * Grantee [Grantee] <p>The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group.</p>
-- * GranteeType [GranteeType] <p>The type of value that appears in the Grantee object:</p> <ul> <li> <p> <code>Canonical</code>: Either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.</p> <important> <p>A canonical user ID is not the same as an AWS account number.</p> </important> </li> <li> <p> <code>Email</code>: The registered email address of an AWS account.</p> </li> <li> <p> <code>Group</code>: One of the following predefined Amazon S3 groups: <code>AllUsers</code>, <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p> </li> </ul>
-- @return Permission structure as a key-value pair table
function M.Permission(args)
	assert(args, "You must provide an argument table when creating Permission")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Access"] = args["Access"],
		["Grantee"] = args["Grantee"],
		["GranteeType"] = args["GranteeType"],
	}
	asserts.AssertPermission(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Warning = { ["Message"] = true, ["Code"] = true, nil }

function asserts.AssertWarning(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Warning to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Code"] then asserts.AssertString(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.Warning[k], "Warning contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Warning
-- <p>Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.</p> <p>Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The message explaining what resources are in a different region from the pipeline.</p> <note> <p>AWS KMS keys must be in the same region as the pipeline.</p> </note>
-- * Code [String] <p>The code of the cross-regional warning.</p>
-- @return Warning structure as a key-value pair table
function M.Warning(args)
	assert(args, "You must provide an argument table when creating Warning")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Code"] = args["Code"],
	}
	asserts.AssertWarning(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobAlbumArt = { ["MergePolicy"] = true, ["Artwork"] = true, nil }

function asserts.AssertJobAlbumArt(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobAlbumArt to be of type 'table'")
	if struct["MergePolicy"] then asserts.AssertMergePolicy(struct["MergePolicy"]) end
	if struct["Artwork"] then asserts.AssertArtworks(struct["Artwork"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobAlbumArt[k], "JobAlbumArt contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobAlbumArt
-- <p>The .jpg or .png file associated with an audio file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MergePolicy [MergePolicy] <p>A policy that determines how Elastic Transcoder handles the existence of multiple album artwork files.</p> <ul> <li> <p> <code>Replace:</code> The specified album art replaces any existing album art.</p> </li> <li> <p> <code>Prepend:</code> The specified album art is placed in front of any existing album art.</p> </li> <li> <p> <code>Append:</code> The specified album art is placed after any existing album art.</p> </li> <li> <p> <code>Fallback:</code> If the original input file contains artwork, Elastic Transcoder uses that artwork for the output. If the original input does not contain artwork, Elastic Transcoder uses the specified album art file.</p> </li> </ul>
-- * Artwork [Artworks] <p>The file to be used as album art. There can be multiple artworks associated with an audio file, to a maximum of 20. Valid formats are <code>.jpg</code> and <code>.png</code> </p>
-- @return JobAlbumArt structure as a key-value pair table
function M.JobAlbumArt(args)
	assert(args, "You must provide an argument table when creating JobAlbumArt")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MergePolicy"] = args["MergePolicy"],
		["Artwork"] = args["Artwork"],
	}
	asserts.AssertJobAlbumArt(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioCodecOptions = { ["Profile"] = true, ["BitDepth"] = true, ["Signed"] = true, ["BitOrder"] = true, nil }

function asserts.AssertAudioCodecOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioCodecOptions to be of type 'table'")
	if struct["Profile"] then asserts.AssertAudioCodecProfile(struct["Profile"]) end
	if struct["BitDepth"] then asserts.AssertAudioBitDepth(struct["BitDepth"]) end
	if struct["Signed"] then asserts.AssertAudioSigned(struct["Signed"]) end
	if struct["BitOrder"] then asserts.AssertAudioBitOrder(struct["BitOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioCodecOptions[k], "AudioCodecOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioCodecOptions
-- <p>Options associated with your audio codec.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Profile [AudioCodecProfile] <p>You can only choose an audio profile when you specify AAC for the value of Audio:Codec.</p> <p>Specify the AAC profile for the output file. Elastic Transcoder supports the following profiles:</p> <ul> <li> <p> <code>auto</code>: If you specify <code>auto</code>, Elastic Transcoder selects the profile based on the bit rate selected for the output file.</p> </li> <li> <p> <code>AAC-LC</code>: The most common AAC profile. Use for bit rates larger than 64 kbps.</p> </li> <li> <p> <code>HE-AAC</code>: Not supported on some older players and devices. Use for bit rates between 40 and 80 kbps.</p> </li> <li> <p> <code>HE-AACv2</code>: Not supported on some players and devices. Use for bit rates less than 48 kbps.</p> </li> </ul> <p>All outputs in a <code>Smooth</code> playlist must have the same value for <code>Profile</code>.</p> <note> <p>If you created any presets before AAC profiles were added, Elastic Transcoder automatically updated your presets to use AAC-LC. You can change the value as required.</p> </note>
-- * BitDepth [AudioBitDepth] <p>You can only choose an audio bit depth when you specify <code>flac</code> or <code>pcm</code> for the value of Audio:Codec.</p> <p>The bit depth of a sample is how many bits of information are included in the audio samples. The higher the bit depth, the better the audio, but the larger the file.</p> <p>Valid values are <code>16</code> and <code>24</code>.</p> <p>The most common bit depth is <code>24</code>.</p>
-- * Signed [AudioSigned] <p>You can only choose whether an audio sample is signed when you specify <code>pcm</code> for the value of Audio:Codec.</p> <p>Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned).</p> <p>The supported value is <code>Signed</code>.</p>
-- * BitOrder [AudioBitOrder] <p>You can only choose an audio bit order when you specify <code>pcm</code> for the value of Audio:Codec.</p> <p>The order the bits of a PCM sample are stored in.</p> <p>The supported value is <code>LittleEndian</code>.</p>
-- @return AudioCodecOptions structure as a key-value pair table
function M.AudioCodecOptions(args)
	assert(args, "You must provide an argument table when creating AudioCodecOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Profile"] = args["Profile"],
		["BitDepth"] = args["BitDepth"],
		["Signed"] = args["Signed"],
		["BitOrder"] = args["BitOrder"],
	}
	asserts.AssertAudioCodecOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePresetResponse = { nil }

function asserts.AssertDeletePresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePresetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePresetResponse[k], "DeletePresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePresetResponse
-- <p>The <code>DeletePresetResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePresetResponse structure as a key-value pair table
function M.DeletePresetResponse(args)
	assert(args, "You must provide an argument table when creating DeletePresetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePresetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Playlist = { ["Status"] = true, ["Name"] = true, ["HlsContentProtection"] = true, ["Format"] = true, ["StatusDetail"] = true, ["PlayReadyDrm"] = true, ["OutputKeys"] = true, nil }

function asserts.AssertPlaylist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Playlist to be of type 'table'")
	if struct["Status"] then asserts.AssertJobStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertFilename(struct["Name"]) end
	if struct["HlsContentProtection"] then asserts.AssertHlsContentProtection(struct["HlsContentProtection"]) end
	if struct["Format"] then asserts.AssertPlaylistFormat(struct["Format"]) end
	if struct["StatusDetail"] then asserts.AssertDescription(struct["StatusDetail"]) end
	if struct["PlayReadyDrm"] then asserts.AssertPlayReadyDrm(struct["PlayReadyDrm"]) end
	if struct["OutputKeys"] then asserts.AssertOutputKeys(struct["OutputKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.Playlist[k], "Playlist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Playlist
-- <p> Use Only for Fragmented MP4 or MPEG-TS Outputs. If you specify a preset for which the value of Container is <code>fmp4</code> (Fragmented MP4) or <code>ts</code> (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create. We recommend that you create only one master playlist per output format. The maximum number of master playlists in a job is 30. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [JobStatus] <p>The status of the job with which the playlist is associated.</p>
-- * Name [Filename] <p>The name that you want Elastic Transcoder to assign to the master playlist, for example, nyc-vacation.m3u8. If the name includes a <code>/</code> character, the section of the name before the last <code>/</code> must be identical for all <code>Name</code> objects. If you create more than one master playlist, the values of all <code>Name</code> objects must be unique.</p> <note> <p>Elastic Transcoder automatically appends the relevant file extension to the file name (<code>.m3u8</code> for <code>HLSv3</code> and <code>HLSv4</code> playlists, and <code>.ism</code> and <code>.ismc</code> for <code>Smooth</code> playlists). If you include a file extension in <code>Name</code>, the file name will have two extensions.</p> </note>
-- * HlsContentProtection [HlsContentProtection] <p>The HLS content protection settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.</p>
-- * Format [PlaylistFormat] <p>The format of the output playlist. Valid formats include <code>HLSv3</code>, <code>HLSv4</code>, and <code>Smooth</code>.</p>
-- * StatusDetail [Description] <p>Information that further explains the status.</p>
-- * PlayReadyDrm [PlayReadyDrm] <p>The DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.</p>
-- * OutputKeys [OutputKeys] <p>For each output in this job that you want to include in a master playlist, the value of the Outputs:Key object.</p> <ul> <li> <p>If your output is not <code>HLS</code> or does not have a segment duration set, the name of the output file is a concatenation of <code>OutputKeyPrefix</code> and <code>Outputs:Key</code>:</p> <p>OutputKeyPrefix<code>Outputs:Key</code> </p> </li> <li> <p>If your output is <code>HLSv3</code> and has a segment duration set, or is not included in a playlist, Elastic Transcoder creates an output playlist file with a file extension of <code>.m3u8</code>, and a series of <code>.ts</code> files that include a five-digit sequential counter beginning with 00000:</p> <p>OutputKeyPrefix<code>Outputs:Key</code>.m3u8</p> <p>OutputKeyPrefix<code>Outputs:Key</code>00000.ts</p> </li> <li> <p>If your output is <code>HLSv4</code>, has a segment duration set, and is included in an <code>HLSv4</code> playlist, Elastic Transcoder creates an output playlist file with a file extension of <code>_v4.m3u8</code>. If the output is video, Elastic Transcoder also creates an output file with an extension of <code>_iframe.m3u8</code>:</p> <p>OutputKeyPrefix<code>Outputs:Key</code>_v4.m3u8</p> <p>OutputKeyPrefix<code>Outputs:Key</code>_iframe.m3u8</p> <p>OutputKeyPrefix<code>Outputs:Key</code>.ts</p> </li> </ul> <p>Elastic Transcoder automatically appends the relevant file extension to the file name. If you include a file extension in Output Key, the file name will have two extensions.</p> <p>If you include more than one output in a playlist, any segment duration settings, clip settings, or caption settings must be the same for all outputs in the playlist. For <code>Smooth</code> playlists, the <code>Audio:Profile</code>, <code>Video:Profile</code>, and <code>Video:FrameRate</code> to <code>Video:KeyframesMaxDist</code> ratio must be the same for all outputs.</p>
-- @return Playlist structure as a key-value pair table
function M.Playlist(args)
	assert(args, "You must provide an argument table when creating Playlist")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["HlsContentProtection"] = args["HlsContentProtection"],
		["Format"] = args["Format"],
		["StatusDetail"] = args["StatusDetail"],
		["PlayReadyDrm"] = args["PlayReadyDrm"],
		["OutputKeys"] = args["OutputKeys"],
	}
	asserts.AssertPlaylist(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobResponse = { nil }

function asserts.AssertCancelJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelJobResponse[k], "CancelJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResponse
-- <p>The response body contains a JSON object. If the job is successfully canceled, the value of <code>Success</code> is <code>true</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelJobResponse structure as a key-value pair table
function M.CancelJobResponse(args)
	assert(args, "You must provide an argument table when creating CancelJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCancelJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Encryption = { ["InitializationVector"] = true, ["Mode"] = true, ["Key"] = true, ["KeyMd5"] = true, nil }

function asserts.AssertEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Encryption to be of type 'table'")
	if struct["InitializationVector"] then asserts.AssertZeroTo255String(struct["InitializationVector"]) end
	if struct["Mode"] then asserts.AssertEncryptionMode(struct["Mode"]) end
	if struct["Key"] then asserts.AssertBase64EncodedString(struct["Key"]) end
	if struct["KeyMd5"] then asserts.AssertBase64EncodedString(struct["KeyMd5"]) end
	for k,_ in pairs(struct) do
		assert(keys.Encryption[k], "Encryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Encryption
-- <p>The encryption settings, if any, that are used for decrypting your input files or encrypting your output files. If your input file is encrypted, you must specify the mode that Elastic Transcoder uses to decrypt your file, otherwise you must specify the mode you want Elastic Transcoder to use to encrypt your output files.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InitializationVector [ZeroTo255String] <p>The series of random bits created by a random bit generator, unique for every encryption operation, that you used to encrypt your input files or that you want Elastic Transcoder to use to encrypt your output files. The initialization vector must be base64-encoded, and it must be exactly 16 bytes long before being base64-encoded.</p>
-- * Mode [EncryptionMode] <p>The specific server-side encryption mode that you want Elastic Transcoder to use when decrypting your input files or encrypting your output files. Elastic Transcoder supports the following options:</p> <ul> <li> <p> <b>s3:</b> Amazon S3 creates and manages the keys used for encrypting your files.</p> </li> <li> <p> <b>s3-aws-kms:</b> Amazon S3 calls the Amazon Key Management Service, which creates and manages the keys that are used for encrypting your files. If you specify <code>s3-aws-kms</code> and you don't want to use the default key, you must add the AWS-KMS key that you want to use to your pipeline.</p> </li> <li> <p> <b>aes-cbc-pkcs7:</b> A padded cipher-block mode of operation originally used for HLS files.</p> </li> <li> <p> <b>aes-ctr:</b> AES Counter Mode.</p> </li> <li> <p> <b>aes-gcm:</b> AES Galois Counter Mode, a mode of operation that is an authenticated encryption format, meaning that a file, key, or initialization vector that has been tampered with fails the decryption process.</p> </li> </ul> <p>For all three AES options, you must provide the following settings, which must be base64-encoded:</p> <ul> <li> <p> <b>Key</b> </p> </li> <li> <p> <b>Key MD5</b> </p> </li> <li> <p> <b>Initialization Vector</b> </p> </li> </ul> <important> <p>For the AES modes, your private encryption keys and your unencrypted data are never stored by AWS; therefore, it is important that you safely manage your encryption keys. If you lose them, you won't be able to unencrypt your data.</p> </important>
-- * Key [Base64EncodedString] <p>The data encryption key that you want Elastic Transcoder to use to encrypt your output file, or that was used to encrypt your input file. The key must be base64-encoded and it must be one of the following bit lengths before being base64-encoded:</p> <p> <code>128</code>, <code>192</code>, or <code>256</code>. </p> <p>The key must also be encrypted by using the Amazon Key Management Service.</p>
-- * KeyMd5 [Base64EncodedString] <p>The MD5 digest of the key that you used to encrypt your input file, or that you want Elastic Transcoder to use to encrypt your output file. Elastic Transcoder uses the key digest as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes long before being base64-encoded.</p>
-- @return Encryption structure as a key-value pair table
function M.Encryption(args)
	assert(args, "You must provide an argument table when creating Encryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InitializationVector"] = args["InitializationVector"],
		["Mode"] = args["Mode"],
		["Key"] = args["Key"],
		["KeyMd5"] = args["KeyMd5"],
	}
	asserts.AssertEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPresetsResponse = { ["NextPageToken"] = true, ["Presets"] = true, nil }

function asserts.AssertListPresetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPresetsResponse to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertId(struct["NextPageToken"]) end
	if struct["Presets"] then asserts.AssertPresets(struct["Presets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPresetsResponse[k], "ListPresetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPresetsResponse
-- <p>The <code>ListPresetsResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [Id] <p>A value that you use to access the second and subsequent pages of results, if any. When the presets fit on one page or when you've reached the last page of results, the value of <code>NextPageToken</code> is <code>null</code>.</p>
-- * Presets [Presets] <p>An array of <code>Preset</code> objects.</p>
-- @return ListPresetsResponse structure as a key-value pair table
function M.ListPresetsResponse(args)
	assert(args, "You must provide an argument table when creating ListPresetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Presets"] = args["Presets"],
	}
	asserts.AssertListPresetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsByPipelineResponse = { ["NextPageToken"] = true, ["Jobs"] = true, nil }

function asserts.AssertListJobsByPipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByPipelineResponse to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertId(struct["NextPageToken"]) end
	if struct["Jobs"] then asserts.AssertJobs(struct["Jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsByPipelineResponse[k], "ListJobsByPipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByPipelineResponse
-- <p>The <code>ListJobsByPipelineResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [Id] <p> A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of <code>NextPageToken</code> is <code>null</code>. </p>
-- * Jobs [Jobs] <p>An array of <code>Job</code> objects that are in the specified pipeline.</p>
-- @return ListJobsByPipelineResponse structure as a key-value pair table
function M.ListJobsByPipelineResponse(args)
	assert(args, "You must provide an argument table when creating ListJobsByPipelineResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Jobs"] = args["Jobs"],
	}
	asserts.AssertListJobsByPipelineResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobResponse = { ["Job"] = true, nil }

function asserts.AssertCreateJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobResponse to be of type 'table'")
	if struct["Job"] then asserts.AssertJob(struct["Job"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobResponse[k], "CreateJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobResponse
-- <p>The CreateJobResponse structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Job [Job] <p>A section of the response body that provides information about the job that is created.</p>
-- @return CreateJobResponse structure as a key-value pair table
function M.CreateJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Job"] = args["Job"],
	}
	asserts.AssertCreateJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePipelineRequest = { ["Id"] = true, nil }

function asserts.AssertDeletePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePipelineRequest[k], "DeletePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineRequest
-- <p>The <code>DeletePipelineRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [Id] <p>The identifier of the pipeline that you want to delete.</p>
-- Required key: Id
-- @return DeletePipelineRequest structure as a key-value pair table
function M.DeletePipelineRequest(args)
	assert(args, "You must provide an argument table when creating DeletePipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeletePipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Thumbnails = { ["SizingPolicy"] = true, ["MaxWidth"] = true, ["Format"] = true, ["PaddingPolicy"] = true, ["Interval"] = true, ["MaxHeight"] = true, ["AspectRatio"] = true, ["Resolution"] = true, nil }

function asserts.AssertThumbnails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Thumbnails to be of type 'table'")
	if struct["SizingPolicy"] then asserts.AssertSizingPolicy(struct["SizingPolicy"]) end
	if struct["MaxWidth"] then asserts.AssertDigitsOrAuto(struct["MaxWidth"]) end
	if struct["Format"] then asserts.AssertJpgOrPng(struct["Format"]) end
	if struct["PaddingPolicy"] then asserts.AssertPaddingPolicy(struct["PaddingPolicy"]) end
	if struct["Interval"] then asserts.AssertDigits(struct["Interval"]) end
	if struct["MaxHeight"] then asserts.AssertDigitsOrAuto(struct["MaxHeight"]) end
	if struct["AspectRatio"] then asserts.AssertAspectRatio(struct["AspectRatio"]) end
	if struct["Resolution"] then asserts.AssertThumbnailResolution(struct["Resolution"]) end
	for k,_ in pairs(struct) do
		assert(keys.Thumbnails[k], "Thumbnails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Thumbnails
-- <p>Thumbnails for videos.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizingPolicy [SizingPolicy] <p>Specify one of the following values to control scaling of thumbnails:</p> <ul> <li> <p> <code>Fit</code>: Elastic Transcoder scales thumbnails so they match the value that you specified in thumbnail MaxWidth or MaxHeight settings without exceeding the other value. </p> </li> <li> <p> <code>Fill</code>: Elastic Transcoder scales thumbnails so they match the value that you specified in thumbnail <code>MaxWidth</code> or <code>MaxHeight</code> settings and matches or exceeds the other value. Elastic Transcoder centers the image in thumbnails and then crops in the dimension (if any) that exceeds the maximum value.</p> </li> <li> <p> <code>Stretch</code>: Elastic Transcoder stretches thumbnails to match the values that you specified for thumbnail <code>MaxWidth</code> and <code>MaxHeight</code> settings. If the relative proportions of the input video and thumbnails are different, the thumbnails will be distorted.</p> </li> <li> <p> <code>Keep</code>: Elastic Transcoder does not scale thumbnails. If either dimension of the input video exceeds the values that you specified for thumbnail <code>MaxWidth</code> and <code>MaxHeight</code> settings, Elastic Transcoder crops the thumbnails.</p> </li> <li> <p> <code>ShrinkToFit</code>: Elastic Transcoder scales thumbnails down so that their dimensions match the values that you specified for at least one of thumbnail <code>MaxWidth</code> and <code>MaxHeight</code> without exceeding either value. If you specify this option, Elastic Transcoder does not scale thumbnails up.</p> </li> <li> <p> <code>ShrinkToFill</code>: Elastic Transcoder scales thumbnails down so that their dimensions match the values that you specified for at least one of <code>MaxWidth</code> and <code>MaxHeight</code> without dropping below either value. If you specify this option, Elastic Transcoder does not scale thumbnails up.</p> </li> </ul>
-- * MaxWidth [DigitsOrAuto] <p>The maximum width of thumbnails in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 4096.</p>
-- * Format [JpgOrPng] <p>The format of thumbnails, if any. Valid values are <code>jpg</code> and <code>png</code>. </p> <p>You specify whether you want Elastic Transcoder to create thumbnails when you create a job.</p>
-- * PaddingPolicy [PaddingPolicy] <p>When you set <code>PaddingPolicy</code> to <code>Pad</code>, Elastic Transcoder may add black bars to the top and bottom and/or left and right sides of thumbnails to make the total size of the thumbnails match the values that you specified for thumbnail <code>MaxWidth</code> and <code>MaxHeight</code> settings.</p>
-- * Interval [Digits] <p>The approximate number of seconds between thumbnails. Specify an integer value.</p>
-- * MaxHeight [DigitsOrAuto] <p>The maximum height of thumbnails in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 3072.</p>
-- * AspectRatio [AspectRatio] <important> <p>To better control resolution and aspect ratio of thumbnails, we recommend that you use the values <code>MaxWidth</code>, <code>MaxHeight</code>, <code>SizingPolicy</code>, and <code>PaddingPolicy</code> instead of <code>Resolution</code> and <code>AspectRatio</code>. The two groups of settings are mutually exclusive. Do not use them together.</p> </important> <p>The aspect ratio of thumbnails. Valid values include:</p> <p> <code>auto</code>, <code>1:1</code>, <code>4:3</code>, <code>3:2</code>, <code>16:9</code> </p> <p>If you specify <code>auto</code>, Elastic Transcoder tries to preserve the aspect ratio of the video in the output file.</p>
-- * Resolution [ThumbnailResolution] <important> <p>To better control resolution and aspect ratio of thumbnails, we recommend that you use the values <code>MaxWidth</code>, <code>MaxHeight</code>, <code>SizingPolicy</code>, and <code>PaddingPolicy</code> instead of <code>Resolution</code> and <code>AspectRatio</code>. The two groups of settings are mutually exclusive. Do not use them together.</p> </important> <p>The width and height of thumbnail files in pixels. Specify a value in the format <code> <i>width</i> </code> x <code> <i>height</i> </code> where both values are even integers. The values cannot exceed the width and height that you specified in the <code>Video:Resolution</code> object.</p>
-- @return Thumbnails structure as a key-value pair table
function M.Thumbnails(args)
	assert(args, "You must provide an argument table when creating Thumbnails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizingPolicy"] = args["SizingPolicy"],
		["MaxWidth"] = args["MaxWidth"],
		["Format"] = args["Format"],
		["PaddingPolicy"] = args["PaddingPolicy"],
		["Interval"] = args["Interval"],
		["MaxHeight"] = args["MaxHeight"],
		["AspectRatio"] = args["AspectRatio"],
		["Resolution"] = args["Resolution"],
	}
	asserts.AssertThumbnails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsByStatusRequest = { ["Status"] = true, ["PageToken"] = true, ["Ascending"] = true, nil }

function asserts.AssertListJobsByStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByStatusRequest to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertJobStatus(struct["Status"]) end
	if struct["PageToken"] then asserts.AssertId(struct["PageToken"]) end
	if struct["Ascending"] then asserts.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsByStatusRequest[k], "ListJobsByStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByStatusRequest
-- <p>The <code>ListJobsByStatusRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [JobStatus] <p>To get information about all of the jobs associated with the current AWS account that have a given status, specify the following status: <code>Submitted</code>, <code>Progressing</code>, <code>Complete</code>, <code>Canceled</code>, or <code>Error</code>.</p>
-- * PageToken [Id] <p> When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in subsequent <code>GET</code> requests to get each successive page of results. </p>
-- * Ascending [Ascending] <p> To list jobs in chronological order by the date and time that they were submitted, enter <code>true</code>. To list jobs in reverse chronological order, enter <code>false</code>. </p>
-- Required key: Status
-- @return ListJobsByStatusRequest structure as a key-value pair table
function M.ListJobsByStatusRequest(args)
	assert(args, "You must provide an argument table when creating ListJobsByStatusRequest")
    local query_args = { 
        ["PageToken"] = args["PageToken"],
        ["Ascending"] = args["Ascending"],
    }
    local uri_args = { 
        ["{Status}"] = args["Status"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["PageToken"] = args["PageToken"],
		["Ascending"] = args["Ascending"],
	}
	asserts.AssertListJobsByStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePresetRequest = { ["Container"] = true, ["Thumbnails"] = true, ["Video"] = true, ["Description"] = true, ["Audio"] = true, ["Name"] = true, nil }

function asserts.AssertCreatePresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Container"], "Expected key Container to exist in table")
	if struct["Container"] then asserts.AssertPresetContainer(struct["Container"]) end
	if struct["Thumbnails"] then asserts.AssertThumbnails(struct["Thumbnails"]) end
	if struct["Video"] then asserts.AssertVideoParameters(struct["Video"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Audio"] then asserts.AssertAudioParameters(struct["Audio"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePresetRequest[k], "CreatePresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresetRequest
-- <p>The <code>CreatePresetRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Container [PresetContainer] <p>The container type for the output file. Valid values include <code>flac</code>, <code>flv</code>, <code>fmp4</code>, <code>gif</code>, <code>mp3</code>, <code>mp4</code>, <code>mpg</code>, <code>mxf</code>, <code>oga</code>, <code>ogg</code>, <code>ts</code>, and <code>webm</code>.</p>
-- * Thumbnails [Thumbnails] <p>A section of the request body that specifies the thumbnail parameters, if any.</p>
-- * Video [VideoParameters] <p>A section of the request body that specifies the video parameters.</p>
-- * Description [Description] <p>A description of the preset.</p>
-- * Audio [AudioParameters] <p>A section of the request body that specifies the audio parameters.</p>
-- * Name [Name] <p>The name of the preset. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.</p>
-- Required key: Name
-- Required key: Container
-- @return CreatePresetRequest structure as a key-value pair table
function M.CreatePresetRequest(args)
	assert(args, "You must provide an argument table when creating CreatePresetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Container"] = args["Container"],
		["Thumbnails"] = args["Thumbnails"],
		["Video"] = args["Video"],
		["Description"] = args["Description"],
		["Audio"] = args["Audio"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreatePresetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Job = { ["Status"] = true, ["Inputs"] = true, ["Playlists"] = true, ["Outputs"] = true, ["PipelineId"] = true, ["OutputKeyPrefix"] = true, ["UserMetadata"] = true, ["Output"] = true, ["Timing"] = true, ["Input"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["Status"] then asserts.AssertJobStatus(struct["Status"]) end
	if struct["Inputs"] then asserts.AssertJobInputs(struct["Inputs"]) end
	if struct["Playlists"] then asserts.AssertPlaylists(struct["Playlists"]) end
	if struct["Outputs"] then asserts.AssertJobOutputs(struct["Outputs"]) end
	if struct["PipelineId"] then asserts.AssertId(struct["PipelineId"]) end
	if struct["OutputKeyPrefix"] then asserts.AssertKey(struct["OutputKeyPrefix"]) end
	if struct["UserMetadata"] then asserts.AssertUserMetadata(struct["UserMetadata"]) end
	if struct["Output"] then asserts.AssertJobOutput(struct["Output"]) end
	if struct["Timing"] then asserts.AssertTiming(struct["Timing"]) end
	if struct["Input"] then asserts.AssertJobInput(struct["Input"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Job[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- <p>A section of the response body that provides information about the job that is created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [JobStatus] <p> The status of the job: <code>Submitted</code>, <code>Progressing</code>, <code>Complete</code>, <code>Canceled</code>, or <code>Error</code>. </p>
-- * Inputs [JobInputs] <p>Information about the files that you're transcoding. If you specified multiple files for this job, Elastic Transcoder stitches the files together to make one output.</p>
-- * Playlists [Playlists] <important> <p>Outputs in Fragmented MP4 or MPEG-TS format only.</p> </important> <p>If you specify a preset in <code>PresetId</code> for which the value of <code>Container</code> is fmp4 (Fragmented MP4) or ts (MPEG-TS), <code>Playlists</code> contains information about the master playlists that you want Elastic Transcoder to create.</p> <p>The maximum number of master playlists in a job is 30.</p>
-- * Outputs [JobOutputs] <p>Information about the output files. We recommend that you use the <code>Outputs</code> syntax for all jobs, even when you want Elastic Transcoder to transcode a file into only one format. Do not use both the <code>Outputs</code> and <code>Output</code> syntaxes in the same request. You can create a maximum of 30 outputs per job. </p> <p>If you specify more than one output for a job, Elastic Transcoder creates the files for each output in the order in which you specify them in the job.</p>
-- * PipelineId [Id] <p> The <code>Id</code> of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files. </p>
-- * OutputKeyPrefix [Key] <p>The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists. We recommend that you add a / or some other delimiter to the end of the <code>OutputKeyPrefix</code>.</p>
-- * UserMetadata [UserMetadata] <p>User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in <code>key/value</code> pairs, and you can add up to 10 <code>key/value</code> pairs per job. Elastic Transcoder does not guarantee that <code>key/value</code> pairs are returned in the same order in which you specify them.</p> <p>Metadata <code>keys</code> and <code>values</code> must use characters from the following list:</p> <ul> <li> <p> <code>0-9</code> </p> </li> <li> <p> <code>A-Z</code> and <code>a-z</code> </p> </li> <li> <p> <code>Space</code> </p> </li> <li> <p>The following symbols: <code>_.:/=+-%@</code> </p> </li> </ul>
-- * Output [JobOutput] <p>If you specified one output for a job, information about that output. If you specified multiple outputs for a job, the Output object lists information about the first output. This duplicates the information that is listed for the first output in the Outputs object.</p> <important> <p>Outputs recommended instead.</p> </important> <p>A section of the request or response body that provides information about the transcoded (target) file. </p>
-- * Timing [Timing] <p>Details about the timing of a job.</p>
-- * Input [JobInput] <p>A section of the request or response body that provides information about the file that is being transcoded.</p>
-- * Id [Id] <p>The identifier that Elastic Transcoder assigned to the job. You use this value to get settings for the job or to delete the job.</p>
-- * Arn [String] <p>The Amazon Resource Name (ARN) for the job.</p>
-- @return Job structure as a key-value pair table
function M.Job(args)
	assert(args, "You must provide an argument table when creating Job")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Inputs"] = args["Inputs"],
		["Playlists"] = args["Playlists"],
		["Outputs"] = args["Outputs"],
		["PipelineId"] = args["PipelineId"],
		["OutputKeyPrefix"] = args["OutputKeyPrefix"],
		["UserMetadata"] = args["UserMetadata"],
		["Output"] = args["Output"],
		["Timing"] = args["Timing"],
		["Input"] = args["Input"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReadPipelineResponse = { ["Pipeline"] = true, ["Warnings"] = true, nil }

function asserts.AssertReadPipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPipelineResponse to be of type 'table'")
	if struct["Pipeline"] then asserts.AssertPipeline(struct["Pipeline"]) end
	if struct["Warnings"] then asserts.AssertWarnings(struct["Warnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReadPipelineResponse[k], "ReadPipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPipelineResponse
-- <p>The <code>ReadPipelineResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pipeline [Pipeline] <p>A section of the response body that provides information about the pipeline.</p>
-- * Warnings [Warnings] <p>Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.</p> <p>Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.</p>
-- @return ReadPipelineResponse structure as a key-value pair table
function M.ReadPipelineResponse(args)
	assert(args, "You must provide an argument table when creating ReadPipelineResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pipeline"] = args["Pipeline"],
		["Warnings"] = args["Warnings"],
	}
	asserts.AssertReadPipelineResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelinesRequest = { ["PageToken"] = true, ["Ascending"] = true, nil }

function asserts.AssertListPipelinesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesRequest to be of type 'table'")
	if struct["PageToken"] then asserts.AssertId(struct["PageToken"]) end
	if struct["Ascending"] then asserts.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesRequest[k], "ListPipelinesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesRequest
-- <p>The <code>ListPipelineRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageToken [Id] <p>When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in subsequent <code>GET</code> requests to get each successive page of results. </p>
-- * Ascending [Ascending] <p>To list pipelines in chronological order by the date and time that they were created, enter <code>true</code>. To list pipelines in reverse chronological order, enter <code>false</code>.</p>
-- @return ListPipelinesRequest structure as a key-value pair table
function M.ListPipelinesRequest(args)
	assert(args, "You must provide an argument table when creating ListPipelinesRequest")
    local query_args = { 
        ["PageToken"] = args["PageToken"],
        ["Ascending"] = args["Ascending"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageToken"] = args["PageToken"],
		["Ascending"] = args["Ascending"],
	}
	asserts.AssertListPipelinesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPresetsRequest = { ["PageToken"] = true, ["Ascending"] = true, nil }

function asserts.AssertListPresetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPresetsRequest to be of type 'table'")
	if struct["PageToken"] then asserts.AssertId(struct["PageToken"]) end
	if struct["Ascending"] then asserts.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPresetsRequest[k], "ListPresetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPresetsRequest
-- <p>The <code>ListPresetsRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageToken [Id] <p>When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in subsequent <code>GET</code> requests to get each successive page of results. </p>
-- * Ascending [Ascending] <p>To list presets in chronological order by the date and time that they were created, enter <code>true</code>. To list presets in reverse chronological order, enter <code>false</code>.</p>
-- @return ListPresetsRequest structure as a key-value pair table
function M.ListPresetsRequest(args)
	assert(args, "You must provide an argument table when creating ListPresetsRequest")
    local query_args = { 
        ["PageToken"] = args["PageToken"],
        ["Ascending"] = args["Ascending"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageToken"] = args["PageToken"],
		["Ascending"] = args["Ascending"],
	}
	asserts.AssertListPresetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineResponse = { ["Pipeline"] = true, ["Warnings"] = true, nil }

function asserts.AssertUpdatePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineResponse to be of type 'table'")
	if struct["Pipeline"] then asserts.AssertPipeline(struct["Pipeline"]) end
	if struct["Warnings"] then asserts.AssertWarnings(struct["Warnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineResponse[k], "UpdatePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineResponse
-- <p>When you update a pipeline, Elastic Transcoder returns the values that you specified in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pipeline [Pipeline] <p>The pipeline updated by this <code>UpdatePipelineResponse</code> call.</p>
-- * Warnings [Warnings] <p>Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.</p> <p>Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.</p>
-- @return UpdatePipelineResponse structure as a key-value pair table
function M.UpdatePipelineResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pipeline"] = args["Pipeline"],
		["Warnings"] = args["Warnings"],
	}
	asserts.AssertUpdatePipelineResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineNotificationsRequest = { ["Notifications"] = true, ["Id"] = true, nil }

function asserts.AssertUpdatePipelineNotificationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineNotificationsRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Notifications"], "Expected key Notifications to exist in table")
	if struct["Notifications"] then asserts.AssertNotifications(struct["Notifications"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineNotificationsRequest[k], "UpdatePipelineNotificationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineNotificationsRequest
-- <p>The <code>UpdatePipelineNotificationsRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notifications [Notifications] <p>The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p> <important> <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p> </important> <ul> <li> <p> <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> </ul>
-- * Id [Id] <p>The identifier of the pipeline for which you want to change notification settings.</p>
-- Required key: Id
-- Required key: Notifications
-- @return UpdatePipelineNotificationsRequest structure as a key-value pair table
function M.UpdatePipelineNotificationsRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineNotificationsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Notifications"] = args["Notifications"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdatePipelineNotificationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PresetWatermark = { ["SizingPolicy"] = true, ["VerticalOffset"] = true, ["VerticalAlign"] = true, ["Target"] = true, ["MaxWidth"] = true, ["MaxHeight"] = true, ["HorizontalAlign"] = true, ["HorizontalOffset"] = true, ["Opacity"] = true, ["Id"] = true, nil }

function asserts.AssertPresetWatermark(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PresetWatermark to be of type 'table'")
	if struct["SizingPolicy"] then asserts.AssertWatermarkSizingPolicy(struct["SizingPolicy"]) end
	if struct["VerticalOffset"] then asserts.AssertPixelsOrPercent(struct["VerticalOffset"]) end
	if struct["VerticalAlign"] then asserts.AssertVerticalAlign(struct["VerticalAlign"]) end
	if struct["Target"] then asserts.AssertTarget(struct["Target"]) end
	if struct["MaxWidth"] then asserts.AssertPixelsOrPercent(struct["MaxWidth"]) end
	if struct["MaxHeight"] then asserts.AssertPixelsOrPercent(struct["MaxHeight"]) end
	if struct["HorizontalAlign"] then asserts.AssertHorizontalAlign(struct["HorizontalAlign"]) end
	if struct["HorizontalOffset"] then asserts.AssertPixelsOrPercent(struct["HorizontalOffset"]) end
	if struct["Opacity"] then asserts.AssertOpacity(struct["Opacity"]) end
	if struct["Id"] then asserts.AssertPresetWatermarkId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.PresetWatermark[k], "PresetWatermark contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PresetWatermark
-- <p>Settings for the size, location, and opacity of graphics that you want Elastic Transcoder to overlay over videos that are transcoded using this preset. You can specify settings for up to four watermarks. Watermarks appear in the specified size and location, and with the specified opacity for the duration of the transcoded video.</p> <p>Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.</p> <p>When you create a job that uses this preset, you specify the .png or .jpg graphics that you want Elastic Transcoder to include in the transcoded videos. You can specify fewer graphics in the job than you specify watermark settings in the preset, which allows you to use the same preset for up to four watermarks that have different dimensions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizingPolicy [WatermarkSizingPolicy] <p>A value that controls scaling of the watermark: </p> <ul> <li> <p> <b>Fit</b>: Elastic Transcoder scales the watermark so it matches the value that you specified in either <code>MaxWidth</code> or <code>MaxHeight</code> without exceeding the other value.</p> </li> <li> <p> <b>Stretch</b>: Elastic Transcoder stretches the watermark to match the values that you specified for <code>MaxWidth</code> and <code>MaxHeight</code>. If the relative proportions of the watermark and the values of <code>MaxWidth</code> and <code>MaxHeight</code> are different, the watermark will be distorted.</p> </li> <li> <p> <b>ShrinkToFit</b>: Elastic Transcoder scales the watermark down so that its dimensions match the values that you specified for at least one of <code>MaxWidth</code> and <code>MaxHeight</code> without exceeding either value. If you specify this option, Elastic Transcoder does not scale the watermark up.</p> </li> </ul>
-- * VerticalOffset [PixelsOrPercent] <p> <code>VerticalOffset</code> </p> <p>The amount by which you want the vertical position of the watermark to be offset from the position specified by VerticalAlign:</p> <ul> <li> <p>number of pixels (px): The minimum value is 0 pixels, and the maximum value is the value of <code>MaxHeight</code>.</p> </li> <li> <p>integer percentage (%): The range of valid values is 0 to 100.</p> </li> </ul> <p>For example, if you specify <code>Top</code> for <code>VerticalAlign</code> and <code>5px</code> for <code>VerticalOffset</code>, the top of the watermark appears 5 pixels from the top border of the output video.</p> <p> <code>VerticalOffset</code> is only valid when the value of VerticalAlign is Top or Bottom.</p> <p>If you specify an offset that causes the watermark to extend beyond the top or bottom border and Elastic Transcoder has not added black bars, the watermark is cropped. If Elastic Transcoder has added black bars, the watermark extends into the black bars. If the watermark extends beyond the black bars, it is cropped.</p> <p>Use the value of <code>Target</code> to specify whether you want Elastic Transcoder to include the black bars that are added by Elastic Transcoder, if any, in the offset calculation.</p>
-- * VerticalAlign [VerticalAlign] <p>The vertical position of the watermark unless you specify a non-zero value for <code>VerticalOffset</code>: </p> <ul> <li> <p> <b>Top</b>: The top edge of the watermark is aligned with the top border of the video.</p> </li> <li> <p> <b>Bottom</b>: The bottom edge of the watermark is aligned with the bottom border of the video.</p> </li> <li> <p> <b>Center</b>: The watermark is centered between the top and bottom borders.</p> </li> </ul>
-- * Target [Target] <p>A value that determines how Elastic Transcoder interprets values that you specified for <code>HorizontalOffset</code>, <code>VerticalOffset</code>, <code>MaxWidth</code>, and <code>MaxHeight</code>:</p> <ul> <li> <p> <b>Content</b>: <code>HorizontalOffset</code> and <code>VerticalOffset</code> values are calculated based on the borders of the video excluding black bars added by Elastic Transcoder, if any. In addition, <code>MaxWidth</code> and <code>MaxHeight</code>, if specified as a percentage, are calculated based on the borders of the video excluding black bars added by Elastic Transcoder, if any.</p> </li> <li> <p> <b>Frame</b>: <code>HorizontalOffset</code> and <code>VerticalOffset</code> values are calculated based on the borders of the video including black bars added by Elastic Transcoder, if any. In addition, <code>MaxWidth</code> and <code>MaxHeight</code>, if specified as a percentage, are calculated based on the borders of the video including black bars added by Elastic Transcoder, if any.</p> </li> </ul>
-- * MaxWidth [PixelsOrPercent] <p>The maximum width of the watermark in one of the following formats: </p> <ul> <li> <p>number of pixels (px): The minimum value is 16 pixels, and the maximum value is the value of <code>MaxWidth</code>.</p> </li> <li> <p>integer percentage (%): The range of valid values is 0 to 100. Use the value of <code>Target</code> to specify whether you want Elastic Transcoder to include the black bars that are added by Elastic Transcoder, if any, in the calculation.</p> <p>If you specify the value in pixels, it must be less than or equal to the value of <code>MaxWidth</code>.</p> </li> </ul>
-- * MaxHeight [PixelsOrPercent] <p>The maximum height of the watermark in one of the following formats: </p> <ul> <li> <p>number of pixels (px): The minimum value is 16 pixels, and the maximum value is the value of <code>MaxHeight</code>.</p> </li> <li> <p>integer percentage (%): The range of valid values is 0 to 100. Use the value of <code>Target</code> to specify whether you want Elastic Transcoder to include the black bars that are added by Elastic Transcoder, if any, in the calculation.</p> </li> </ul> <p>If you specify the value in pixels, it must be less than or equal to the value of <code>MaxHeight</code>.</p>
-- * HorizontalAlign [HorizontalAlign] <p>The horizontal position of the watermark unless you specify a non-zero value for <code>HorizontalOffset</code>: </p> <ul> <li> <p> <b>Left</b>: The left edge of the watermark is aligned with the left border of the video.</p> </li> <li> <p> <b>Right</b>: The right edge of the watermark is aligned with the right border of the video.</p> </li> <li> <p> <b>Center</b>: The watermark is centered between the left and right borders.</p> </li> </ul>
-- * HorizontalOffset [PixelsOrPercent] <p>The amount by which you want the horizontal position of the watermark to be offset from the position specified by HorizontalAlign: </p> <ul> <li> <p>number of pixels (px): The minimum value is 0 pixels, and the maximum value is the value of MaxWidth.</p> </li> <li> <p>integer percentage (%): The range of valid values is 0 to 100.</p> </li> </ul> <p>For example, if you specify Left for <code>HorizontalAlign</code> and 5px for <code>HorizontalOffset</code>, the left side of the watermark appears 5 pixels from the left border of the output video.</p> <p> <code>HorizontalOffset</code> is only valid when the value of <code>HorizontalAlign</code> is <code>Left</code> or <code>Right</code>. If you specify an offset that causes the watermark to extend beyond the left or right border and Elastic Transcoder has not added black bars, the watermark is cropped. If Elastic Transcoder has added black bars, the watermark extends into the black bars. If the watermark extends beyond the black bars, it is cropped.</p> <p>Use the value of <code>Target</code> to specify whether you want to include the black bars that are added by Elastic Transcoder, if any, in the offset calculation.</p>
-- * Opacity [Opacity] <p>A percentage that indicates how much you want a watermark to obscure the video in the location where it appears. Valid values are 0 (the watermark is invisible) to 100 (the watermark completely obscures the video in the specified location). The datatype of <code>Opacity</code> is float.</p> <p>Elastic Transcoder supports transparent .png graphics. If you use a transparent .png, the transparent portion of the video appears as if you had specified a value of 0 for <code>Opacity</code>. The .jpg file format doesn't support transparency.</p>
-- * Id [PresetWatermarkId] <p> A unique identifier for the settings for one watermark. The value of <code>Id</code> can be up to 40 characters long. </p>
-- @return PresetWatermark structure as a key-value pair table
function M.PresetWatermark(args)
	assert(args, "You must provide an argument table when creating PresetWatermark")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizingPolicy"] = args["SizingPolicy"],
		["VerticalOffset"] = args["VerticalOffset"],
		["VerticalAlign"] = args["VerticalAlign"],
		["Target"] = args["Target"],
		["MaxWidth"] = args["MaxWidth"],
		["MaxHeight"] = args["MaxHeight"],
		["HorizontalAlign"] = args["HorizontalAlign"],
		["HorizontalOffset"] = args["HorizontalOffset"],
		["Opacity"] = args["Opacity"],
		["Id"] = args["Id"],
	}
	asserts.AssertPresetWatermark(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectedProperties = { ["Width"] = true, ["DurationMillis"] = true, ["FrameRate"] = true, ["FileSize"] = true, ["Height"] = true, nil }

function asserts.AssertDetectedProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectedProperties to be of type 'table'")
	if struct["Width"] then asserts.AssertNullableInteger(struct["Width"]) end
	if struct["DurationMillis"] then asserts.AssertNullableLong(struct["DurationMillis"]) end
	if struct["FrameRate"] then asserts.AssertFloatString(struct["FrameRate"]) end
	if struct["FileSize"] then asserts.AssertNullableLong(struct["FileSize"]) end
	if struct["Height"] then asserts.AssertNullableInteger(struct["Height"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectedProperties[k], "DetectedProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectedProperties
-- <p>The detected properties of the input file. Elastic Transcoder identifies these values from the input file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Width [NullableInteger] <p>The detected width of the input file, in pixels.</p>
-- * DurationMillis [NullableLong] <p>The detected duration of the input file, in milliseconds.</p>
-- * FrameRate [FloatString] <p>The detected frame rate of the input file, in frames per second.</p>
-- * FileSize [NullableLong] <p>The detected file size of the input file, in bytes.</p>
-- * Height [NullableInteger] <p>The detected height of the input file, in pixels.</p>
-- @return DetectedProperties structure as a key-value pair table
function M.DetectedProperties(args)
	assert(args, "You must provide an argument table when creating DetectedProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Width"] = args["Width"],
		["DurationMillis"] = args["DurationMillis"],
		["FrameRate"] = args["FrameRate"],
		["FileSize"] = args["FileSize"],
		["Height"] = args["Height"],
	}
	asserts.AssertDetectedProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Clip = { ["TimeSpan"] = true, nil }

function asserts.AssertClip(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Clip to be of type 'table'")
	if struct["TimeSpan"] then asserts.AssertTimeSpan(struct["TimeSpan"]) end
	for k,_ in pairs(struct) do
		assert(keys.Clip[k], "Clip contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Clip
-- <p>Settings for one clip in a composition. All jobs in a playlist must have the same clip settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeSpan [TimeSpan] <p>Settings that determine when a clip begins and how long it lasts.</p>
-- @return Clip structure as a key-value pair table
function M.Clip(args)
	assert(args, "You must provide an argument table when creating Clip")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeSpan"] = args["TimeSpan"],
	}
	asserts.AssertClip(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePipelineResponse = { nil }

function asserts.AssertDeletePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePipelineResponse[k], "DeletePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineResponse
-- <p>The <code>DeletePipelineResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePipelineResponse structure as a key-value pair table
function M.DeletePipelineResponse(args)
	assert(args, "You must provide an argument table when creating DeletePipelineResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePipelineResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoParameters = { ["SizingPolicy"] = true, ["MaxWidth"] = true, ["PaddingPolicy"] = true, ["Resolution"] = true, ["MaxFrameRate"] = true, ["FrameRate"] = true, ["MaxHeight"] = true, ["KeyframesMaxDist"] = true, ["FixedGOP"] = true, ["Codec"] = true, ["Watermarks"] = true, ["CodecOptions"] = true, ["AspectRatio"] = true, ["BitRate"] = true, ["DisplayAspectRatio"] = true, nil }

function asserts.AssertVideoParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoParameters to be of type 'table'")
	if struct["SizingPolicy"] then asserts.AssertSizingPolicy(struct["SizingPolicy"]) end
	if struct["MaxWidth"] then asserts.AssertDigitsOrAuto(struct["MaxWidth"]) end
	if struct["PaddingPolicy"] then asserts.AssertPaddingPolicy(struct["PaddingPolicy"]) end
	if struct["Resolution"] then asserts.AssertResolution(struct["Resolution"]) end
	if struct["MaxFrameRate"] then asserts.AssertMaxFrameRate(struct["MaxFrameRate"]) end
	if struct["FrameRate"] then asserts.AssertFrameRate(struct["FrameRate"]) end
	if struct["MaxHeight"] then asserts.AssertDigitsOrAuto(struct["MaxHeight"]) end
	if struct["KeyframesMaxDist"] then asserts.AssertKeyframesMaxDist(struct["KeyframesMaxDist"]) end
	if struct["FixedGOP"] then asserts.AssertFixedGOP(struct["FixedGOP"]) end
	if struct["Codec"] then asserts.AssertVideoCodec(struct["Codec"]) end
	if struct["Watermarks"] then asserts.AssertPresetWatermarks(struct["Watermarks"]) end
	if struct["CodecOptions"] then asserts.AssertCodecOptions(struct["CodecOptions"]) end
	if struct["AspectRatio"] then asserts.AssertAspectRatio(struct["AspectRatio"]) end
	if struct["BitRate"] then asserts.AssertVideoBitRate(struct["BitRate"]) end
	if struct["DisplayAspectRatio"] then asserts.AssertAspectRatio(struct["DisplayAspectRatio"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoParameters[k], "VideoParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoParameters
-- <p>The <code>VideoParameters</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizingPolicy [SizingPolicy] <p>Specify one of the following values to control scaling of the output video:</p> <ul> <li> <p> <code>Fit</code>: Elastic Transcoder scales the output video so it matches the value that you specified in either <code>MaxWidth</code> or <code>MaxHeight</code> without exceeding the other value.</p> </li> <li> <p> <code>Fill</code>: Elastic Transcoder scales the output video so it matches the value that you specified in either <code>MaxWidth</code> or <code>MaxHeight</code> and matches or exceeds the other value. Elastic Transcoder centers the output video and then crops it in the dimension (if any) that exceeds the maximum value.</p> </li> <li> <p> <code>Stretch</code>: Elastic Transcoder stretches the output video to match the values that you specified for <code>MaxWidth</code> and <code>MaxHeight</code>. If the relative proportions of the input video and the output video are different, the output video will be distorted.</p> </li> <li> <p> <code>Keep</code>: Elastic Transcoder does not scale the output video. If either dimension of the input video exceeds the values that you specified for <code>MaxWidth</code> and <code>MaxHeight</code>, Elastic Transcoder crops the output video.</p> </li> <li> <p> <code>ShrinkToFit</code>: Elastic Transcoder scales the output video down so that its dimensions match the values that you specified for at least one of <code>MaxWidth</code> and <code>MaxHeight</code> without exceeding either value. If you specify this option, Elastic Transcoder does not scale the video up.</p> </li> <li> <p> <code>ShrinkToFill</code>: Elastic Transcoder scales the output video down so that its dimensions match the values that you specified for at least one of <code>MaxWidth</code> and <code>MaxHeight</code> without dropping below either value. If you specify this option, Elastic Transcoder does not scale the video up.</p> </li> </ul>
-- * MaxWidth [DigitsOrAuto] <p> The maximum width of the output video in pixels. If you specify <code>auto</code>, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 128 and 4096. </p>
-- * PaddingPolicy [PaddingPolicy] <p>When you set <code>PaddingPolicy</code> to <code>Pad</code>, Elastic Transcoder may add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for <code>MaxWidth</code> and <code>MaxHeight</code>.</p>
-- * Resolution [Resolution] <important> <p>To better control resolution and aspect ratio of output videos, we recommend that you use the values <code>MaxWidth</code>, <code>MaxHeight</code>, <code>SizingPolicy</code>, <code>PaddingPolicy</code>, and <code>DisplayAspectRatio</code> instead of <code>Resolution</code> and <code>AspectRatio</code>. The two groups of settings are mutually exclusive. Do not use them together.</p> </important> <p>The width and height of the video in the output file, in pixels. Valid values are <code>auto</code> and <i>width</i> x <i>height</i>:</p> <ul> <li> <p> <code>auto</code>: Elastic Transcoder attempts to preserve the width and height of the input file, subject to the following rules.</p> </li> <li> <p> <code> <i>width</i> x <i>height</i> </code>: The width and height of the output video in pixels.</p> </li> </ul> <p>Note the following about specifying the width and height:</p> <ul> <li> <p>The width must be an even integer between 128 and 4096, inclusive.</p> </li> <li> <p>The height must be an even integer between 96 and 3072, inclusive.</p> </li> <li> <p>If you specify a resolution that is less than the resolution of the input file, Elastic Transcoder rescales the output file to the lower resolution.</p> </li> <li> <p>If you specify a resolution that is greater than the resolution of the input file, Elastic Transcoder rescales the output to the higher resolution.</p> </li> <li> <p>We recommend that you specify a resolution for which the product of width and height is less than or equal to the applicable value in the following list (<i>List - Max width x height value</i>):</p> <ul> <li> <p>1 - 25344</p> </li> <li> <p>1b - 25344</p> </li> <li> <p>1.1 - 101376</p> </li> <li> <p>1.2 - 101376</p> </li> <li> <p>1.3 - 101376</p> </li> <li> <p>2 - 101376</p> </li> <li> <p>2.1 - 202752</p> </li> <li> <p>2.2 - 404720</p> </li> <li> <p>3 - 404720</p> </li> <li> <p>3.1 - 921600</p> </li> <li> <p>3.2 - 1310720</p> </li> <li> <p>4 - 2097152</p> </li> <li> <p>4.1 - 2097152</p> </li> </ul> </li> </ul>
-- * MaxFrameRate [MaxFrameRate] <p>If you specify <code>auto</code> for <code>FrameRate</code>, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video. Specify the maximum frame rate that you want Elastic Transcoder to use when the frame rate of the input video is greater than the desired maximum frame rate of the output video. Valid values include: <code>10</code>, <code>15</code>, <code>23.97</code>, <code>24</code>, <code>25</code>, <code>29.97</code>, <code>30</code>, <code>60</code>.</p>
-- * FrameRate [FrameRate] <p>The frames per second for the video stream in the output file. Valid values include:</p> <p> <code>auto</code>, <code>10</code>, <code>15</code>, <code>23.97</code>, <code>24</code>, <code>25</code>, <code>29.97</code>, <code>30</code>, <code>60</code> </p> <p>If you specify <code>auto</code>, Elastic Transcoder uses the detected frame rate of the input source. If you specify a frame rate, we recommend that you perform the following calculation:</p> <p> <code>Frame rate = maximum recommended decoding speed in luma samples/second / (width in pixels * height in pixels)</code> </p> <p>where:</p> <ul> <li> <p> <i>width in pixels</i> and <i>height in pixels</i> represent the Resolution of the output video.</p> </li> <li> <p> <i>maximum recommended decoding speed in Luma samples/second</i> is less than or equal to the maximum value listed in the following table, based on the value that you specified for Level.</p> </li> </ul> <p>The maximum recommended decoding speed in Luma samples/second for each level is described in the following list (<i>Level - Decoding speed</i>):</p> <ul> <li> <p>1 - 380160</p> </li> <li> <p>1b - 380160</p> </li> <li> <p>1.1 - 76800</p> </li> <li> <p>1.2 - 1536000</p> </li> <li> <p>1.3 - 3041280</p> </li> <li> <p>2 - 3041280</p> </li> <li> <p>2.1 - 5068800</p> </li> <li> <p>2.2 - 5184000</p> </li> <li> <p>3 - 10368000</p> </li> <li> <p>3.1 - 27648000</p> </li> <li> <p>3.2 - 55296000</p> </li> <li> <p>4 - 62914560</p> </li> <li> <p>4.1 - 62914560</p> </li> </ul>
-- * MaxHeight [DigitsOrAuto] <p>The maximum height of the output video in pixels. If you specify <code>auto</code>, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 96 and 3072.</p>
-- * KeyframesMaxDist [KeyframesMaxDist] <p>Applicable only when the value of Video:Codec is one of <code>H.264</code>, <code>MPEG2</code>, or <code>VP8</code>.</p> <p>The maximum number of frames between key frames. Key frames are fully encoded frames; the frames between key frames are encoded based, in part, on the content of the key frames. The value is an integer formatted as a string; valid values are between 1 (every frame is a key frame) and 100000, inclusive. A higher value results in higher compression but may also discernibly decrease video quality.</p> <p>For <code>Smooth</code> outputs, the <code>FrameRate</code> must have a constant ratio to the <code>KeyframesMaxDist</code>. This allows <code>Smooth</code> playlists to switch between different quality levels while the file is being played.</p> <p>For example, an input file can have a <code>FrameRate</code> of 30 with a <code>KeyframesMaxDist</code> of 90. The output file then needs to have a ratio of 1:3. Valid outputs would have <code>FrameRate</code> of 30, 25, and 10, and <code>KeyframesMaxDist</code> of 90, 75, and 30, respectively.</p> <p>Alternately, this can be achieved by setting <code>FrameRate</code> to auto and having the same values for <code>MaxFrameRate</code> and <code>KeyframesMaxDist</code>.</p>
-- * FixedGOP [FixedGOP] <p>Applicable only when the value of Video:Codec is one of <code>H.264</code>, <code>MPEG2</code>, or <code>VP8</code>.</p> <p>Whether to use a fixed value for <code>FixedGOP</code>. Valid values are <code>true</code> and <code>false</code>:</p> <ul> <li> <p> <code>true</code>: Elastic Transcoder uses the value of <code>KeyframesMaxDist</code> for the distance between key frames (the number of frames in a group of pictures, or GOP).</p> </li> <li> <p> <code>false</code>: The distance between key frames can vary.</p> </li> </ul> <important> <p> <code>FixedGOP</code> must be set to <code>true</code> for <code>fmp4</code> containers.</p> </important>
-- * Codec [VideoCodec] <p>The video codec for the output file. Valid values include <code>gif</code>, <code>H.264</code>, <code>mpeg2</code>, <code>vp8</code>, and <code>vp9</code>. You can only specify <code>vp8</code> and <code>vp9</code> when the container type is <code>webm</code>, <code>gif</code> when the container type is <code>gif</code>, and <code>mpeg2</code> when the container type is <code>mpg</code>.</p>
-- * Watermarks [PresetWatermarks] <p>Settings for the size, location, and opacity of graphics that you want Elastic Transcoder to overlay over videos that are transcoded using this preset. You can specify settings for up to four watermarks. Watermarks appear in the specified size and location, and with the specified opacity for the duration of the transcoded video.</p> <p>Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.</p> <p>When you create a job that uses this preset, you specify the .png or .jpg graphics that you want Elastic Transcoder to include in the transcoded videos. You can specify fewer graphics in the job than you specify watermark settings in the preset, which allows you to use the same preset for up to four watermarks that have different dimensions.</p>
-- * CodecOptions [CodecOptions] <p> <b>Profile (H.264/VP8/VP9 Only)</b> </p> <p>The H.264 profile that you want to use for the output file. Elastic Transcoder supports the following profiles:</p> <ul> <li> <p> <code>baseline</code>: The profile most commonly used for videoconferencing and for mobile applications.</p> </li> <li> <p> <code>main</code>: The profile used for standard-definition digital TV broadcasts.</p> </li> <li> <p> <code>high</code>: The profile used for high-definition digital TV broadcasts and for Blu-ray discs.</p> </li> </ul> <p> <b>Level (H.264 Only)</b> </p> <p>The H.264 level that you want to use for the output file. Elastic Transcoder supports the following levels:</p> <p> <code>1</code>, <code>1b</code>, <code>1.1</code>, <code>1.2</code>, <code>1.3</code>, <code>2</code>, <code>2.1</code>, <code>2.2</code>, <code>3</code>, <code>3.1</code>, <code>3.2</code>, <code>4</code>, <code>4.1</code> </p> <p> <b>MaxReferenceFrames (H.264 Only)</b> </p> <p>Applicable only when the value of Video:Codec is H.264. The maximum number of previously decoded frames to use as a reference for decoding future frames. Valid values are integers 0 through 16, but we recommend that you not use a value greater than the following:</p> <p> <code>Min(Floor(Maximum decoded picture buffer in macroblocks * 256 / (Width in pixels * Height in pixels)), 16)</code> </p> <p>where <i>Width in pixels</i> and <i>Height in pixels</i> represent either MaxWidth and MaxHeight, or Resolution. <i>Maximum decoded picture buffer in macroblocks</i> depends on the value of the <code>Level</code> object. See the list below. (A macroblock is a block of pixels measuring 16x16.) </p> <ul> <li> <p>1 - 396</p> </li> <li> <p>1b - 396</p> </li> <li> <p>1.1 - 900</p> </li> <li> <p>1.2 - 2376</p> </li> <li> <p>1.3 - 2376</p> </li> <li> <p>2 - 2376</p> </li> <li> <p>2.1 - 4752</p> </li> <li> <p>2.2 - 8100</p> </li> <li> <p>3 - 8100</p> </li> <li> <p>3.1 - 18000</p> </li> <li> <p>3.2 - 20480</p> </li> <li> <p>4 - 32768</p> </li> <li> <p>4.1 - 32768</p> </li> </ul> <p> <b>MaxBitRate (Optional, H.264/MPEG2/VP8/VP9 only)</b> </p> <p>The maximum number of bits per second in a video buffer; the size of the buffer is specified by <code>BufferSize</code>. Specify a value between 16 and 62,500. You can reduce the bandwidth required to stream a video by reducing the maximum bit rate, but this also reduces the quality of the video.</p> <p> <b>BufferSize (Optional, H.264/MPEG2/VP8/VP9 only)</b> </p> <p>The maximum number of bits in any x seconds of the output video. This window is commonly 10 seconds, the standard segment duration when you're using FMP4 or MPEG-TS for the container type of the output video. Specify an integer greater than 0. If you specify <code>MaxBitRate</code> and omit <code>BufferSize</code>, Elastic Transcoder sets <code>BufferSize</code> to 10 times the value of <code>MaxBitRate</code>.</p> <p> <b>InterlacedMode (Optional, H.264/MPEG2 Only)</b> </p> <p>The interlace mode for the output video.</p> <p>Interlaced video is used to double the perceived frame rate for a video by interlacing two fields (one field on every other line, the other field on the other lines) so that the human eye registers multiple pictures per frame. Interlacing reduces the bandwidth required for transmitting a video, but can result in blurred images and flickering.</p> <p>Valid values include <code>Progressive</code> (no interlacing, top to bottom), <code>TopFirst</code> (top field first), <code>BottomFirst</code> (bottom field first), and <code>Auto</code>.</p> <p>If <code>InterlaceMode</code> is not specified, Elastic Transcoder uses <code>Progressive</code> for the output. If <code>Auto</code> is specified, Elastic Transcoder interlaces the output.</p> <p> <b>ColorSpaceConversionMode (Optional, H.264/MPEG2 Only)</b> </p> <p>The color space conversion Elastic Transcoder applies to the output video. Color spaces are the algorithms used by the computer to store information about how to render color. <code>Bt.601</code> is the standard for standard definition video, while <code>Bt.709</code> is the standard for high definition video.</p> <p>Valid values include <code>None</code>, <code>Bt709toBt601</code>, <code>Bt601toBt709</code>, and <code>Auto</code>.</p> <p>If you chose <code>Auto</code> for <code>ColorSpaceConversionMode</code> and your output is interlaced, your frame rate is one of <code>23.97</code>, <code>24</code>, <code>25</code>, <code>29.97</code>, <code>50</code>, or <code>60</code>, your <code>SegmentDuration</code> is null, and you are using one of the resolution changes from the list below, Elastic Transcoder applies the following color space conversions:</p> <ul> <li> <p> <i>Standard to HD, 720x480 to 1920x1080</i> - Elastic Transcoder applies <code>Bt601ToBt709</code> </p> </li> <li> <p> <i>Standard to HD, 720x576 to 1920x1080</i> - Elastic Transcoder applies <code>Bt601ToBt709</code> </p> </li> <li> <p> <i>HD to Standard, 1920x1080 to 720x480</i> - Elastic Transcoder applies <code>Bt709ToBt601</code> </p> </li> <li> <p> <i>HD to Standard, 1920x1080 to 720x576</i> - Elastic Transcoder applies <code>Bt709ToBt601</code> </p> </li> </ul> <note> <p>Elastic Transcoder may change the behavior of the <code>ColorspaceConversionMode</code> <code>Auto</code> mode in the future. All outputs in a playlist must use the same <code>ColorSpaceConversionMode</code>.</p> </note> <p>If you do not specify a <code>ColorSpaceConversionMode</code>, Elastic Transcoder does not change the color space of a file. If you are unsure what <code>ColorSpaceConversionMode</code> was applied to your output file, you can check the <code>AppliedColorSpaceConversion</code> parameter included in your job response. If your job does not have an <code>AppliedColorSpaceConversion</code> in its response, no <code>ColorSpaceConversionMode</code> was applied.</p> <p> <b>ChromaSubsampling</b> </p> <p>The sampling pattern for the chroma (color) channels of the output video. Valid values include <code>yuv420p</code> and <code>yuv422p</code>.</p> <p> <code>yuv420p</code> samples the chroma information of every other horizontal and every other vertical line, <code>yuv422p</code> samples the color information of every horizontal line and every other vertical line.</p> <p> <b>LoopCount (Gif Only)</b> </p> <p>The number of times you want the output gif to loop. Valid values include <code>Infinite</code> and integers between <code>0</code> and <code>100</code>, inclusive.</p>
-- * AspectRatio [AspectRatio] <important> <p>To better control resolution and aspect ratio of output videos, we recommend that you use the values <code>MaxWidth</code>, <code>MaxHeight</code>, <code>SizingPolicy</code>, <code>PaddingPolicy</code>, and <code>DisplayAspectRatio</code> instead of <code>Resolution</code> and <code>AspectRatio</code>. The two groups of settings are mutually exclusive. Do not use them together.</p> </important> <p>The display aspect ratio of the video in the output file. Valid values include:</p> <p> <code>auto</code>, <code>1:1</code>, <code>4:3</code>, <code>3:2</code>, <code>16:9</code> </p> <p>If you specify <code>auto</code>, Elastic Transcoder tries to preserve the aspect ratio of the input file.</p> <p>If you specify an aspect ratio for the output file that differs from aspect ratio of the input file, Elastic Transcoder adds pillarboxing (black bars on the sides) or letterboxing (black bars on the top and bottom) to maintain the aspect ratio of the active region of the video.</p>
-- * BitRate [VideoBitRate] <p>The bit rate of the video stream in the output file, in kilobits/second. Valid values depend on the values of <code>Level</code> and <code>Profile</code>. If you specify <code>auto</code>, Elastic Transcoder uses the detected bit rate of the input source. If you specify a value other than <code>auto</code>, we recommend that you specify a value less than or equal to the maximum H.264-compliant value listed for your level and profile:</p> <p> <i>Level - Maximum video bit rate in kilobits/second (baseline and main Profile) : maximum video bit rate in kilobits/second (high Profile)</i> </p> <ul> <li> <p>1 - 64 : 80</p> </li> <li> <p>1b - 128 : 160</p> </li> <li> <p>1.1 - 192 : 240</p> </li> <li> <p>1.2 - 384 : 480</p> </li> <li> <p>1.3 - 768 : 960</p> </li> <li> <p>2 - 2000 : 2500</p> </li> <li> <p>3 - 10000 : 12500</p> </li> <li> <p>3.1 - 14000 : 17500</p> </li> <li> <p>3.2 - 20000 : 25000</p> </li> <li> <p>4 - 20000 : 25000</p> </li> <li> <p>4.1 - 50000 : 62500</p> </li> </ul>
-- * DisplayAspectRatio [AspectRatio] <p>The value that Elastic Transcoder adds to the metadata in the output file.</p>
-- @return VideoParameters structure as a key-value pair table
function M.VideoParameters(args)
	assert(args, "You must provide an argument table when creating VideoParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizingPolicy"] = args["SizingPolicy"],
		["MaxWidth"] = args["MaxWidth"],
		["PaddingPolicy"] = args["PaddingPolicy"],
		["Resolution"] = args["Resolution"],
		["MaxFrameRate"] = args["MaxFrameRate"],
		["FrameRate"] = args["FrameRate"],
		["MaxHeight"] = args["MaxHeight"],
		["KeyframesMaxDist"] = args["KeyframesMaxDist"],
		["FixedGOP"] = args["FixedGOP"],
		["Codec"] = args["Codec"],
		["Watermarks"] = args["Watermarks"],
		["CodecOptions"] = args["CodecOptions"],
		["AspectRatio"] = args["AspectRatio"],
		["BitRate"] = args["BitRate"],
		["DisplayAspectRatio"] = args["DisplayAspectRatio"],
	}
	asserts.AssertVideoParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePipelineRequest = { ["ContentConfig"] = true, ["ThumbnailConfig"] = true, ["Name"] = true, ["Notifications"] = true, ["AwsKmsKeyArn"] = true, ["InputBucket"] = true, ["OutputBucket"] = true, ["Role"] = true, nil }

function asserts.AssertCreatePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["InputBucket"], "Expected key InputBucket to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["ContentConfig"] then asserts.AssertPipelineOutputConfig(struct["ContentConfig"]) end
	if struct["ThumbnailConfig"] then asserts.AssertPipelineOutputConfig(struct["ThumbnailConfig"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["Notifications"] then asserts.AssertNotifications(struct["Notifications"]) end
	if struct["AwsKmsKeyArn"] then asserts.AssertKeyArn(struct["AwsKmsKeyArn"]) end
	if struct["InputBucket"] then asserts.AssertBucketName(struct["InputBucket"]) end
	if struct["OutputBucket"] then asserts.AssertBucketName(struct["OutputBucket"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineRequest[k], "CreatePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineRequest
-- <p>The <code>CreatePipelineRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentConfig [PipelineOutputConfig] <p>The optional <code>ContentConfig</code> object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists: which bucket to use, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.</p> <p>If you specify values for <code>ContentConfig</code>, you must also specify values for <code>ThumbnailConfig</code>.</p> <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>, omit the <code>OutputBucket</code> object.</p> <ul> <li> <p> <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.</p> </li> <li> <p> <b>Permissions</b> (Optional): The Permissions object specifies which users you want to have access to transcoded files and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.</p> </li> <li> <p> <b>Grantee Type</b>: Specify the type of value that appears in the <code>Grantee</code> object: </p> <ul> <li> <p> <b>Canonical</b>: The value in the <code>Grantee</code> object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution. For more information about canonical user IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage Service Developer Guide. For more information about using CloudFront origin access identities to require that users use CloudFront URLs instead of Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content.</p> <important> <p>A canonical user ID is not the same as an AWS account number.</p> </important> </li> <li> <p> <b>Email</b>: The value in the <code>Grantee</code> object is the registered email address of an AWS account.</p> </li> <li> <p> <b>Group</b>: The value in the <code>Grantee</code> object is one of the following predefined Amazon S3 groups: <code>AllUsers</code>, <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p> </li> </ul> </li> <li> <p> <b>Grantee</b>: The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group </p> </li> <li> <p> <b>Access</b>: The permission that you want to give to the AWS user that you specified in <code>Grantee</code>. Permissions are granted on the files that Elastic Transcoder adds to the bucket, including playlists and video files. Valid values include: </p> <ul> <li> <p> <code>READ</code>: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>READ_ACP</code>: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>WRITE_ACP</code>: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>FULL_CONTROL</code>: The grantee has <code>READ</code>, <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> </ul> </li> <li> <p> <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket.</p> </li> </ul>
-- * ThumbnailConfig [PipelineOutputConfig] <p>The <code>ThumbnailConfig</code> object specifies several values, including the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.</p> <p>If you specify values for <code>ContentConfig</code>, you must also specify values for <code>ThumbnailConfig</code> even if you don't want to create thumbnails.</p> <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>, omit the <code>OutputBucket</code> object.</p> <ul> <li> <p> <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.</p> </li> <li> <p> <b>Permissions</b> (Optional): The <code>Permissions</code> object specifies which users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.</p> </li> <li> <p> <b>GranteeType</b>: Specify the type of value that appears in the Grantee object: </p> <ul> <li> <p> <b>Canonical</b>: The value in the <code>Grantee</code> object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.</p> <important> <p>A canonical user ID is not the same as an AWS account number.</p> </important> </li> <li> <p> <b>Email</b>: The value in the <code>Grantee</code> object is the registered email address of an AWS account. </p> </li> <li> <p> <b>Group</b>: The value in the <code>Grantee</code> object is one of the following predefined Amazon S3 groups: <code>AllUsers</code>, <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p> </li> </ul> </li> <li> <p> <b>Grantee</b>: The AWS user or group that you want to have access to thumbnail files. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group. </p> </li> <li> <p> <b>Access</b>: The permission that you want to give to the AWS user that you specified in <code>Grantee</code>. Permissions are granted on the thumbnail files that Elastic Transcoder adds to the bucket. Valid values include: </p> <ul> <li> <p> <code>READ</code>: The grantee can read the thumbnails and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>FULL_CONTROL</code>: The grantee has <code>READ</code>, <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> </ul> </li> <li> <p> <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.</p> </li> </ul>
-- * Name [Name] <p>The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.</p> <p>Constraints: Maximum 40 characters.</p>
-- * Notifications [Notifications] <p>The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p> <important> <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p> </important> <ul> <li> <p> <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic. For more information, see Create a Topic in the Amazon Simple Notification Service Developer Guide.</p> </li> <li> <p> <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> </ul>
-- * AwsKmsKeyArn [KeyArn] <p>The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.</p> <p>If you use either <code>s3</code> or <code>s3-aws-kms</code> as your <code>Encryption:Mode</code>, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an <code>Encryption:Mode</code> of <code>aes-cbc-pkcs7</code>, <code>aes-ctr</code>, or <code>aes-gcm</code>.</p>
-- * InputBucket [BucketName] <p>The Amazon S3 bucket in which you saved the media files that you want to transcode.</p>
-- * OutputBucket [BucketName] <p>The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files. (Use this, or use ContentConfig:Bucket plus ThumbnailConfig:Bucket.)</p> <p>Specify this value when all of the following are true:</p> <ul> <li> <p>You want to save transcoded files, thumbnails (if any), and playlists (if any) together in one bucket.</p> </li> <li> <p>You do not want to specify the users or groups who have access to the transcoded files, thumbnails, and playlists.</p> </li> <li> <p>You do not want to specify the permissions that Elastic Transcoder grants to the files. </p> <important> <p>When Elastic Transcoder saves files in <code>OutputBucket</code>, it grants full control over the files only to the AWS account that owns the role that is specified by <code>Role</code>.</p> </important> </li> <li> <p>You want to associate the transcoded files and thumbnails with the Amazon S3 Standard storage class.</p> </li> </ul> <p>If you want to save transcoded files and playlists in one bucket and thumbnails in another bucket, specify which users can access the transcoded files or the permissions the users have, or change the Amazon S3 storage class, omit <code>OutputBucket</code> and specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code> instead.</p>
-- * Role [Role] <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to create the pipeline.</p>
-- Required key: Name
-- Required key: InputBucket
-- Required key: Role
-- @return CreatePipelineRequest structure as a key-value pair table
function M.CreatePipelineRequest(args)
	assert(args, "You must provide an argument table when creating CreatePipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContentConfig"] = args["ContentConfig"],
		["ThumbnailConfig"] = args["ThumbnailConfig"],
		["Name"] = args["Name"],
		["Notifications"] = args["Notifications"],
		["AwsKmsKeyArn"] = args["AwsKmsKeyArn"],
		["InputBucket"] = args["InputBucket"],
		["OutputBucket"] = args["OutputBucket"],
		["Role"] = args["Role"],
	}
	asserts.AssertCreatePipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineStatusRequest = { ["Status"] = true, ["Id"] = true, nil }

function asserts.AssertUpdatePipelineStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineStatusRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertPipelineStatus(struct["Status"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineStatusRequest[k], "UpdatePipelineStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineStatusRequest
-- <p>The <code>UpdatePipelineStatusRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [PipelineStatus] <p>The desired status of the pipeline:</p> <ul> <li> <p> <code>Active</code>: The pipeline is processing jobs.</p> </li> <li> <p> <code>Paused</code>: The pipeline is not currently processing jobs.</p> </li> </ul>
-- * Id [Id] <p>The identifier of the pipeline to update.</p>
-- Required key: Id
-- Required key: Status
-- @return UpdatePipelineStatusRequest structure as a key-value pair table
function M.UpdatePipelineStatusRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdatePipelineStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReadJobRequest = { ["Id"] = true, nil }

function asserts.AssertReadJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadJobRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReadJobRequest[k], "ReadJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadJobRequest
-- <p>The <code>ReadJobRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [Id] <p>The identifier of the job for which you want to get detailed information.</p>
-- Required key: Id
-- @return ReadJobRequest structure as a key-value pair table
function M.ReadJobRequest(args)
	assert(args, "You must provide an argument table when creating ReadJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertReadJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Artwork = { ["SizingPolicy"] = true, ["AlbumArtFormat"] = true, ["MaxWidth"] = true, ["PaddingPolicy"] = true, ["Encryption"] = true, ["MaxHeight"] = true, ["InputKey"] = true, nil }

function asserts.AssertArtwork(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artwork to be of type 'table'")
	if struct["SizingPolicy"] then asserts.AssertSizingPolicy(struct["SizingPolicy"]) end
	if struct["AlbumArtFormat"] then asserts.AssertJpgOrPng(struct["AlbumArtFormat"]) end
	if struct["MaxWidth"] then asserts.AssertDigitsOrAuto(struct["MaxWidth"]) end
	if struct["PaddingPolicy"] then asserts.AssertPaddingPolicy(struct["PaddingPolicy"]) end
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["MaxHeight"] then asserts.AssertDigitsOrAuto(struct["MaxHeight"]) end
	if struct["InputKey"] then asserts.AssertWatermarkKey(struct["InputKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.Artwork[k], "Artwork contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artwork
-- <p>The file to be used as album art. There can be multiple artworks associated with an audio file, to a maximum of 20.</p> <p>To remove artwork or leave the artwork empty, you can either set <code>Artwork</code> to null, or set the <code>Merge Policy</code> to "Replace" and use an empty <code>Artwork</code> array.</p> <p>To pass through existing artwork unchanged, set the <code>Merge Policy</code> to "Prepend", "Append", or "Fallback", and use an empty <code>Artwork</code> array.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizingPolicy [SizingPolicy] <p>Specify one of the following values to control scaling of the output album art:</p> <ul> <li> <p> <code>Fit:</code> Elastic Transcoder scales the output art so it matches the value that you specified in either <code>MaxWidth</code> or <code>MaxHeight</code> without exceeding the other value.</p> </li> <li> <p> <code>Fill:</code> Elastic Transcoder scales the output art so it matches the value that you specified in either <code>MaxWidth</code> or <code>MaxHeight</code> and matches or exceeds the other value. Elastic Transcoder centers the output art and then crops it in the dimension (if any) that exceeds the maximum value. </p> </li> <li> <p> <code>Stretch:</code> Elastic Transcoder stretches the output art to match the values that you specified for <code>MaxWidth</code> and <code>MaxHeight</code>. If the relative proportions of the input art and the output art are different, the output art will be distorted.</p> </li> <li> <p> <code>Keep:</code> Elastic Transcoder does not scale the output art. If either dimension of the input art exceeds the values that you specified for <code>MaxWidth</code> and <code>MaxHeight</code>, Elastic Transcoder crops the output art.</p> </li> <li> <p> <code>ShrinkToFit:</code> Elastic Transcoder scales the output art down so that its dimensions match the values that you specified for at least one of <code>MaxWidth</code> and <code>MaxHeight</code> without exceeding either value. If you specify this option, Elastic Transcoder does not scale the art up.</p> </li> <li> <p> <code>ShrinkToFill</code> Elastic Transcoder scales the output art down so that its dimensions match the values that you specified for at least one of <code>MaxWidth</code> and <code>MaxHeight</code> without dropping below either value. If you specify this option, Elastic Transcoder does not scale the art up.</p> </li> </ul>
-- * AlbumArtFormat [JpgOrPng] <p>The format of album art, if any. Valid formats are <code>.jpg</code> and <code>.png</code>.</p>
-- * MaxWidth [DigitsOrAuto] <p>The maximum width of the output album art in pixels. If you specify <code>auto</code>, Elastic Transcoder uses 600 as the default value. If you specify a numeric value, enter an even integer between 32 and 4096, inclusive.</p>
-- * PaddingPolicy [PaddingPolicy] <p>When you set <code>PaddingPolicy</code> to <code>Pad</code>, Elastic Transcoder may add white bars to the top and bottom and/or left and right sides of the output album art to make the total size of the output art match the values that you specified for <code>MaxWidth</code> and <code>MaxHeight</code>.</p>
-- * Encryption [Encryption] <p>The encryption settings, if any, that you want Elastic Transcoder to apply to your artwork.</p>
-- * MaxHeight [DigitsOrAuto] <p>The maximum height of the output album art in pixels. If you specify <code>auto</code>, Elastic Transcoder uses 600 as the default value. If you specify a numeric value, enter an even integer between 32 and 3072, inclusive.</p>
-- * InputKey [WatermarkKey] <p>The name of the file to be used as album art. To determine which Amazon S3 bucket contains the specified file, Elastic Transcoder checks the pipeline specified by <code>PipelineId</code>; the <code>InputBucket</code> object in that pipeline identifies the bucket.</p> <p>If the file name includes a prefix, for example, <code>cooking/pie.jpg</code>, include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error.</p>
-- @return Artwork structure as a key-value pair table
function M.Artwork(args)
	assert(args, "You must provide an argument table when creating Artwork")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizingPolicy"] = args["SizingPolicy"],
		["AlbumArtFormat"] = args["AlbumArtFormat"],
		["MaxWidth"] = args["MaxWidth"],
		["PaddingPolicy"] = args["PaddingPolicy"],
		["Encryption"] = args["Encryption"],
		["MaxHeight"] = args["MaxHeight"],
		["InputKey"] = args["InputKey"],
	}
	asserts.AssertArtwork(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineRequest = { ["ContentConfig"] = true, ["ThumbnailConfig"] = true, ["Name"] = true, ["Notifications"] = true, ["AwsKmsKeyArn"] = true, ["InputBucket"] = true, ["Role"] = true, ["Id"] = true, nil }

function asserts.AssertUpdatePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["ContentConfig"] then asserts.AssertPipelineOutputConfig(struct["ContentConfig"]) end
	if struct["ThumbnailConfig"] then asserts.AssertPipelineOutputConfig(struct["ThumbnailConfig"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["Notifications"] then asserts.AssertNotifications(struct["Notifications"]) end
	if struct["AwsKmsKeyArn"] then asserts.AssertKeyArn(struct["AwsKmsKeyArn"]) end
	if struct["InputBucket"] then asserts.AssertBucketName(struct["InputBucket"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineRequest[k], "UpdatePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineRequest
-- <p>The <code>UpdatePipelineRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentConfig [PipelineOutputConfig] <p>The optional <code>ContentConfig</code> object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists: which bucket to use, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.</p> <p>If you specify values for <code>ContentConfig</code>, you must also specify values for <code>ThumbnailConfig</code>.</p> <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>, omit the <code>OutputBucket</code> object.</p> <ul> <li> <p> <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.</p> </li> <li> <p> <b>Permissions</b> (Optional): The Permissions object specifies which users you want to have access to transcoded files and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.</p> </li> <li> <p> <b>Grantee Type</b>: Specify the type of value that appears in the <code>Grantee</code> object:</p> <ul> <li> <p> <b>Canonical</b>: The value in the <code>Grantee</code> object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution. For more information about canonical user IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage Service Developer Guide. For more information about using CloudFront origin access identities to require that users use CloudFront URLs instead of Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content.</p> <important> <p>A canonical user ID is not the same as an AWS account number.</p> </important> </li> <li> <p> <b>Email</b>: The value in the <code>Grantee</code> object is the registered email address of an AWS account.</p> </li> <li> <p> <b>Group</b>: The value in the <code>Grantee</code> object is one of the following predefined Amazon S3 groups: <code>AllUsers</code>, <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p> </li> </ul> </li> <li> <p> <b>Grantee</b>: The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group </p> </li> <li> <p> <b>Access</b>: The permission that you want to give to the AWS user that you specified in <code>Grantee</code>. Permissions are granted on the files that Elastic Transcoder adds to the bucket, including playlists and video files. Valid values include: </p> <ul> <li> <p> <code>READ</code>: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>READ_ACP</code>: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket. </p> </li> <li> <p> <code>WRITE_ACP</code>: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>FULL_CONTROL</code>: The grantee has <code>READ</code>, <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> </ul> </li> <li> <p> <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket.</p> </li> </ul>
-- * ThumbnailConfig [PipelineOutputConfig] <p>The <code>ThumbnailConfig</code> object specifies several values, including the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.</p> <p>If you specify values for <code>ContentConfig</code>, you must also specify values for <code>ThumbnailConfig</code> even if you don't want to create thumbnails.</p> <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>, omit the <code>OutputBucket</code> object.</p> <ul> <li> <p> <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.</p> </li> <li> <p> <b>Permissions</b> (Optional): The <code>Permissions</code> object specifies which users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.</p> </li> <li> <p> <b>GranteeType</b>: Specify the type of value that appears in the Grantee object:</p> <ul> <li> <p> <b>Canonical</b>: The value in the <code>Grantee</code> object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.</p> <important> <p>A canonical user ID is not the same as an AWS account number.</p> </important> </li> <li> <p> <b>Email</b>: The value in the <code>Grantee</code> object is the registered email address of an AWS account.</p> </li> <li> <p> <b>Group</b>: The value in the <code>Grantee</code> object is one of the following predefined Amazon S3 groups: <code>AllUsers</code>, <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p> </li> </ul> </li> <li> <p> <b>Grantee</b>: The AWS user or group that you want to have access to thumbnail files. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group. </p> </li> <li> <p> <b>Access</b>: The permission that you want to give to the AWS user that you specified in <code>Grantee</code>. Permissions are granted on the thumbnail files that Elastic Transcoder adds to the bucket. Valid values include: </p> <ul> <li> <p> <code>READ</code>: The grantee can read the thumbnails and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>FULL_CONTROL</code>: The grantee has <code>READ</code>, <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket. </p> </li> </ul> </li> <li> <p> <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.</p> </li> </ul>
-- * Name [Name] <p>The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.</p> <p>Constraints: Maximum 40 characters</p>
-- * Notifications [Notifications] <p>The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p> <important> <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p> </important> <ul> <li> <p> <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> <li> <p> <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition. This is the ARN that Amazon SNS returned when you created the topic.</p> </li> </ul>
-- * AwsKmsKeyArn [KeyArn] <p>The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.</p> <p>If you use either <code>s3</code> or <code>s3-aws-kms</code> as your <code>Encryption:Mode</code>, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an <code>Encryption:Mode</code> of <code>aes-cbc-pkcs7</code>, <code>aes-ctr</code>, or <code>aes-gcm</code>.</p>
-- * InputBucket [BucketName] <p>The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.</p>
-- * Role [Role] <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.</p>
-- * Id [Id] <p>The ID of the pipeline that you want to update.</p>
-- Required key: Id
-- @return UpdatePipelineRequest structure as a key-value pair table
function M.UpdatePipelineRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ContentConfig"] = args["ContentConfig"],
		["ThumbnailConfig"] = args["ThumbnailConfig"],
		["Name"] = args["Name"],
		["Notifications"] = args["Notifications"],
		["AwsKmsKeyArn"] = args["AwsKmsKeyArn"],
		["InputBucket"] = args["InputBucket"],
		["Role"] = args["Role"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdatePipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionSource = { ["TimeOffset"] = true, ["Encryption"] = true, ["Language"] = true, ["Key"] = true, ["Label"] = true, nil }

function asserts.AssertCaptionSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionSource to be of type 'table'")
	if struct["TimeOffset"] then asserts.AssertTimeOffset(struct["TimeOffset"]) end
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["Language"] then asserts.AssertKey(struct["Language"]) end
	if struct["Key"] then asserts.AssertLongKey(struct["Key"]) end
	if struct["Label"] then asserts.AssertName(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionSource[k], "CaptionSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionSource
-- <p>A source file for the input sidecar captions used during the transcoding process.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeOffset [TimeOffset] <p>For clip generation or captions that do not start at the same time as the associated video file, the <code>TimeOffset</code> tells Elastic Transcoder how much of the video to encode before including captions.</p> <p>Specify the TimeOffset in the form [+-]SS.sss or [+-]HH:mm:SS.ss.</p>
-- * Encryption [Encryption] <p>The encryption settings, if any, that Elastic Transcoder needs to decyrpt your caption sources, or that you want Elastic Transcoder to apply to your caption sources.</p>
-- * Language [Key] <p>A string that specifies the language of the caption. If you specified multiple inputs with captions, the caption language must match in order to be included in the output. Specify this as one of:</p> <ul> <li> <p>2-character ISO 639-1 code</p> </li> <li> <p>3-character ISO 639-2 code</p> </li> </ul> <p>For more information on ISO language codes and language names, see the List of ISO 639-1 codes.</p>
-- * Key [LongKey] <p>The name of the sidecar caption file that you want Elastic Transcoder to include in the output file.</p>
-- * Label [Name] <p>The label of the caption shown in the player when choosing a language. We recommend that you put the caption language name here, in the language of the captions.</p>
-- @return CaptionSource structure as a key-value pair table
function M.CaptionSource(args)
	assert(args, "You must provide an argument table when creating CaptionSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeOffset"] = args["TimeOffset"],
		["Encryption"] = args["Encryption"],
		["Language"] = args["Language"],
		["Key"] = args["Key"],
		["Label"] = args["Label"],
	}
	asserts.AssertCaptionSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePresetRequest = { ["Id"] = true, nil }

function asserts.AssertDeletePresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePresetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePresetRequest[k], "DeletePresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePresetRequest
-- <p>The <code>DeletePresetRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [Id] <p>The identifier of the preset for which you want to get detailed information.</p>
-- Required key: Id
-- @return DeletePresetRequest structure as a key-value pair table
function M.DeletePresetRequest(args)
	assert(args, "You must provide an argument table when creating DeletePresetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeletePresetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputCaptions = { ["MergePolicy"] = true, ["CaptionSources"] = true, nil }

function asserts.AssertInputCaptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputCaptions to be of type 'table'")
	if struct["MergePolicy"] then asserts.AssertCaptionMergePolicy(struct["MergePolicy"]) end
	if struct["CaptionSources"] then asserts.AssertCaptionSources(struct["CaptionSources"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputCaptions[k], "InputCaptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputCaptions
-- <p>The captions to be created, if any.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MergePolicy [CaptionMergePolicy] <p>A policy that determines how Elastic Transcoder handles the existence of multiple captions.</p> <ul> <li> <p> <b>MergeOverride:</b> Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the sidecar captions and ignores the embedded captions for that language.</p> </li> <li> <p> <b>MergeRetain:</b> Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the embedded captions and ignores the sidecar captions for that language. If <code>CaptionSources</code> is empty, Elastic Transcoder omits all sidecar captions from the output files.</p> </li> <li> <p> <b>Override:</b> Elastic Transcoder transcodes only the sidecar captions that you specify in <code>CaptionSources</code>.</p> </li> </ul> <p> <code>MergePolicy</code> cannot be null.</p>
-- * CaptionSources [CaptionSources] <p>Source files for the input sidecar captions used during the transcoding process. To omit all sidecar captions, leave <code>CaptionSources</code> blank.</p>
-- @return InputCaptions structure as a key-value pair table
function M.InputCaptions(args)
	assert(args, "You must provide an argument table when creating InputCaptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MergePolicy"] = args["MergePolicy"],
		["CaptionSources"] = args["CaptionSources"],
	}
	asserts.AssertInputCaptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineNotificationsResponse = { ["Pipeline"] = true, nil }

function asserts.AssertUpdatePipelineNotificationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineNotificationsResponse to be of type 'table'")
	if struct["Pipeline"] then asserts.AssertPipeline(struct["Pipeline"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineNotificationsResponse[k], "UpdatePipelineNotificationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineNotificationsResponse
-- <p>The <code>UpdatePipelineNotificationsResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pipeline [Pipeline] <p>A section of the response body that provides information about the pipeline associated with this notification.</p>
-- @return UpdatePipelineNotificationsResponse structure as a key-value pair table
function M.UpdatePipelineNotificationsResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineNotificationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pipeline"] = args["Pipeline"],
	}
	asserts.AssertUpdatePipelineNotificationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Captions = { ["MergePolicy"] = true, ["CaptionSources"] = true, ["CaptionFormats"] = true, nil }

function asserts.AssertCaptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Captions to be of type 'table'")
	if struct["MergePolicy"] then asserts.AssertCaptionMergePolicy(struct["MergePolicy"]) end
	if struct["CaptionSources"] then asserts.AssertCaptionSources(struct["CaptionSources"]) end
	if struct["CaptionFormats"] then asserts.AssertCaptionFormats(struct["CaptionFormats"]) end
	for k,_ in pairs(struct) do
		assert(keys.Captions[k], "Captions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Captions
-- <p>The captions to be created, if any.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MergePolicy [CaptionMergePolicy] <p>A policy that determines how Elastic Transcoder handles the existence of multiple captions.</p> <ul> <li> <p> <b>MergeOverride:</b> Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the sidecar captions and ignores the embedded captions for that language.</p> </li> <li> <p> <b>MergeRetain:</b> Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the embedded captions and ignores the sidecar captions for that language. If <code>CaptionSources</code> is empty, Elastic Transcoder omits all sidecar captions from the output files.</p> </li> <li> <p> <b>Override:</b> Elastic Transcoder transcodes only the sidecar captions that you specify in <code>CaptionSources</code>.</p> </li> </ul> <p> <code>MergePolicy</code> cannot be null.</p>
-- * CaptionSources [CaptionSources] <p>Source files for the input sidecar captions used during the transcoding process. To omit all sidecar captions, leave <code>CaptionSources</code> blank.</p>
-- * CaptionFormats [CaptionFormats] <p>The array of file formats for the output captions. If you leave this value blank, Elastic Transcoder returns an error.</p>
-- @return Captions structure as a key-value pair table
function M.Captions(args)
	assert(args, "You must provide an argument table when creating Captions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MergePolicy"] = args["MergePolicy"],
		["CaptionSources"] = args["CaptionSources"],
		["CaptionFormats"] = args["CaptionFormats"],
	}
	asserts.AssertCaptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsByPipelineRequest = { ["PageToken"] = true, ["PipelineId"] = true, ["Ascending"] = true, nil }

function asserts.AssertListJobsByPipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByPipelineRequest to be of type 'table'")
	assert(struct["PipelineId"], "Expected key PipelineId to exist in table")
	if struct["PageToken"] then asserts.AssertId(struct["PageToken"]) end
	if struct["PipelineId"] then asserts.AssertId(struct["PipelineId"]) end
	if struct["Ascending"] then asserts.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsByPipelineRequest[k], "ListJobsByPipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByPipelineRequest
-- <p>The <code>ListJobsByPipelineRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageToken [Id] <p> When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in subsequent <code>GET</code> requests to get each successive page of results. </p>
-- * PipelineId [Id] <p>The ID of the pipeline for which you want to get job information.</p>
-- * Ascending [Ascending] <p> To list jobs in chronological order by the date and time that they were submitted, enter <code>true</code>. To list jobs in reverse chronological order, enter <code>false</code>. </p>
-- Required key: PipelineId
-- @return ListJobsByPipelineRequest structure as a key-value pair table
function M.ListJobsByPipelineRequest(args)
	assert(args, "You must provide an argument table when creating ListJobsByPipelineRequest")
    local query_args = { 
        ["PageToken"] = args["PageToken"],
        ["Ascending"] = args["Ascending"],
    }
    local uri_args = { 
        ["{PipelineId}"] = args["PipelineId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["PageToken"] = args["PageToken"],
		["PipelineId"] = args["PipelineId"],
		["Ascending"] = args["Ascending"],
	}
	asserts.AssertListJobsByPipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimeSpan = { ["Duration"] = true, ["StartTime"] = true, nil }

function asserts.AssertTimeSpan(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeSpan to be of type 'table'")
	if struct["Duration"] then asserts.AssertTime(struct["Duration"]) end
	if struct["StartTime"] then asserts.AssertTime(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeSpan[k], "TimeSpan contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeSpan
-- <p>Settings that determine when a clip begins and how long it lasts.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Duration [Time] <p>The duration of the clip. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder creates an output file from StartTime to the end of the file.</p> <p>If you specify a value longer than the duration of the input file, Elastic Transcoder transcodes the file and returns a warning message.</p>
-- * StartTime [Time] <p>The place in the input file where you want a clip to start. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder starts at the beginning of the input file.</p>
-- @return TimeSpan structure as a key-value pair table
function M.TimeSpan(args)
	assert(args, "You must provide an argument table when creating TimeSpan")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Duration"] = args["Duration"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertTimeSpan(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobRequest = { ["Inputs"] = true, ["Playlists"] = true, ["Outputs"] = true, ["PipelineId"] = true, ["OutputKeyPrefix"] = true, ["UserMetadata"] = true, ["Output"] = true, ["Input"] = true, nil }

function asserts.AssertCreateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobRequest to be of type 'table'")
	assert(struct["PipelineId"], "Expected key PipelineId to exist in table")
	if struct["Inputs"] then asserts.AssertJobInputs(struct["Inputs"]) end
	if struct["Playlists"] then asserts.AssertCreateJobPlaylists(struct["Playlists"]) end
	if struct["Outputs"] then asserts.AssertCreateJobOutputs(struct["Outputs"]) end
	if struct["PipelineId"] then asserts.AssertId(struct["PipelineId"]) end
	if struct["OutputKeyPrefix"] then asserts.AssertKey(struct["OutputKeyPrefix"]) end
	if struct["UserMetadata"] then asserts.AssertUserMetadata(struct["UserMetadata"]) end
	if struct["Output"] then asserts.AssertCreateJobOutput(struct["Output"]) end
	if struct["Input"] then asserts.AssertJobInput(struct["Input"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobRequest[k], "CreateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobRequest
-- <p>The <code>CreateJobRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Inputs [JobInputs] <p>A section of the request body that provides information about the files that are being transcoded.</p>
-- * Playlists [CreateJobPlaylists] <p>If you specify a preset in <code>PresetId</code> for which the value of <code>Container</code> is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create.</p> <p>The maximum number of master playlists in a job is 30.</p>
-- * Outputs [CreateJobOutputs] <p> A section of the request body that provides information about the transcoded (target) files. We recommend that you use the <code>Outputs</code> syntax instead of the <code>Output</code> syntax. </p>
-- * PipelineId [Id] <p>The <code>Id</code> of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files.</p>
-- * OutputKeyPrefix [Key] <p>The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists.</p>
-- * UserMetadata [UserMetadata] <p>User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in <code>key/value</code> pairs, and you can add up to 10 <code>key/value</code> pairs per job. Elastic Transcoder does not guarantee that <code>key/value</code> pairs are returned in the same order in which you specify them.</p>
-- * Output [CreateJobOutput] <p> A section of the request body that provides information about the transcoded (target) file. We strongly recommend that you use the <code>Outputs</code> syntax instead of the <code>Output</code> syntax. </p>
-- * Input [JobInput] <p>A section of the request body that provides information about the file that is being transcoded.</p>
-- Required key: PipelineId
-- @return CreateJobRequest structure as a key-value pair table
function M.CreateJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Inputs"] = args["Inputs"],
		["Playlists"] = args["Playlists"],
		["Outputs"] = args["Outputs"],
		["PipelineId"] = args["PipelineId"],
		["OutputKeyPrefix"] = args["OutputKeyPrefix"],
		["UserMetadata"] = args["UserMetadata"],
		["Output"] = args["Output"],
		["Input"] = args["Input"],
	}
	asserts.AssertCreateJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePresetResponse = { ["Preset"] = true, ["Warning"] = true, nil }

function asserts.AssertCreatePresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresetResponse to be of type 'table'")
	if struct["Preset"] then asserts.AssertPreset(struct["Preset"]) end
	if struct["Warning"] then asserts.AssertString(struct["Warning"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePresetResponse[k], "CreatePresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresetResponse
-- <p>The <code>CreatePresetResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Preset [Preset] <p>A section of the response body that provides information about the preset that is created.</p>
-- * Warning [String] <p>If the preset settings don't comply with the standards for the video codec but Elastic Transcoder created the preset, this message explains the reason the preset settings don't meet the standard. Elastic Transcoder created the preset because the settings might produce acceptable output.</p>
-- @return CreatePresetResponse structure as a key-value pair table
function M.CreatePresetResponse(args)
	assert(args, "You must provide an argument table when creating CreatePresetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Preset"] = args["Preset"],
		["Warning"] = args["Warning"],
	}
	asserts.AssertCreatePresetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Pipeline = { ["Status"] = true, ["ContentConfig"] = true, ["Name"] = true, ["ThumbnailConfig"] = true, ["AwsKmsKeyArn"] = true, ["Notifications"] = true, ["Role"] = true, ["InputBucket"] = true, ["OutputBucket"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertPipeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Pipeline to be of type 'table'")
	if struct["Status"] then asserts.AssertPipelineStatus(struct["Status"]) end
	if struct["ContentConfig"] then asserts.AssertPipelineOutputConfig(struct["ContentConfig"]) end
	if struct["Name"] then asserts.AssertName(struct["Name"]) end
	if struct["ThumbnailConfig"] then asserts.AssertPipelineOutputConfig(struct["ThumbnailConfig"]) end
	if struct["AwsKmsKeyArn"] then asserts.AssertKeyArn(struct["AwsKmsKeyArn"]) end
	if struct["Notifications"] then asserts.AssertNotifications(struct["Notifications"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["InputBucket"] then asserts.AssertBucketName(struct["InputBucket"]) end
	if struct["OutputBucket"] then asserts.AssertBucketName(struct["OutputBucket"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Pipeline[k], "Pipeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Pipeline
-- <p>The pipeline (queue) that is used to manage jobs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [PipelineStatus] <p>The current status of the pipeline:</p> <ul> <li> <p> <code>Active</code>: The pipeline is processing jobs.</p> </li> <li> <p> <code>Paused</code>: The pipeline is not currently processing jobs.</p> </li> </ul>
-- * ContentConfig [PipelineOutputConfig] <p>Information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. Either you specify both <code>ContentConfig</code> and <code>ThumbnailConfig</code>, or you specify <code>OutputBucket</code>.</p> <ul> <li> <p> <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.</p> </li> <li> <p> <b>Permissions</b>: A list of the users and/or predefined Amazon S3 groups you want to have access to transcoded files and playlists, and the type of access that you want them to have. </p> <ul> <li> <p>GranteeType: The type of value that appears in the <code>Grantee</code> object: </p> <ul> <li> <p> <code>Canonical</code>: Either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.</p> </li> <li> <p> <code>Email</code>: The registered email address of an AWS account.</p> </li> <li> <p> <code>Group</code>: One of the following predefined Amazon S3 groups: <code>AllUsers</code>, <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p> </li> </ul> </li> <li> <p> <code>Grantee</code>: The AWS user or group that you want to have access to transcoded files and playlists.</p> </li> <li> <p> <code>Access</code>: The permission that you want to give to the AWS user that is listed in <code>Grantee</code>. Valid values include:</p> <ul> <li> <p> <code>READ</code>: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>READ_ACP</code>: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>WRITE_ACP</code>: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>FULL_CONTROL</code>: The grantee has <code>READ</code>, <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> </ul> </li> </ul> </li> <li> <p> <b>StorageClass</b>: The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket. </p> </li> </ul>
-- * Name [Name] <p>The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.</p> <p>Constraints: Maximum 40 characters</p>
-- * ThumbnailConfig [PipelineOutputConfig] <p>Information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. Either you specify both <code>ContentConfig</code> and <code>ThumbnailConfig</code>, or you specify <code>OutputBucket</code>.</p> <ul> <li> <p> <code>Bucket</code>: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. </p> </li> <li> <p> <code>Permissions</code>: A list of the users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access that you want them to have. </p> <ul> <li> <p>GranteeType: The type of value that appears in the Grantee object:</p> <ul> <li> <p> <code>Canonical</code>: Either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.</p> <important> <p>A canonical user ID is not the same as an AWS account number.</p> </important> </li> <li> <p> <code>Email</code>: The registered email address of an AWS account.</p> </li> <li> <p> <code>Group</code>: One of the following predefined Amazon S3 groups: <code>AllUsers</code>, <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p> </li> </ul> </li> <li> <p> <code>Grantee</code>: The AWS user or group that you want to have access to thumbnail files.</p> </li> <li> <p>Access: The permission that you want to give to the AWS user that is listed in Grantee. Valid values include: </p> <ul> <li> <p> <code>READ</code>: The grantee can read the thumbnails and metadata for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> <li> <p> <code>FULL_CONTROL</code>: The grantee has READ, READ_ACP, and WRITE_ACP permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> </li> </ul> </li> </ul> </li> <li> <p> <code>StorageClass</code>: The Amazon S3 storage class, <code>Standard</code> or <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.</p> </li> </ul>
-- * AwsKmsKeyArn [KeyArn] <p>The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.</p> <p>If you use either <code>s3</code> or <code>s3-aws-kms</code> as your <code>Encryption:Mode</code>, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an <code>Encryption:Mode</code> of <code>aes-cbc-pkcs7</code>, <code>aes-ctr</code>, or <code>aes-gcm</code>.</p>
-- * Notifications [Notifications] <p>The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p> <important> <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p> </important> <ul> <li> <p> <b>Progressing</b> (optional): The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process the job.</p> </li> <li> <p> <b>Complete</b> (optional): The Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing the job.</p> </li> <li> <p> <b>Warning</b> (optional): The Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition.</p> </li> <li> <p> <b>Error</b> (optional): The Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition.</p> </li> </ul>
-- * Role [Role] <p>The IAM Amazon Resource Name (ARN) for the role that Elastic Transcoder uses to transcode jobs for this pipeline.</p>
-- * InputBucket [BucketName] <p>The Amazon S3 bucket from which Elastic Transcoder gets media files for transcoding and the graphics files, if any, that you want to use for watermarks.</p>
-- * OutputBucket [BucketName] <p>The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files, thumbnails, and playlists. Either you specify this value, or you specify both <code>ContentConfig</code> and <code>ThumbnailConfig</code>.</p>
-- * Id [Id] <p>The identifier for the pipeline. You use this value to identify the pipeline in which you want to perform a variety of operations, such as creating a job or a preset.</p>
-- * Arn [String] <p>The Amazon Resource Name (ARN) for the pipeline.</p>
-- @return Pipeline structure as a key-value pair table
function M.Pipeline(args)
	assert(args, "You must provide an argument table when creating Pipeline")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ContentConfig"] = args["ContentConfig"],
		["Name"] = args["Name"],
		["ThumbnailConfig"] = args["ThumbnailConfig"],
		["AwsKmsKeyArn"] = args["AwsKmsKeyArn"],
		["Notifications"] = args["Notifications"],
		["Role"] = args["Role"],
		["InputBucket"] = args["InputBucket"],
		["OutputBucket"] = args["OutputBucket"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertPipeline(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlayReadyDrm = { ["KeyId"] = true, ["KeyMd5"] = true, ["Format"] = true, ["InitializationVector"] = true, ["LicenseAcquisitionUrl"] = true, ["Key"] = true, nil }

function asserts.AssertPlayReadyDrm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayReadyDrm to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdGuid(struct["KeyId"]) end
	if struct["KeyMd5"] then asserts.AssertNonEmptyBase64EncodedString(struct["KeyMd5"]) end
	if struct["Format"] then asserts.AssertPlayReadyDrmFormatString(struct["Format"]) end
	if struct["InitializationVector"] then asserts.AssertZeroTo255String(struct["InitializationVector"]) end
	if struct["LicenseAcquisitionUrl"] then asserts.AssertOneTo512String(struct["LicenseAcquisitionUrl"]) end
	if struct["Key"] then asserts.AssertNonEmptyBase64EncodedString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlayReadyDrm[k], "PlayReadyDrm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayReadyDrm
-- <p>The PlayReady DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.</p> <p>PlayReady DRM encrypts your media files using <code>aes-ctr</code> encryption.</p> <p>If you use DRM for an <code>HLSv3</code> playlist, your outputs must have a master playlist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdGuid] <p>The ID for your DRM key, so that your DRM license provider knows which key to provide.</p> <p>The key ID must be provided in big endian, and Elastic Transcoder converts it to little endian before inserting it into the PlayReady DRM headers. If you are unsure whether your license server provides your key ID in big or little endian, check with your DRM provider.</p>
-- * KeyMd5 [NonEmptyBase64EncodedString] <p>The MD5 digest of the key used for DRM on your file, and that you want Elastic Transcoder to use as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes before being base64-encoded.</p>
-- * Format [PlayReadyDrmFormatString] <p>The type of DRM, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.</p>
-- * InitializationVector [ZeroTo255String] <p>The series of random bits created by a random bit generator, unique for every encryption operation, that you want Elastic Transcoder to use to encrypt your files. The initialization vector must be base64-encoded, and it must be exactly 8 bytes long before being base64-encoded. If no initialization vector is provided, Elastic Transcoder generates one for you.</p>
-- * LicenseAcquisitionUrl [OneTo512String] <p>The location of the license key required to play DRM content. The URL must be an absolute path, and is referenced by the PlayReady header. The PlayReady header is referenced in the protection header of the client manifest for Smooth Streaming outputs, and in the EXT-X-DXDRM and EXT-XDXDRMINFO metadata tags for HLS playlist outputs. An example URL looks like this: <code>https://www.example.com/exampleKey/</code> </p>
-- * Key [NonEmptyBase64EncodedString] <p>The DRM key for your file, provided by your DRM license provider. The key must be base64-encoded, and it must be one of the following bit lengths before being base64-encoded:</p> <p> <code>128</code>, <code>192</code>, or <code>256</code>. </p> <p>The key must also be encrypted by using AWS KMS.</p>
-- @return PlayReadyDrm structure as a key-value pair table
function M.PlayReadyDrm(args)
	assert(args, "You must provide an argument table when creating PlayReadyDrm")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["KeyMd5"] = args["KeyMd5"],
		["Format"] = args["Format"],
		["InitializationVector"] = args["InitializationVector"],
		["LicenseAcquisitionUrl"] = args["LicenseAcquisitionUrl"],
		["Key"] = args["Key"],
	}
	asserts.AssertPlayReadyDrm(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePipelineResponse = { ["Pipeline"] = true, ["Warnings"] = true, nil }

function asserts.AssertCreatePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineResponse to be of type 'table'")
	if struct["Pipeline"] then asserts.AssertPipeline(struct["Pipeline"]) end
	if struct["Warnings"] then asserts.AssertWarnings(struct["Warnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineResponse[k], "CreatePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineResponse
-- <p>When you create a pipeline, Elastic Transcoder returns the values that you specified in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pipeline [Pipeline] <p>A section of the response body that provides information about the pipeline that is created.</p>
-- * Warnings [Warnings] <p>Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.</p> <p>Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.</p>
-- @return CreatePipelineResponse structure as a key-value pair table
function M.CreatePipelineResponse(args)
	assert(args, "You must provide an argument table when creating CreatePipelineResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pipeline"] = args["Pipeline"],
		["Warnings"] = args["Warnings"],
	}
	asserts.AssertCreatePipelineResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobOutput = { ["Rotate"] = true, ["Encryption"] = true, ["PresetId"] = true, ["Watermarks"] = true, ["SegmentDuration"] = true, ["Key"] = true, ["Captions"] = true, ["AlbumArt"] = true, ["ThumbnailPattern"] = true, ["ThumbnailEncryption"] = true, ["Composition"] = true, nil }

function asserts.AssertCreateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobOutput to be of type 'table'")
	if struct["Rotate"] then asserts.AssertRotate(struct["Rotate"]) end
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["PresetId"] then asserts.AssertId(struct["PresetId"]) end
	if struct["Watermarks"] then asserts.AssertJobWatermarks(struct["Watermarks"]) end
	if struct["SegmentDuration"] then asserts.AssertFloatString(struct["SegmentDuration"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	if struct["Captions"] then asserts.AssertCaptions(struct["Captions"]) end
	if struct["AlbumArt"] then asserts.AssertJobAlbumArt(struct["AlbumArt"]) end
	if struct["ThumbnailPattern"] then asserts.AssertThumbnailPattern(struct["ThumbnailPattern"]) end
	if struct["ThumbnailEncryption"] then asserts.AssertEncryption(struct["ThumbnailEncryption"]) end
	if struct["Composition"] then asserts.AssertComposition(struct["Composition"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobOutput[k], "CreateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobOutput
-- <p>The <code>CreateJobOutput</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rotate [Rotate] <p> The number of degrees clockwise by which you want Elastic Transcoder to rotate the output relative to the input. Enter one of the following values: <code>auto</code>, <code>0</code>, <code>90</code>, <code>180</code>, <code>270</code>. The value <code>auto</code> generally works only if the file that you're transcoding contains rotation metadata. </p>
-- * Encryption [Encryption] <p>You can specify encryption settings for any output files that you want to use for a transcoding job. This includes the output file and any watermarks, thumbnails, album art, or captions that you want to use. You must specify encryption settings for each file individually.</p>
-- * PresetId [Id] <p> The <code>Id</code> of the preset to use for this job. The preset determines the audio, video, and thumbnail settings that Elastic Transcoder uses for transcoding. </p>
-- * Watermarks [JobWatermarks] <p>Information about the watermarks that you want Elastic Transcoder to add to the video during transcoding. You can specify up to four watermarks for each output. Settings for each watermark must be defined in the preset for the current output.</p>
-- * SegmentDuration [FloatString] <important> <p>(Outputs in Fragmented MP4 or MPEG-TS format only.</p> </important> <p>If you specify a preset in <code>PresetId</code> for which the value of <code>Container</code> is <code>fmp4</code> (Fragmented MP4) or <code>ts</code> (MPEG-TS), <code>SegmentDuration</code> is the target maximum duration of each segment in seconds. For <code>HLSv3</code> format playlists, each media segment is stored in a separate <code>.ts</code> file. For <code>HLSv4</code> and <code>Smooth</code> playlists, all media segments for an output are stored in a single file. Each segment is approximately the length of the <code>SegmentDuration</code>, though individual segments might be shorter or longer.</p> <p>The range of valid values is 1 to 60 seconds. If the duration of the video is not evenly divisible by <code>SegmentDuration</code>, the duration of the last segment is the remainder of total length/SegmentDuration.</p> <p>Elastic Transcoder creates an output-specific playlist for each output <code>HLS</code> output that you specify in OutputKeys. To add an output to the master playlist for this job, include it in the <code>OutputKeys</code> of the associated playlist.</p>
-- * Key [Key] <p> The name to assign to the transcoded file. Elastic Transcoder saves the file in the Amazon S3 bucket specified by the <code>OutputBucket</code> object in the pipeline that is specified by the pipeline ID. If a file with the specified name already exists in the output bucket, the job fails. </p>
-- * Captions [Captions] <p>You can configure Elastic Transcoder to transcode captions, or subtitles, from one format to another. All captions must be in UTF-8. Elastic Transcoder supports two types of captions:</p> <ul> <li> <p> <b>Embedded:</b> Embedded captions are included in the same file as the audio and video. Elastic Transcoder supports only one embedded caption per language, to a maximum of 300 embedded captions per file.</p> <p>Valid input values include: <code>CEA-608 (EIA-608</code>, first non-empty channel only), <code>CEA-708 (EIA-708</code>, first non-empty channel only), and <code>mov-text</code> </p> <p>Valid outputs include: <code>mov-text</code> </p> <p>Elastic Transcoder supports a maximum of one embedded format per output.</p> </li> <li> <p> <b>Sidecar:</b> Sidecar captions are kept in a separate metadata file from the audio and video data. Sidecar captions require a player that is capable of understanding the relationship between the video file and the sidecar file. Elastic Transcoder supports only one sidecar caption per language, to a maximum of 20 sidecar captions per file.</p> <p>Valid input values include: <code>dfxp</code> (first div element only), <code>ebu-tt</code>, <code>scc</code>, <code>smpt</code>, <code>srt</code>, <code>ttml</code> (first div element only), and <code>webvtt</code> </p> <p>Valid outputs include: <code>dfxp</code> (first div element only), <code>scc</code>, <code>srt</code>, and <code>webvtt</code>.</p> </li> </ul> <p>If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.</p> <p>Elastic Transcoder does not support OCR (Optical Character Recognition), does not accept pictures as a valid input for captions, and is not available for audio-only transcoding. Elastic Transcoder does not preserve text formatting (for example, italics) during the transcoding process.</p> <p>To remove captions or leave the captions empty, set <code>Captions</code> to null. To pass through existing captions unchanged, set the <code>MergePolicy</code> to <code>MergeRetain</code>, and pass in a null <code>CaptionSources</code> array.</p> <p>For more information on embedded files, see the Subtitles Wikipedia page.</p> <p>For more information on sidecar files, see the Extensible Metadata Platform and Sidecar file Wikipedia pages.</p>
-- * AlbumArt [JobAlbumArt] <p>Information about the album art that you want Elastic Transcoder to add to the file during transcoding. You can specify up to twenty album artworks for each output. Settings for each artwork must be defined in the job for the current output.</p>
-- * ThumbnailPattern [ThumbnailPattern] <p>Whether you want Elastic Transcoder to create thumbnails for your videos and, if so, how you want Elastic Transcoder to name the files.</p> <p>If you don't want Elastic Transcoder to create thumbnails, specify "".</p> <p>If you do want Elastic Transcoder to create thumbnails, specify the information that you want to include in the file name for each thumbnail. You can specify the following values in any sequence:</p> <ul> <li> <p> <b> <code>{count}</code> (Required)</b>: If you want to create thumbnails, you must include <code>{count}</code> in the <code>ThumbnailPattern</code> object. Wherever you specify <code>{count}</code>, Elastic Transcoder adds a five-digit sequence number (beginning with <b>00001</b>) to thumbnail file names. The number indicates where a given thumbnail appears in the sequence of thumbnails for a transcoded file. </p> <important> <p>If you specify a literal value and/or <code>{resolution}</code> but you omit <code>{count}</code>, Elastic Transcoder returns a validation error and does not create the job.</p> </important> </li> <li> <p> <b>Literal values (Optional)</b>: You can specify literal values anywhere in the <code>ThumbnailPattern</code> object. For example, you can include them as a file name prefix or as a delimiter between <code>{resolution}</code> and <code>{count}</code>. </p> </li> <li> <p> <b> <code>{resolution}</code> (Optional)</b>: If you want Elastic Transcoder to include the resolution in the file name, include <code>{resolution}</code> in the <code>ThumbnailPattern</code> object. </p> </li> </ul> <p>When creating thumbnails, Elastic Transcoder automatically saves the files in the format (.jpg or .png) that appears in the preset that you specified in the <code>PresetID</code> value of <code>CreateJobOutput</code>. Elastic Transcoder also appends the applicable file name extension.</p>
-- * ThumbnailEncryption [Encryption] <p>The encryption settings, if any, that you want Elastic Transcoder to apply to your thumbnail.</p>
-- * Composition [Composition] <p>You can create an output file that contains an excerpt from the input file. This excerpt, called a clip, can come from the beginning, middle, or end of the file. The Composition object contains settings for the clips that make up an output file. For the current release, you can only specify settings for a single clip per output file. The Composition object cannot be null.</p>
-- @return CreateJobOutput structure as a key-value pair table
function M.CreateJobOutput(args)
	assert(args, "You must provide an argument table when creating CreateJobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rotate"] = args["Rotate"],
		["Encryption"] = args["Encryption"],
		["PresetId"] = args["PresetId"],
		["Watermarks"] = args["Watermarks"],
		["SegmentDuration"] = args["SegmentDuration"],
		["Key"] = args["Key"],
		["Captions"] = args["Captions"],
		["AlbumArt"] = args["AlbumArt"],
		["ThumbnailPattern"] = args["ThumbnailPattern"],
		["ThumbnailEncryption"] = args["ThumbnailEncryption"],
		["Composition"] = args["Composition"],
	}
	asserts.AssertCreateJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReadJobResponse = { ["Job"] = true, nil }

function asserts.AssertReadJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadJobResponse to be of type 'table'")
	if struct["Job"] then asserts.AssertJob(struct["Job"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReadJobResponse[k], "ReadJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadJobResponse
-- <p>The <code>ReadJobResponse</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Job [Job] <p>A section of the response body that provides information about the job.</p>
-- @return ReadJobResponse structure as a key-value pair table
function M.ReadJobResponse(args)
	assert(args, "You must provide an argument table when creating ReadJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Job"] = args["Job"],
	}
	asserts.AssertReadJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionFormat = { ["Encryption"] = true, ["Pattern"] = true, ["Format"] = true, nil }

function asserts.AssertCaptionFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionFormat to be of type 'table'")
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["Pattern"] then asserts.AssertCaptionFormatPattern(struct["Pattern"]) end
	if struct["Format"] then asserts.AssertCaptionFormatFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionFormat[k], "CaptionFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionFormat
-- <p>The file format of the output captions. If you leave this value blank, Elastic Transcoder returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Encryption [Encryption] <p>The encryption settings, if any, that you want Elastic Transcoder to apply to your caption formats.</p>
-- * Pattern [CaptionFormatPattern] <p>The prefix for caption filenames, in the form <i>description</i>-<code>{language}</code>, where:</p> <ul> <li> <p> <i>description</i> is a description of the video.</p> </li> <li> <p> <code>{language}</code> is a literal value that Elastic Transcoder replaces with the two- or three-letter code for the language of the caption in the output file names.</p> </li> </ul> <p>If you don't include <code>{language}</code> in the file name pattern, Elastic Transcoder automatically appends "<code>{language}</code>" to the value that you specify for the description. In addition, Elastic Transcoder automatically appends the count to the end of the segment files.</p> <p>For example, suppose you're transcoding into srt format. When you enter "Sydney-{language}-sunrise", and the language of the captions is English (en), the name of the first caption file is be Sydney-en-sunrise00000.srt.</p>
-- * Format [CaptionFormatFormat] <p>The format you specify determines whether Elastic Transcoder generates an embedded or sidecar caption for this output.</p> <ul> <li> <p> <b>Valid Embedded Caption Formats:</b> </p> <ul> <li> <p> <b>for FLAC</b>: None</p> </li> <li> <p> <b>For MP3</b>: None</p> </li> <li> <p> <b>For MP4</b>: mov-text</p> </li> <li> <p> <b>For MPEG-TS</b>: None</p> </li> <li> <p> <b>For ogg</b>: None</p> </li> <li> <p> <b>For webm</b>: None</p> </li> </ul> </li> <li> <p> <b>Valid Sidecar Caption Formats:</b> Elastic Transcoder supports dfxp (first div element only), scc, srt, and webvtt. If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.</p> <ul> <li> <p> <b>For FMP4</b>: dfxp</p> </li> <li> <p> <b>Non-FMP4 outputs</b>: All sidecar types</p> </li> </ul> <p> <code>fmp4</code> captions have an extension of <code>.ismt</code> </p> </li> </ul>
-- @return CaptionFormat structure as a key-value pair table
function M.CaptionFormat(args)
	assert(args, "You must provide an argument table when creating CaptionFormat")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Encryption"] = args["Encryption"],
		["Pattern"] = args["Pattern"],
		["Format"] = args["Format"],
	}
	asserts.AssertCaptionFormat(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioParameters = { ["AudioPackingMode"] = true, ["Channels"] = true, ["Codec"] = true, ["CodecOptions"] = true, ["SampleRate"] = true, ["BitRate"] = true, nil }

function asserts.AssertAudioParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioParameters to be of type 'table'")
	if struct["AudioPackingMode"] then asserts.AssertAudioPackingMode(struct["AudioPackingMode"]) end
	if struct["Channels"] then asserts.AssertAudioChannels(struct["Channels"]) end
	if struct["Codec"] then asserts.AssertAudioCodec(struct["Codec"]) end
	if struct["CodecOptions"] then asserts.AssertAudioCodecOptions(struct["CodecOptions"]) end
	if struct["SampleRate"] then asserts.AssertAudioSampleRate(struct["SampleRate"]) end
	if struct["BitRate"] then asserts.AssertAudioBitRate(struct["BitRate"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioParameters[k], "AudioParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioParameters
-- <p>Parameters required for transcoding audio.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioPackingMode [AudioPackingMode] <p>The method of organizing audio channels and tracks. Use <code>Audio:Channels</code> to specify the number of channels in your output, and <code>Audio:AudioPackingMode</code> to specify the number of tracks and their relation to the channels. If you do not specify an <code>Audio:AudioPackingMode</code>, Elastic Transcoder uses <code>SingleTrack</code>.</p> <p>The following values are valid:</p> <p> <code>SingleTrack</code>, <code>OneChannelPerTrack</code>, and <code>OneChannelPerTrackWithMosTo8Tracks</code> </p> <p>When you specify <code>SingleTrack</code>, Elastic Transcoder creates a single track for your output. The track can have up to eight channels. Use <code>SingleTrack</code> for all non-<code>mxf</code> containers.</p> <p>The outputs of <code>SingleTrack</code> for a specific channel value and inputs are as follows:</p> <ul> <li> <p> <code>0</code> <b> channels with any input:</b> Audio omitted from the output</p> </li> <li> <p> <code>1, 2, or auto </code> <b>channels with no audio input:</b> Audio omitted from the output</p> </li> <li> <p> <code>1 </code> <b>channel with any input with audio:</b> One track with one channel, downmixed if necessary</p> </li> <li> <p> <code>2 </code> <b>channels with one track with one channel:</b> One track with two identical channels</p> </li> <li> <p> <code>2 or auto </code> <b>channels with two tracks with one channel each:</b> One track with two channels</p> </li> <li> <p> <code>2 or auto </code> <b>channels with one track with two channels:</b> One track with two channels</p> </li> <li> <p> <code>2 </code> <b>channels with one track with multiple channels:</b> One track with two channels</p> </li> <li> <p> <code>auto </code> <b>channels with one track with one channel:</b> One track with one channel</p> </li> <li> <p> <code>auto </code> <b>channels with one track with multiple channels:</b> One track with multiple channels</p> </li> </ul> <p>When you specify <code>OneChannelPerTrack</code>, Elastic Transcoder creates a new track for every channel in your output. Your output can have up to eight single-channel tracks.</p> <p>The outputs of <code>OneChannelPerTrack</code> for a specific channel value and inputs are as follows:</p> <ul> <li> <p> <code>0 </code> <b>channels with any input:</b> Audio omitted from the output</p> </li> <li> <p> <code>1, 2, or auto </code> <b>channels with no audio input:</b> Audio omitted from the output</p> </li> <li> <p> <code>1 </code> <b>channel with any input with audio:</b> One track with one channel, downmixed if necessary</p> </li> <li> <p> <code>2 </code> <b>channels with one track with one channel:</b> Two tracks with one identical channel each</p> </li> <li> <p> <code>2 or auto </code> <b>channels with two tracks with one channel each:</b> Two tracks with one channel each</p> </li> <li> <p> <code>2 or auto </code> <b>channels with one track with two channels:</b> Two tracks with one channel each</p> </li> <li> <p> <code>2 </code> <b>channels with one track with multiple channels:</b> Two tracks with one channel each</p> </li> <li> <p> <code>auto </code> <b>channels with one track with one channel:</b> One track with one channel</p> </li> <li> <p> <code>auto </code> <b>channels with one track with multiple channels:</b> Up to eight tracks with one channel each</p> </li> </ul> <p>When you specify <code>OneChannelPerTrackWithMosTo8Tracks</code>, Elastic Transcoder creates eight single-channel tracks for your output. All tracks that do not contain audio data from an input channel are MOS, or Mit Out Sound, tracks.</p> <p>The outputs of <code>OneChannelPerTrackWithMosTo8Tracks</code> for a specific channel value and inputs are as follows:</p> <ul> <li> <p> <code>0 </code> <b>channels with any input:</b> Audio omitted from the output</p> </li> <li> <p> <code>1, 2, or auto </code> <b>channels with no audio input:</b> Audio omitted from the output</p> </li> <li> <p> <code>1 </code> <b>channel with any input with audio:</b> One track with one channel, downmixed if necessary, plus six MOS tracks</p> </li> <li> <p> <code>2 </code> <b>channels with one track with one channel:</b> Two tracks with one identical channel each, plus six MOS tracks</p> </li> <li> <p> <code>2 or auto </code> <b>channels with two tracks with one channel each:</b> Two tracks with one channel each, plus six MOS tracks</p> </li> <li> <p> <code>2 or auto </code> <b>channels with one track with two channels:</b> Two tracks with one channel each, plus six MOS tracks</p> </li> <li> <p> <code>2 </code> <b>channels with one track with multiple channels:</b> Two tracks with one channel each, plus six MOS tracks</p> </li> <li> <p> <code>auto </code> <b>channels with one track with one channel:</b> One track with one channel, plus seven MOS tracks</p> </li> <li> <p> <code>auto </code> <b>channels with one track with multiple channels:</b> Up to eight tracks with one channel each, plus MOS tracks until there are eight tracks in all</p> </li> </ul>
-- * Channels [AudioChannels] <p>The number of audio channels in the output file. The following values are valid:</p> <p> <code>auto</code>, <code>0</code>, <code>1</code>, <code>2</code> </p> <p>One channel carries the information played by a single speaker. For example, a stereo track with two channels sends one channel to the left speaker, and the other channel to the right speaker. The output channels are organized into tracks. If you want Elastic Transcoder to automatically detect the number of audio channels in the input file and use that value for the output file, select <code>auto</code>.</p> <p>The output of a specific channel value and inputs are as follows:</p> <ul> <li> <p> <code>auto</code> <b> channel specified, with any input:</b> Pass through up to eight input channels.</p> </li> <li> <p> <code>0</code> <b> channels specified, with any input:</b> Audio omitted from the output.</p> </li> <li> <p> <code>1</code> <b> channel specified, with at least one input channel:</b> Mono sound.</p> </li> <li> <p> <code>2</code> <b> channels specified, with any input:</b> Two identical mono channels or stereo. For more information about tracks, see <code>Audio:AudioPackingMode.</code> </p> </li> </ul> <p> For more information about how Elastic Transcoder organizes channels and tracks, see <code>Audio:AudioPackingMode</code>.</p>
-- * Codec [AudioCodec] <p>The audio codec for the output file. Valid values include <code>aac</code>, <code>flac</code>, <code>mp2</code>, <code>mp3</code>, <code>pcm</code>, and <code>vorbis</code>.</p>
-- * CodecOptions [AudioCodecOptions] <p>If you specified <code>AAC</code> for <code>Audio:Codec</code>, this is the <code>AAC</code> compression profile to use. Valid values include:</p> <p> <code>auto</code>, <code>AAC-LC</code>, <code>HE-AAC</code>, <code>HE-AACv2</code> </p> <p>If you specify <code>auto</code>, Elastic Transcoder chooses a profile based on the bit rate of the output file.</p>
-- * SampleRate [AudioSampleRate] <p>The sample rate of the audio stream in the output file, in Hertz. Valid values include:</p> <p> <code>auto</code>, <code>22050</code>, <code>32000</code>, <code>44100</code>, <code>48000</code>, <code>96000</code> </p> <p>If you specify <code>auto</code>, Elastic Transcoder automatically detects the sample rate.</p>
-- * BitRate [AudioBitRate] <p>The bit rate of the audio stream in the output file, in kilobits/second. Enter an integer between 64 and 320, inclusive.</p>
-- @return AudioParameters structure as a key-value pair table
function M.AudioParameters(args)
	assert(args, "You must provide an argument table when creating AudioParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AudioPackingMode"] = args["AudioPackingMode"],
		["Channels"] = args["Channels"],
		["Codec"] = args["Codec"],
		["CodecOptions"] = args["CodecOptions"],
		["SampleRate"] = args["SampleRate"],
		["BitRate"] = args["BitRate"],
	}
	asserts.AssertAudioParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReadPresetRequest = { ["Id"] = true, nil }

function asserts.AssertReadPresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPresetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReadPresetRequest[k], "ReadPresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPresetRequest
-- <p>The <code>ReadPresetRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [Id] <p>The identifier of the preset for which you want to get detailed information.</p>
-- Required key: Id
-- @return ReadPresetRequest structure as a key-value pair table
function M.ReadPresetRequest(args)
	assert(args, "You must provide an argument table when creating ReadPresetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertReadPresetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobWatermark = { ["Encryption"] = true, ["InputKey"] = true, ["PresetWatermarkId"] = true, nil }

function asserts.AssertJobWatermark(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobWatermark to be of type 'table'")
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["InputKey"] then asserts.AssertWatermarkKey(struct["InputKey"]) end
	if struct["PresetWatermarkId"] then asserts.AssertPresetWatermarkId(struct["PresetWatermarkId"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobWatermark[k], "JobWatermark contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobWatermark
-- <p>Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Encryption [Encryption] <p>The encryption settings, if any, that you want Elastic Transcoder to apply to your watermarks.</p>
-- * InputKey [WatermarkKey] <p> The name of the .png or .jpg file that you want to use for the watermark. To determine which Amazon S3 bucket contains the specified file, Elastic Transcoder checks the pipeline specified by <code>Pipeline</code>; the <code>Input Bucket</code> object in that pipeline identifies the bucket.</p> <p> If the file name includes a prefix, for example, <b>logos/128x64.png</b>, include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error. </p>
-- * PresetWatermarkId [PresetWatermarkId] <p>The ID of the watermark settings that Elastic Transcoder uses to add watermarks to the video during transcoding. The settings are in the preset specified by Preset for the current output. In that preset, the value of Watermarks Id tells Elastic Transcoder which settings to use.</p>
-- @return JobWatermark structure as a key-value pair table
function M.JobWatermark(args)
	assert(args, "You must provide an argument table when creating JobWatermark")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Encryption"] = args["Encryption"],
		["InputKey"] = args["InputKey"],
		["PresetWatermarkId"] = args["PresetWatermarkId"],
	}
	asserts.AssertJobWatermark(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReadPipelineRequest = { ["Id"] = true, nil }

function asserts.AssertReadPipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPipelineRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReadPipelineRequest[k], "ReadPipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPipelineRequest
-- <p>The <code>ReadPipelineRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [Id] <p>The identifier of the pipeline to read.</p>
-- Required key: Id
-- @return ReadPipelineRequest structure as a key-value pair table
function M.ReadPipelineRequest(args)
	assert(args, "You must provide an argument table when creating ReadPipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertReadPipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestRoleRequest = { ["OutputBucket"] = true, ["Topics"] = true, ["Role"] = true, ["InputBucket"] = true, nil }

function asserts.AssertTestRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRoleRequest to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["InputBucket"], "Expected key InputBucket to exist in table")
	assert(struct["OutputBucket"], "Expected key OutputBucket to exist in table")
	assert(struct["Topics"], "Expected key Topics to exist in table")
	if struct["OutputBucket"] then asserts.AssertBucketName(struct["OutputBucket"]) end
	if struct["Topics"] then asserts.AssertSnsTopics(struct["Topics"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["InputBucket"] then asserts.AssertBucketName(struct["InputBucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestRoleRequest[k], "TestRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRoleRequest
-- <p> The <code>TestRoleRequest</code> structure. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputBucket [BucketName] <p>The Amazon S3 bucket that Elastic Transcoder writes transcoded media files to. The action attempts to read from this bucket.</p>
-- * Topics [SnsTopics] <p>The ARNs of one or more Amazon Simple Notification Service (Amazon SNS) topics that you want the action to send a test notification to.</p>
-- * Role [Role] <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to test.</p>
-- * InputBucket [BucketName] <p>The Amazon S3 bucket that contains media files to be transcoded. The action attempts to read from this bucket.</p>
-- Required key: Role
-- Required key: InputBucket
-- Required key: OutputBucket
-- Required key: Topics
-- @return TestRoleRequest structure as a key-value pair table
function M.TestRoleRequest(args)
	assert(args, "You must provide an argument table when creating TestRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputBucket"] = args["OutputBucket"],
		["Topics"] = args["Topics"],
		["Role"] = args["Role"],
		["InputBucket"] = args["InputBucket"],
	}
	asserts.AssertTestRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineStatusResponse = { ["Pipeline"] = true, nil }

function asserts.AssertUpdatePipelineStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineStatusResponse to be of type 'table'")
	if struct["Pipeline"] then asserts.AssertPipeline(struct["Pipeline"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineStatusResponse[k], "UpdatePipelineStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineStatusResponse
-- <p>When you update status for a pipeline, Elastic Transcoder returns the values that you specified in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pipeline [Pipeline] <p>A section of the response body that provides information about the pipeline.</p>
-- @return UpdatePipelineStatusResponse structure as a key-value pair table
function M.UpdatePipelineStatusResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pipeline"] = args["Pipeline"],
	}
	asserts.AssertUpdatePipelineStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobPlaylist = { ["HlsContentProtection"] = true, ["OutputKeys"] = true, ["Name"] = true, ["PlayReadyDrm"] = true, ["Format"] = true, nil }

function asserts.AssertCreateJobPlaylist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobPlaylist to be of type 'table'")
	if struct["HlsContentProtection"] then asserts.AssertHlsContentProtection(struct["HlsContentProtection"]) end
	if struct["OutputKeys"] then asserts.AssertOutputKeys(struct["OutputKeys"]) end
	if struct["Name"] then asserts.AssertFilename(struct["Name"]) end
	if struct["PlayReadyDrm"] then asserts.AssertPlayReadyDrm(struct["PlayReadyDrm"]) end
	if struct["Format"] then asserts.AssertPlaylistFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobPlaylist[k], "CreateJobPlaylist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobPlaylist
-- <p>Information about the master playlist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HlsContentProtection [HlsContentProtection] <p>The HLS content protection settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.</p>
-- * OutputKeys [OutputKeys] <p>For each output in this job that you want to include in a master playlist, the value of the <code>Outputs:Key</code> object. </p> <ul> <li> <p>If your output is not <code>HLS</code> or does not have a segment duration set, the name of the output file is a concatenation of <code>OutputKeyPrefix</code> and <code>Outputs:Key</code>:</p> <p>OutputKeyPrefix<code>Outputs:Key</code> </p> </li> <li> <p>If your output is <code>HLSv3</code> and has a segment duration set, or is not included in a playlist, Elastic Transcoder creates an output playlist file with a file extension of <code>.m3u8</code>, and a series of <code>.ts</code> files that include a five-digit sequential counter beginning with 00000:</p> <p>OutputKeyPrefix<code>Outputs:Key</code>.m3u8</p> <p>OutputKeyPrefix<code>Outputs:Key</code>00000.ts</p> </li> <li> <p>If your output is <code>HLSv4</code>, has a segment duration set, and is included in an <code>HLSv4</code> playlist, Elastic Transcoder creates an output playlist file with a file extension of <code>_v4.m3u8</code>. If the output is video, Elastic Transcoder also creates an output file with an extension of <code>_iframe.m3u8</code>:</p> <p>OutputKeyPrefix<code>Outputs:Key</code>_v4.m3u8</p> <p>OutputKeyPrefix<code>Outputs:Key</code>_iframe.m3u8</p> <p>OutputKeyPrefix<code>Outputs:Key</code>.ts</p> </li> </ul> <p>Elastic Transcoder automatically appends the relevant file extension to the file name. If you include a file extension in Output Key, the file name will have two extensions.</p> <p>If you include more than one output in a playlist, any segment duration settings, clip settings, or caption settings must be the same for all outputs in the playlist. For <code>Smooth</code> playlists, the <code>Audio:Profile</code>, <code>Video:Profile</code>, and <code>Video:FrameRate</code> to <code>Video:KeyframesMaxDist</code> ratio must be the same for all outputs.</p>
-- * Name [Filename] <p>The name that you want Elastic Transcoder to assign to the master playlist, for example, nyc-vacation.m3u8. If the name includes a <code>/</code> character, the section of the name before the last <code>/</code> must be identical for all <code>Name</code> objects. If you create more than one master playlist, the values of all <code>Name</code> objects must be unique.</p> <note> <p> Elastic Transcoder automatically appends the relevant file extension to the file name (<code>.m3u8</code> for <code>HLSv3</code> and <code>HLSv4</code> playlists, and <code>.ism</code> and <code>.ismc</code> for <code>Smooth</code> playlists). If you include a file extension in <code>Name</code>, the file name will have two extensions.</p> </note>
-- * PlayReadyDrm [PlayReadyDrm] <p>The DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.</p>
-- * Format [PlaylistFormat] <p>The format of the output playlist. Valid formats include <code>HLSv3</code>, <code>HLSv4</code>, and <code>Smooth</code>.</p>
-- @return CreateJobPlaylist structure as a key-value pair table
function M.CreateJobPlaylist(args)
	assert(args, "You must provide an argument table when creating CreateJobPlaylist")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HlsContentProtection"] = args["HlsContentProtection"],
		["OutputKeys"] = args["OutputKeys"],
		["Name"] = args["Name"],
		["PlayReadyDrm"] = args["PlayReadyDrm"],
		["Format"] = args["Format"],
	}
	asserts.AssertCreateJobPlaylist(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsContentProtection = { ["KeyMd5"] = true, ["KeyStoragePolicy"] = true, ["InitializationVector"] = true, ["LicenseAcquisitionUrl"] = true, ["Key"] = true, ["Method"] = true, nil }

function asserts.AssertHlsContentProtection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsContentProtection to be of type 'table'")
	if struct["KeyMd5"] then asserts.AssertBase64EncodedString(struct["KeyMd5"]) end
	if struct["KeyStoragePolicy"] then asserts.AssertKeyStoragePolicy(struct["KeyStoragePolicy"]) end
	if struct["InitializationVector"] then asserts.AssertZeroTo255String(struct["InitializationVector"]) end
	if struct["LicenseAcquisitionUrl"] then asserts.AssertZeroTo512String(struct["LicenseAcquisitionUrl"]) end
	if struct["Key"] then asserts.AssertBase64EncodedString(struct["Key"]) end
	if struct["Method"] then asserts.AssertHlsContentProtectionMethod(struct["Method"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsContentProtection[k], "HlsContentProtection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsContentProtection
-- <p>The HLS content protection settings, if any, that you want Elastic Transcoder to apply to your output files.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyMd5 [Base64EncodedString] <p>If Elastic Transcoder is generating your key for you, you must leave this field blank.</p> <p>The MD5 digest of the key that you want Elastic Transcoder to use to encrypt your output file, and that you want Elastic Transcoder to use as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes before being base64- encoded.</p>
-- * KeyStoragePolicy [KeyStoragePolicy] <p>Specify whether you want Elastic Transcoder to write your HLS license key to an Amazon S3 bucket. If you choose <code>WithVariantPlaylists</code>, <code>LicenseAcquisitionUrl</code> must be left blank and Elastic Transcoder writes your data key into the same bucket as the associated playlist.</p>
-- * InitializationVector [ZeroTo255String] <p>If Elastic Transcoder is generating your key for you, you must leave this field blank.</p> <p>The series of random bits created by a random bit generator, unique for every encryption operation, that you want Elastic Transcoder to use to encrypt your output files. The initialization vector must be base64-encoded, and it must be exactly 16 bytes before being base64-encoded.</p>
-- * LicenseAcquisitionUrl [ZeroTo512String] <p>The location of the license key required to decrypt your HLS playlist. The URL must be an absolute path, and is referenced in the URI attribute of the EXT-X-KEY metadata tag in the playlist file.</p>
-- * Key [Base64EncodedString] <p>If you want Elastic Transcoder to generate a key for you, leave this field blank.</p> <p>If you choose to supply your own key, you must encrypt the key by using AWS KMS. The key must be base64-encoded, and it must be one of the following bit lengths before being base64-encoded:</p> <p> <code>128</code>, <code>192</code>, or <code>256</code>. </p>
-- * Method [HlsContentProtectionMethod] <p>The content protection method for your output. The only valid value is: <code>aes-128</code>.</p> <p>This value is written into the method attribute of the <code>EXT-X-KEY</code> metadata tag in the output playlist.</p>
-- @return HlsContentProtection structure as a key-value pair table
function M.HlsContentProtection(args)
	assert(args, "You must provide an argument table when creating HlsContentProtection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyMd5"] = args["KeyMd5"],
		["KeyStoragePolicy"] = args["KeyStoragePolicy"],
		["InitializationVector"] = args["InitializationVector"],
		["LicenseAcquisitionUrl"] = args["LicenseAcquisitionUrl"],
		["Key"] = args["Key"],
		["Method"] = args["Method"],
	}
	asserts.AssertHlsContentProtection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobInput = { ["Container"] = true, ["TimeSpan"] = true, ["InputCaptions"] = true, ["Encryption"] = true, ["FrameRate"] = true, ["Key"] = true, ["AspectRatio"] = true, ["DetectedProperties"] = true, ["Resolution"] = true, ["Interlaced"] = true, nil }

function asserts.AssertJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobInput to be of type 'table'")
	if struct["Container"] then asserts.AssertJobContainer(struct["Container"]) end
	if struct["TimeSpan"] then asserts.AssertTimeSpan(struct["TimeSpan"]) end
	if struct["InputCaptions"] then asserts.AssertInputCaptions(struct["InputCaptions"]) end
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["FrameRate"] then asserts.AssertFrameRate(struct["FrameRate"]) end
	if struct["Key"] then asserts.AssertLongKey(struct["Key"]) end
	if struct["AspectRatio"] then asserts.AssertAspectRatio(struct["AspectRatio"]) end
	if struct["DetectedProperties"] then asserts.AssertDetectedProperties(struct["DetectedProperties"]) end
	if struct["Resolution"] then asserts.AssertResolution(struct["Resolution"]) end
	if struct["Interlaced"] then asserts.AssertInterlaced(struct["Interlaced"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobInput[k], "JobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobInput
-- <p>Information about the file that you're transcoding.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Container [JobContainer] <p>The container type for the input file. If you want Elastic Transcoder to automatically detect the container type of the input file, specify <code>auto</code>. If you want to specify the container type for the input file, enter one of the following values: </p> <p> <code>3gp</code>, <code>aac</code>, <code>asf</code>, <code>avi</code>, <code>divx</code>, <code>flv</code>, <code>m4a</code>, <code>mkv</code>, <code>mov</code>, <code>mp3</code>, <code>mp4</code>, <code>mpeg</code>, <code>mpeg-ps</code>, <code>mpeg-ts</code>, <code>mxf</code>, <code>ogg</code>, <code>vob</code>, <code>wav</code>, <code>webm</code> </p>
-- * TimeSpan [TimeSpan] <p>Settings for clipping an input. Each input can have different clip settings.</p>
-- * InputCaptions [InputCaptions] <p>You can configure Elastic Transcoder to transcode captions, or subtitles, from one format to another. All captions must be in UTF-8. Elastic Transcoder supports two types of captions:</p> <ul> <li> <p> <b>Embedded:</b> Embedded captions are included in the same file as the audio and video. Elastic Transcoder supports only one embedded caption per language, to a maximum of 300 embedded captions per file.</p> <p>Valid input values include: <code>CEA-608 (EIA-608</code>, first non-empty channel only), <code>CEA-708 (EIA-708</code>, first non-empty channel only), and <code>mov-text</code> </p> <p>Valid outputs include: <code>mov-text</code> </p> <p>Elastic Transcoder supports a maximum of one embedded format per output.</p> </li> <li> <p> <b>Sidecar:</b> Sidecar captions are kept in a separate metadata file from the audio and video data. Sidecar captions require a player that is capable of understanding the relationship between the video file and the sidecar file. Elastic Transcoder supports only one sidecar caption per language, to a maximum of 20 sidecar captions per file.</p> <p>Valid input values include: <code>dfxp</code> (first div element only), <code>ebu-tt</code>, <code>scc</code>, <code>smpt</code>, <code>srt</code>, <code>ttml</code> (first div element only), and <code>webvtt</code> </p> <p>Valid outputs include: <code>dfxp</code> (first div element only), <code>scc</code>, <code>srt</code>, and <code>webvtt</code>.</p> </li> </ul> <p>If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.</p> <p>Elastic Transcoder does not support OCR (Optical Character Recognition), does not accept pictures as a valid input for captions, and is not available for audio-only transcoding. Elastic Transcoder does not preserve text formatting (for example, italics) during the transcoding process.</p> <p>To remove captions or leave the captions empty, set <code>Captions</code> to null. To pass through existing captions unchanged, set the <code>MergePolicy</code> to <code>MergeRetain</code>, and pass in a null <code>CaptionSources</code> array.</p> <p>For more information on embedded files, see the Subtitles Wikipedia page.</p> <p>For more information on sidecar files, see the Extensible Metadata Platform and Sidecar file Wikipedia pages.</p>
-- * Encryption [Encryption] <p>The encryption settings, if any, that are used for decrypting your input files. If your input file is encrypted, you must specify the mode that Elastic Transcoder uses to decrypt your file.</p>
-- * FrameRate [FrameRate] <p>The frame rate of the input file. If you want Elastic Transcoder to automatically detect the frame rate of the input file, specify <code>auto</code>. If you want to specify the frame rate for the input file, enter one of the following values: </p> <p> <code>10</code>, <code>15</code>, <code>23.97</code>, <code>24</code>, <code>25</code>, <code>29.97</code>, <code>30</code>, <code>60</code> </p> <p>If you specify a value other than <code>auto</code>, Elastic Transcoder disables automatic detection of the frame rate.</p>
-- * Key [LongKey] <p> The name of the file to transcode. Elsewhere in the body of the JSON block is the the ID of the pipeline to use for processing the job. The <code>InputBucket</code> object in that pipeline tells Elastic Transcoder which Amazon S3 bucket to get the file from. </p> <p>If the file name includes a prefix, such as <code>cooking/lasagna.mpg</code>, include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error.</p>
-- * AspectRatio [AspectRatio] <p> The aspect ratio of the input file. If you want Elastic Transcoder to automatically detect the aspect ratio of the input file, specify <code>auto</code>. If you want to specify the aspect ratio for the output file, enter one of the following values: </p> <p> <code>1:1</code>, <code>4:3</code>, <code>3:2</code>, <code>16:9</code> </p> <p> If you specify a value other than <code>auto</code>, Elastic Transcoder disables automatic detection of the aspect ratio. </p>
-- * DetectedProperties [DetectedProperties] <p>The detected properties of the input file.</p>
-- * Resolution [Resolution] <p>This value must be <code>auto</code>, which causes Elastic Transcoder to automatically detect the resolution of the input file.</p>
-- * Interlaced [Interlaced] <p>Whether the input file is interlaced. If you want Elastic Transcoder to automatically detect whether the input file is interlaced, specify <code>auto</code>. If you want to specify whether the input file is interlaced, enter one of the following values:</p> <p> <code>true</code>, <code>false</code> </p> <p>If you specify a value other than <code>auto</code>, Elastic Transcoder disables automatic detection of interlacing.</p>
-- @return JobInput structure as a key-value pair table
function M.JobInput(args)
	assert(args, "You must provide an argument table when creating JobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Container"] = args["Container"],
		["TimeSpan"] = args["TimeSpan"],
		["InputCaptions"] = args["InputCaptions"],
		["Encryption"] = args["Encryption"],
		["FrameRate"] = args["FrameRate"],
		["Key"] = args["Key"],
		["AspectRatio"] = args["AspectRatio"],
		["DetectedProperties"] = args["DetectedProperties"],
		["Resolution"] = args["Resolution"],
		["Interlaced"] = args["Interlaced"],
	}
	asserts.AssertJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelinesResponse = { ["NextPageToken"] = true, ["Pipelines"] = true, nil }

function asserts.AssertListPipelinesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesResponse to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertId(struct["NextPageToken"]) end
	if struct["Pipelines"] then asserts.AssertPipelines(struct["Pipelines"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesResponse[k], "ListPipelinesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesResponse
-- <p>A list of the pipelines associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [Id] <p>A value that you use to access the second and subsequent pages of results, if any. When the pipelines fit on one page or when you've reached the last page of results, the value of <code>NextPageToken</code> is <code>null</code>.</p>
-- * Pipelines [Pipelines] <p>An array of <code>Pipeline</code> objects.</p>
-- @return ListPipelinesResponse structure as a key-value pair table
function M.ListPipelinesResponse(args)
	assert(args, "You must provide an argument table when creating ListPipelinesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Pipelines"] = args["Pipelines"],
	}
	asserts.AssertListPipelinesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobRequest = { ["Id"] = true, nil }

function asserts.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelJobRequest[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
-- <p>The <code>CancelJobRequest</code> structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [Id] <p>The identifier of the job that you want to cancel.</p> <p>To get a list of the jobs (including their <code>jobId</code>) that have a status of <code>Submitted</code>, use the <a>ListJobsByStatus</a> API action.</p>
-- Required key: Id
-- @return CancelJobRequest structure as a key-value pair table
function M.CancelJobRequest(args)
	assert(args, "You must provide an argument table when creating CancelJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertCancelJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertFilename(str)
	assert(str)
	assert(type(str) == "string", "Expected Filename to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Filename(str)
	asserts.AssertFilename(str)
	return str
end

function asserts.AssertThumbnailResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected ThumbnailResolution to be of type 'string'")
end

--  
function M.ThumbnailResolution(str)
	asserts.AssertThumbnailResolution(str)
	return str
end

function asserts.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
end

--  
function M.Role(str)
	asserts.AssertRole(str)
	return str
end

function asserts.AssertAscending(str)
	assert(str)
	assert(type(str) == "string", "Expected Ascending to be of type 'string'")
end

--  
function M.Ascending(str)
	asserts.AssertAscending(str)
	return str
end

function asserts.AssertFloatString(str)
	assert(str)
	assert(type(str) == "string", "Expected FloatString to be of type 'string'")
end

--  
function M.FloatString(str)
	asserts.AssertFloatString(str)
	return str
end

function asserts.AssertDigits(str)
	assert(str)
	assert(type(str) == "string", "Expected Digits to be of type 'string'")
end

--  
function M.Digits(str)
	asserts.AssertDigits(str)
	return str
end

function asserts.AssertAudioCodecProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioCodecProfile to be of type 'string'")
end

--  
function M.AudioCodecProfile(str)
	asserts.AssertAudioCodecProfile(str)
	return str
end

function asserts.AssertWatermarkKey(str)
	assert(str)
	assert(type(str) == "string", "Expected WatermarkKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WatermarkKey(str)
	asserts.AssertWatermarkKey(str)
	return str
end

function asserts.AssertAudioSigned(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioSigned to be of type 'string'")
end

--  
function M.AudioSigned(str)
	asserts.AssertAudioSigned(str)
	return str
end

function asserts.AssertCaptionFormatPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionFormatPattern to be of type 'string'")
end

--  
function M.CaptionFormatPattern(str)
	asserts.AssertCaptionFormatPattern(str)
	return str
end

function asserts.AssertPresetContainer(str)
	assert(str)
	assert(type(str) == "string", "Expected PresetContainer to be of type 'string'")
end

--  
function M.PresetContainer(str)
	asserts.AssertPresetContainer(str)
	return str
end

function asserts.AssertKeyIdGuid(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyIdGuid to be of type 'string'")
end

--  
function M.KeyIdGuid(str)
	asserts.AssertKeyIdGuid(str)
	return str
end

function asserts.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
end

--  
function M.BucketName(str)
	asserts.AssertBucketName(str)
	return str
end

function asserts.AssertPipelineStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineStatus to be of type 'string'")
end

--  
function M.PipelineStatus(str)
	asserts.AssertPipelineStatus(str)
	return str
end

function asserts.AssertInterlaced(str)
	assert(str)
	assert(type(str) == "string", "Expected Interlaced to be of type 'string'")
end

--  
function M.Interlaced(str)
	asserts.AssertInterlaced(str)
	return str
end

function asserts.AssertPlayReadyDrmFormatString(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayReadyDrmFormatString to be of type 'string'")
end

--  
function M.PlayReadyDrmFormatString(str)
	asserts.AssertPlayReadyDrmFormatString(str)
	return str
end

function asserts.AssertVerticalAlign(str)
	assert(str)
	assert(type(str) == "string", "Expected VerticalAlign to be of type 'string'")
end

--  
function M.VerticalAlign(str)
	asserts.AssertVerticalAlign(str)
	return str
end

function asserts.AssertEncryptionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionMode to be of type 'string'")
end

--  
function M.EncryptionMode(str)
	asserts.AssertEncryptionMode(str)
	return str
end

function asserts.AssertFixedGOP(str)
	assert(str)
	assert(type(str) == "string", "Expected FixedGOP to be of type 'string'")
end

--  
function M.FixedGOP(str)
	asserts.AssertFixedGOP(str)
	return str
end

function asserts.AssertAspectRatio(str)
	assert(str)
	assert(type(str) == "string", "Expected AspectRatio to be of type 'string'")
end

--  
function M.AspectRatio(str)
	asserts.AssertAspectRatio(str)
	return str
end

function asserts.AssertOpacity(str)
	assert(str)
	assert(type(str) == "string", "Expected Opacity to be of type 'string'")
end

--  
function M.Opacity(str)
	asserts.AssertOpacity(str)
	return str
end

function asserts.AssertAudioBitRate(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioBitRate to be of type 'string'")
end

--  
function M.AudioBitRate(str)
	asserts.AssertAudioBitRate(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertAudioPackingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioPackingMode to be of type 'string'")
end

--  
function M.AudioPackingMode(str)
	asserts.AssertAudioPackingMode(str)
	return str
end

function asserts.AssertPaddingPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected PaddingPolicy to be of type 'string'")
end

--  
function M.PaddingPolicy(str)
	asserts.AssertPaddingPolicy(str)
	return str
end

function asserts.AssertKeyStoragePolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyStoragePolicy to be of type 'string'")
end

--  
function M.KeyStoragePolicy(str)
	asserts.AssertKeyStoragePolicy(str)
	return str
end

function asserts.AssertPresetType(str)
	assert(str)
	assert(type(str) == "string", "Expected PresetType to be of type 'string'")
end

--  
function M.PresetType(str)
	asserts.AssertPresetType(str)
	return str
end

function asserts.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Key(str)
	asserts.AssertKey(str)
	return str
end

function asserts.AssertJpgOrPng(str)
	assert(str)
	assert(type(str) == "string", "Expected JpgOrPng to be of type 'string'")
end

--  
function M.JpgOrPng(str)
	asserts.AssertJpgOrPng(str)
	return str
end

function asserts.AssertTarget(str)
	assert(str)
	assert(type(str) == "string", "Expected Target to be of type 'string'")
end

--  
function M.Target(str)
	asserts.AssertTarget(str)
	return str
end

function asserts.AssertVideoBitRate(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoBitRate to be of type 'string'")
end

--  
function M.VideoBitRate(str)
	asserts.AssertVideoBitRate(str)
	return str
end

function asserts.AssertHlsContentProtectionMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsContentProtectionMethod to be of type 'string'")
end

--  
function M.HlsContentProtectionMethod(str)
	asserts.AssertHlsContentProtectionMethod(str)
	return str
end

function asserts.AssertGranteeType(str)
	assert(str)
	assert(type(str) == "string", "Expected GranteeType to be of type 'string'")
end

--  
function M.GranteeType(str)
	asserts.AssertGranteeType(str)
	return str
end

function asserts.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

--  
function M.JobStatus(str)
	asserts.AssertJobStatus(str)
	return str
end

function asserts.AssertPlaylistFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected PlaylistFormat to be of type 'string'")
end

--  
function M.PlaylistFormat(str)
	asserts.AssertPlaylistFormat(str)
	return str
end

function asserts.AssertMaxFrameRate(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxFrameRate to be of type 'string'")
end

--  
function M.MaxFrameRate(str)
	asserts.AssertMaxFrameRate(str)
	return str
end

function asserts.AssertAudioBitOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioBitOrder to be of type 'string'")
end

--  
function M.AudioBitOrder(str)
	asserts.AssertAudioBitOrder(str)
	return str
end

function asserts.AssertAudioBitDepth(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioBitDepth to be of type 'string'")
end

--  
function M.AudioBitDepth(str)
	asserts.AssertAudioBitDepth(str)
	return str
end

function asserts.AssertJobContainer(str)
	assert(str)
	assert(type(str) == "string", "Expected JobContainer to be of type 'string'")
end

--  
function M.JobContainer(str)
	asserts.AssertJobContainer(str)
	return str
end

function asserts.AssertThumbnailPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected ThumbnailPattern to be of type 'string'")
end

--  
function M.ThumbnailPattern(str)
	asserts.AssertThumbnailPattern(str)
	return str
end

function asserts.AssertVideoCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoCodec to be of type 'string'")
end

--  
function M.VideoCodec(str)
	asserts.AssertVideoCodec(str)
	return str
end

function asserts.AssertStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClass to be of type 'string'")
end

--  
function M.StorageClass(str)
	asserts.AssertStorageClass(str)
	return str
end

function asserts.AssertPresetWatermarkId(str)
	assert(str)
	assert(type(str) == "string", "Expected PresetWatermarkId to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PresetWatermarkId(str)
	asserts.AssertPresetWatermarkId(str)
	return str
end

function asserts.AssertCaptionFormatFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionFormatFormat to be of type 'string'")
end

--  
function M.CaptionFormatFormat(str)
	asserts.AssertCaptionFormatFormat(str)
	return str
end

function asserts.AssertCodecOption(str)
	assert(str)
	assert(type(str) == "string", "Expected CodecOption to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CodecOption(str)
	asserts.AssertCodecOption(str)
	return str
end

function asserts.AssertNonEmptyBase64EncodedString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyBase64EncodedString to be of type 'string'")
end

--  
function M.NonEmptyBase64EncodedString(str)
	asserts.AssertNonEmptyBase64EncodedString(str)
	return str
end

function asserts.AssertSnsTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopic to be of type 'string'")
end

--  
function M.SnsTopic(str)
	asserts.AssertSnsTopic(str)
	return str
end

function asserts.AssertAudioChannels(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioChannels to be of type 'string'")
end

--  
function M.AudioChannels(str)
	asserts.AssertAudioChannels(str)
	return str
end

function asserts.AssertSizingPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected SizingPolicy to be of type 'string'")
end

--  
function M.SizingPolicy(str)
	asserts.AssertSizingPolicy(str)
	return str
end

function asserts.AssertWatermarkSizingPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected WatermarkSizingPolicy to be of type 'string'")
end

--  
function M.WatermarkSizingPolicy(str)
	asserts.AssertWatermarkSizingPolicy(str)
	return str
end

function asserts.AssertSuccess(str)
	assert(str)
	assert(type(str) == "string", "Expected Success to be of type 'string'")
end

--  
function M.Success(str)
	asserts.AssertSuccess(str)
	return str
end

function asserts.AssertBase64EncodedString(str)
	assert(str)
	assert(type(str) == "string", "Expected Base64EncodedString to be of type 'string'")
end

--  
function M.Base64EncodedString(str)
	asserts.AssertBase64EncodedString(str)
	return str
end

function asserts.AssertTime(str)
	assert(str)
	assert(type(str) == "string", "Expected Time to be of type 'string'")
end

--  
function M.Time(str)
	asserts.AssertTime(str)
	return str
end

function asserts.AssertResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected Resolution to be of type 'string'")
end

--  
function M.Resolution(str)
	asserts.AssertResolution(str)
	return str
end

function asserts.AssertAccessControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessControl to be of type 'string'")
end

--  
function M.AccessControl(str)
	asserts.AssertAccessControl(str)
	return str
end

function asserts.AssertZeroTo512String(str)
	assert(str)
	assert(type(str) == "string", "Expected ZeroTo512String to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.ZeroTo512String(str)
	asserts.AssertZeroTo512String(str)
	return str
end

function asserts.AssertGrantee(str)
	assert(str)
	assert(type(str) == "string", "Expected Grantee to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Grantee(str)
	asserts.AssertGrantee(str)
	return str
end

function asserts.AssertKeyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyArn to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.KeyArn(str)
	asserts.AssertKeyArn(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertCaptionMergePolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionMergePolicy to be of type 'string'")
end

--  
function M.CaptionMergePolicy(str)
	asserts.AssertCaptionMergePolicy(str)
	return str
end

function asserts.AssertFrameRate(str)
	assert(str)
	assert(type(str) == "string", "Expected FrameRate to be of type 'string'")
end

--  
function M.FrameRate(str)
	asserts.AssertFrameRate(str)
	return str
end

function asserts.AssertTimeOffset(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeOffset to be of type 'string'")
end

--  
function M.TimeOffset(str)
	asserts.AssertTimeOffset(str)
	return str
end

function asserts.AssertZeroTo255String(str)
	assert(str)
	assert(type(str) == "string", "Expected ZeroTo255String to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ZeroTo255String(str)
	asserts.AssertZeroTo255String(str)
	return str
end

function asserts.AssertRotate(str)
	assert(str)
	assert(type(str) == "string", "Expected Rotate to be of type 'string'")
end

--  
function M.Rotate(str)
	asserts.AssertRotate(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertMergePolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected MergePolicy to be of type 'string'")
end

--  
function M.MergePolicy(str)
	asserts.AssertMergePolicy(str)
	return str
end

function asserts.AssertKeyframesMaxDist(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyframesMaxDist to be of type 'string'")
end

--  
function M.KeyframesMaxDist(str)
	asserts.AssertKeyframesMaxDist(str)
	return str
end

function asserts.AssertHorizontalAlign(str)
	assert(str)
	assert(type(str) == "string", "Expected HorizontalAlign to be of type 'string'")
end

--  
function M.HorizontalAlign(str)
	asserts.AssertHorizontalAlign(str)
	return str
end

function asserts.AssertPixelsOrPercent(str)
	assert(str)
	assert(type(str) == "string", "Expected PixelsOrPercent to be of type 'string'")
end

--  
function M.PixelsOrPercent(str)
	asserts.AssertPixelsOrPercent(str)
	return str
end

function asserts.AssertAudioCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioCodec to be of type 'string'")
end

--  
function M.AudioCodec(str)
	asserts.AssertAudioCodec(str)
	return str
end

function asserts.AssertOneTo512String(str)
	assert(str)
	assert(type(str) == "string", "Expected OneTo512String to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OneTo512String(str)
	asserts.AssertOneTo512String(str)
	return str
end

function asserts.AssertAudioSampleRate(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioSampleRate to be of type 'string'")
end

--  
function M.AudioSampleRate(str)
	asserts.AssertAudioSampleRate(str)
	return str
end

function asserts.AssertLongKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LongKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LongKey(str)
	asserts.AssertLongKey(str)
	return str
end

function asserts.AssertDigitsOrAuto(str)
	assert(str)
	assert(type(str) == "string", "Expected DigitsOrAuto to be of type 'string'")
end

--  
function M.DigitsOrAuto(str)
	asserts.AssertDigitsOrAuto(str)
	return str
end

function asserts.AssertId(str)
	assert(str)
	assert(type(str) == "string", "Expected Id to be of type 'string'")
end

--  
function M.Id(str)
	asserts.AssertId(str)
	return str
end

function asserts.AssertNullableLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NullableLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NullableLong(long)
	asserts.AssertNullableLong(long)
	return long
end

function asserts.AssertNullableInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NullableInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NullableInteger(integer)
	asserts.AssertNullableInteger(integer)
	return integer
end

function asserts.AssertUserMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected UserMetadata to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.UserMetadata(map)
	asserts.AssertUserMetadata(map)
	return map
end

function asserts.AssertCodecOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected CodecOptions to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertCodecOption(k)
		asserts.AssertCodecOption(v)
	end
end

function M.CodecOptions(map)
	asserts.AssertCodecOptions(map)
	return map
end

function asserts.AssertExceptionMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected ExceptionMessages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ExceptionMessages(list)
	asserts.AssertExceptionMessages(list)
	return list
end

function asserts.AssertOutputKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputKeys to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		asserts.AssertKey(v)
	end
end

--  
-- List of Key objects
function M.OutputKeys(list)
	asserts.AssertOutputKeys(list)
	return list
end

function asserts.AssertJobs(list)
	assert(list)
	assert(type(list) == "table", "Expected Jobs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.Jobs(list)
	asserts.AssertJobs(list)
	return list
end

function asserts.AssertWarnings(list)
	assert(list)
	assert(type(list) == "table", "Expected Warnings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWarning(v)
	end
end

--  
-- List of Warning objects
function M.Warnings(list)
	asserts.AssertWarnings(list)
	return list
end

function asserts.AssertCaptionFormats(list)
	assert(list)
	assert(type(list) == "table", "Expected CaptionFormats to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		asserts.AssertCaptionFormat(v)
	end
end

--  
-- List of CaptionFormat objects
function M.CaptionFormats(list)
	asserts.AssertCaptionFormats(list)
	return list
end

function asserts.AssertPlaylists(list)
	assert(list)
	assert(type(list) == "table", "Expected Playlists to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlaylist(v)
	end
end

--  
-- List of Playlist objects
function M.Playlists(list)
	asserts.AssertPlaylists(list)
	return list
end

function asserts.AssertJobInputs(list)
	assert(list)
	assert(type(list) == "table", "Expected JobInputs to be of type ''table")
	assert(#list <= 200, "Expected list to be contain 200 elements")
	for _,v in ipairs(list) do
		asserts.AssertJobInput(v)
	end
end

--  
-- List of JobInput objects
function M.JobInputs(list)
	asserts.AssertJobInputs(list)
	return list
end

function asserts.AssertCreateJobPlaylists(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateJobPlaylists to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		asserts.AssertCreateJobPlaylist(v)
	end
end

--  
-- List of CreateJobPlaylist objects
function M.CreateJobPlaylists(list)
	asserts.AssertCreateJobPlaylists(list)
	return list
end

function asserts.AssertCreateJobOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateJobOutputs to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		asserts.AssertCreateJobOutput(v)
	end
end

--  
-- List of CreateJobOutput objects
function M.CreateJobOutputs(list)
	asserts.AssertCreateJobOutputs(list)
	return list
end

function asserts.AssertJobOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected JobOutputs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobOutput(v)
	end
end

--  
-- List of JobOutput objects
function M.JobOutputs(list)
	asserts.AssertJobOutputs(list)
	return list
end

function asserts.AssertPermissions(list)
	assert(list)
	assert(type(list) == "table", "Expected Permissions to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		asserts.AssertPermission(v)
	end
end

--  
-- List of Permission objects
function M.Permissions(list)
	asserts.AssertPermissions(list)
	return list
end

function asserts.AssertCaptionSources(list)
	assert(list)
	assert(type(list) == "table", "Expected CaptionSources to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertCaptionSource(v)
	end
end

--  
-- List of CaptionSource objects
function M.CaptionSources(list)
	asserts.AssertCaptionSources(list)
	return list
end

function asserts.AssertPresetWatermarks(list)
	assert(list)
	assert(type(list) == "table", "Expected PresetWatermarks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPresetWatermark(v)
	end
end

--  
-- List of PresetWatermark objects
function M.PresetWatermarks(list)
	asserts.AssertPresetWatermarks(list)
	return list
end

function asserts.AssertSnsTopics(list)
	assert(list)
	assert(type(list) == "table", "Expected SnsTopics to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		asserts.AssertSnsTopic(v)
	end
end

--  
-- List of SnsTopic objects
function M.SnsTopics(list)
	asserts.AssertSnsTopics(list)
	return list
end

function asserts.AssertArtworks(list)
	assert(list)
	assert(type(list) == "table", "Expected Artworks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertArtwork(v)
	end
end

--  
-- List of Artwork objects
function M.Artworks(list)
	asserts.AssertArtworks(list)
	return list
end

function asserts.AssertComposition(list)
	assert(list)
	assert(type(list) == "table", "Expected Composition to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClip(v)
	end
end

--  
-- List of Clip objects
function M.Composition(list)
	asserts.AssertComposition(list)
	return list
end

function asserts.AssertPresets(list)
	assert(list)
	assert(type(list) == "table", "Expected Presets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPreset(v)
	end
end

--  
-- List of Preset objects
function M.Presets(list)
	asserts.AssertPresets(list)
	return list
end

function asserts.AssertJobWatermarks(list)
	assert(list)
	assert(type(list) == "table", "Expected JobWatermarks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobWatermark(v)
	end
end

--  
-- List of JobWatermark objects
function M.JobWatermarks(list)
	asserts.AssertJobWatermarks(list)
	return list
end

function asserts.AssertPipelines(list)
	assert(list)
	assert(type(list) == "table", "Expected Pipelines to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPipeline(v)
	end
end

--  
-- List of Pipeline objects
function M.Pipelines(list)
	asserts.AssertPipelines(list)
	return list
end

function asserts.AssertAccessControls(list)
	assert(list)
	assert(type(list) == "table", "Expected AccessControls to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		asserts.AssertAccessControl(v)
	end
end

--  
-- List of AccessControl objects
function M.AccessControls(list)
	asserts.AssertAccessControls(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "elastictranscoder.amazonaws.com"
		end
	end
	local ss = { "elastictranscoder" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	assert(config.region, "You must provide a region in the config table")

	settings.api_version = M.metadata.api_version
	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ReadPreset asynchronously, invoking a callback when done
-- @param ReadPresetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReadPresetAsync(ReadPresetRequest, cb)
	assert(ReadPresetRequest, "You must provide a ReadPresetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ReadPreset",
	}
	for header,value in pairs(ReadPresetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/presets/{Id}", ReadPresetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReadPreset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReadPresetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ReadPresetSync(ReadPresetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReadPresetAsync(ReadPresetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJob asynchronously, invoking a callback when done
-- @param CreateJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateJobAsync(CreateJobRequest, cb)
	assert(CreateJobRequest, "You must provide a CreateJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateJob",
	}
	for header,value in pairs(CreateJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/jobs", CreateJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateJobSync(CreateJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobAsync(CreateJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePreset asynchronously, invoking a callback when done
-- @param CreatePresetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePresetAsync(CreatePresetRequest, cb)
	assert(CreatePresetRequest, "You must provide a CreatePresetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePreset",
	}
	for header,value in pairs(CreatePresetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/presets", CreatePresetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePreset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePresetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePresetSync(CreatePresetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePresetAsync(CreatePresetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePipelineNotifications asynchronously, invoking a callback when done
-- @param UpdatePipelineNotificationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePipelineNotificationsAsync(UpdatePipelineNotificationsRequest, cb)
	assert(UpdatePipelineNotificationsRequest, "You must provide a UpdatePipelineNotificationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdatePipelineNotifications",
	}
	for header,value in pairs(UpdatePipelineNotificationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/pipelines/{Id}/notifications", UpdatePipelineNotificationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePipelineNotifications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePipelineNotificationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePipelineNotificationsSync(UpdatePipelineNotificationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePipelineNotificationsAsync(UpdatePipelineNotificationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPipelines asynchronously, invoking a callback when done
-- @param ListPipelinesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPipelinesAsync(ListPipelinesRequest, cb)
	assert(ListPipelinesRequest, "You must provide a ListPipelinesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPipelines",
	}
	for header,value in pairs(ListPipelinesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/pipelines", ListPipelinesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPipelines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPipelinesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPipelinesSync(ListPipelinesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPipelinesAsync(ListPipelinesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePipeline asynchronously, invoking a callback when done
-- @param DeletePipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePipelineAsync(DeletePipelineRequest, cb)
	assert(DeletePipelineRequest, "You must provide a DeletePipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePipeline",
	}
	for header,value in pairs(DeletePipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/pipelines/{Id}", DeletePipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePipelineSync(DeletePipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePipelineAsync(DeletePipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReadJob asynchronously, invoking a callback when done
-- @param ReadJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReadJobAsync(ReadJobRequest, cb)
	assert(ReadJobRequest, "You must provide a ReadJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ReadJob",
	}
	for header,value in pairs(ReadJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/jobs/{Id}", ReadJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReadJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReadJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ReadJobSync(ReadJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReadJobAsync(ReadJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePipeline asynchronously, invoking a callback when done
-- @param UpdatePipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePipelineAsync(UpdatePipelineRequest, cb)
	assert(UpdatePipelineRequest, "You must provide a UpdatePipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdatePipeline",
	}
	for header,value in pairs(UpdatePipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/pipelines/{Id}", UpdatePipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePipelineSync(UpdatePipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePipelineAsync(UpdatePipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPresets asynchronously, invoking a callback when done
-- @param ListPresetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPresetsAsync(ListPresetsRequest, cb)
	assert(ListPresetsRequest, "You must provide a ListPresetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPresets",
	}
	for header,value in pairs(ListPresetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/presets", ListPresetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPresets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPresetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPresetsSync(ListPresetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPresetsAsync(ListPresetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePreset asynchronously, invoking a callback when done
-- @param DeletePresetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePresetAsync(DeletePresetRequest, cb)
	assert(DeletePresetRequest, "You must provide a DeletePresetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePreset",
	}
	for header,value in pairs(DeletePresetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/presets/{Id}", DeletePresetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePreset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePresetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePresetSync(DeletePresetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePresetAsync(DeletePresetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListJobsByPipeline asynchronously, invoking a callback when done
-- @param ListJobsByPipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsByPipelineAsync(ListJobsByPipelineRequest, cb)
	assert(ListJobsByPipelineRequest, "You must provide a ListJobsByPipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListJobsByPipeline",
	}
	for header,value in pairs(ListJobsByPipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/jobsByPipeline/{PipelineId}", ListJobsByPipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobsByPipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsByPipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsByPipelineSync(ListJobsByPipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsByPipelineAsync(ListJobsByPipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelJob asynchronously, invoking a callback when done
-- @param CancelJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelJobAsync(CancelJobRequest, cb)
	assert(CancelJobRequest, "You must provide a CancelJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelJob",
	}
	for header,value in pairs(CancelJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/jobs/{Id}", CancelJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelJobSync(CancelJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelJobAsync(CancelJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePipelineStatus asynchronously, invoking a callback when done
-- @param UpdatePipelineStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePipelineStatusAsync(UpdatePipelineStatusRequest, cb)
	assert(UpdatePipelineStatusRequest, "You must provide a UpdatePipelineStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdatePipelineStatus",
	}
	for header,value in pairs(UpdatePipelineStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/pipelines/{Id}/status", UpdatePipelineStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePipelineStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePipelineStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePipelineStatusSync(UpdatePipelineStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePipelineStatusAsync(UpdatePipelineStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePipeline asynchronously, invoking a callback when done
-- @param CreatePipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePipelineAsync(CreatePipelineRequest, cb)
	assert(CreatePipelineRequest, "You must provide a CreatePipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePipeline",
	}
	for header,value in pairs(CreatePipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/pipelines", CreatePipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePipelineSync(CreatePipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePipelineAsync(CreatePipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReadPipeline asynchronously, invoking a callback when done
-- @param ReadPipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReadPipelineAsync(ReadPipelineRequest, cb)
	assert(ReadPipelineRequest, "You must provide a ReadPipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ReadPipeline",
	}
	for header,value in pairs(ReadPipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/pipelines/{Id}", ReadPipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReadPipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReadPipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ReadPipelineSync(ReadPipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReadPipelineAsync(ReadPipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListJobsByStatus asynchronously, invoking a callback when done
-- @param ListJobsByStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsByStatusAsync(ListJobsByStatusRequest, cb)
	assert(ListJobsByStatusRequest, "You must provide a ListJobsByStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListJobsByStatus",
	}
	for header,value in pairs(ListJobsByStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2012-09-25/jobsByStatus/{Status}", ListJobsByStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobsByStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsByStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsByStatusSync(ListJobsByStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsByStatusAsync(ListJobsByStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
