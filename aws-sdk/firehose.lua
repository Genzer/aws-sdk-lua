--- GENERATED CODE - DO NOT MODIFY
-- Amazon Kinesis Firehose (firehose-2015-08-04)

local M = {}

M.metadata = {
	api_version = "2015-08-04",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "firehose",
	service_abbreviation = "Firehose",
	service_full_name = "Amazon Kinesis Firehose",
	signature_version = "v4",
	target_prefix = "Firehose_20150804",
	timestamp_format = "",
	global_endpoint = "",
	uid = "firehose-2015-08-04",
}

local keys = {}
local asserts = {}

keys.ServiceUnavailableException = { ["message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>The service is unavailable, back off and retry the operation. If you continue to see the exception, throughput limits for the delivery stream may have been exceeded. For more information about limits and how to request an increase, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Firehose Limits</a>.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ServiceUnavailableException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServiceUnavailableException(t)
	return t
end

keys.UpdateDestinationOutput = { nil }

function asserts.AssertUpdateDestinationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDestinationOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDestinationOutput[k], "UpdateDestinationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDestinationOutput
--  
function M.UpdateDestinationOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDestinationOutput")
	local t = { 
	}
	asserts.AssertUpdateDestinationOutput(t)
	return t
end

keys.KMSEncryptionConfig = { ["AWSKMSKeyARN"] = true, nil }

function asserts.AssertKMSEncryptionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSEncryptionConfig to be of type 'table'")
	assert(struct["AWSKMSKeyARN"], "Expected key AWSKMSKeyARN to exist in table")
	if struct["AWSKMSKeyARN"] then asserts.AssertAWSKMSKeyARN(struct["AWSKMSKeyARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSEncryptionConfig[k], "KMSEncryptionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSEncryptionConfig
-- <p>Describes an encryption key for a destination in Amazon S3.</p>
-- @param _AWSKMSKeyARN [AWSKMSKeyARN] <p>The ARN of the encryption key. Must belong to the same region as the destination Amazon S3 bucket.</p>
-- Required parameter: AWSKMSKeyARN
function M.KMSEncryptionConfig(_AWSKMSKeyARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSEncryptionConfig")
	local t = { 
		["AWSKMSKeyARN"] = _AWSKMSKeyARN,
	}
	asserts.AssertKMSEncryptionConfig(t)
	return t
end

keys.PutRecordBatchOutput = { ["FailedPutCount"] = true, ["RequestResponses"] = true, nil }

function asserts.AssertPutRecordBatchOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchOutput to be of type 'table'")
	assert(struct["FailedPutCount"], "Expected key FailedPutCount to exist in table")
	assert(struct["RequestResponses"], "Expected key RequestResponses to exist in table")
	if struct["FailedPutCount"] then asserts.AssertNonNegativeIntegerObject(struct["FailedPutCount"]) end
	if struct["RequestResponses"] then asserts.AssertPutRecordBatchResponseEntryList(struct["RequestResponses"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordBatchOutput[k], "PutRecordBatchOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchOutput
--  
-- @param _FailedPutCount [NonNegativeIntegerObject] <p>The number of records that might have failed processing.</p>
-- @param _RequestResponses [PutRecordBatchResponseEntryList] <p>The results array. For each record, the index of the response element is the same as the index used in the request array.</p>
-- Required parameter: FailedPutCount
-- Required parameter: RequestResponses
function M.PutRecordBatchOutput(_FailedPutCount, _RequestResponses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordBatchOutput")
	local t = { 
		["FailedPutCount"] = _FailedPutCount,
		["RequestResponses"] = _RequestResponses,
	}
	asserts.AssertPutRecordBatchOutput(t)
	return t
end

keys.PutRecordInput = { ["Record"] = true, ["DeliveryStreamName"] = true, nil }

function asserts.AssertPutRecordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["Record"], "Expected key Record to exist in table")
	if struct["Record"] then asserts.AssertRecord(struct["Record"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordInput[k], "PutRecordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordInput
--  
-- @param _Record [Record] <p>The record.</p>
-- @param _DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- Required parameter: DeliveryStreamName
-- Required parameter: Record
function M.PutRecordInput(_Record, _DeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordInput")
	local t = { 
		["Record"] = _Record,
		["DeliveryStreamName"] = _DeliveryStreamName,
	}
	asserts.AssertPutRecordInput(t)
	return t
end

keys.DeliveryStreamDescription = { ["HasMoreDestinations"] = true, ["LastUpdateTimestamp"] = true, ["VersionId"] = true, ["CreateTimestamp"] = true, ["DeliveryStreamARN"] = true, ["DeliveryStreamStatus"] = true, ["DeliveryStreamName"] = true, ["Destinations"] = true, nil }

function asserts.AssertDeliveryStreamDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliveryStreamDescription to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["DeliveryStreamARN"], "Expected key DeliveryStreamARN to exist in table")
	assert(struct["DeliveryStreamStatus"], "Expected key DeliveryStreamStatus to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	assert(struct["Destinations"], "Expected key Destinations to exist in table")
	assert(struct["HasMoreDestinations"], "Expected key HasMoreDestinations to exist in table")
	if struct["HasMoreDestinations"] then asserts.AssertBooleanObject(struct["HasMoreDestinations"]) end
	if struct["LastUpdateTimestamp"] then asserts.AssertTimestamp(struct["LastUpdateTimestamp"]) end
	if struct["VersionId"] then asserts.AssertDeliveryStreamVersionId(struct["VersionId"]) end
	if struct["CreateTimestamp"] then asserts.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["DeliveryStreamARN"] then asserts.AssertDeliveryStreamARN(struct["DeliveryStreamARN"]) end
	if struct["DeliveryStreamStatus"] then asserts.AssertDeliveryStreamStatus(struct["DeliveryStreamStatus"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Destinations"] then asserts.AssertDestinationDescriptionList(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeliveryStreamDescription[k], "DeliveryStreamDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliveryStreamDescription
-- <p>Contains information about a delivery stream.</p>
-- @param _HasMoreDestinations [BooleanObject] <p>Indicates whether there are more destinations available to list.</p>
-- @param _LastUpdateTimestamp [Timestamp] <p>The date and time that the delivery stream was last updated.</p>
-- @param _VersionId [DeliveryStreamVersionId] <p>Each time the destination is updated for a delivery stream, the version ID is changed, and the current version ID is required when updating the destination. This is so that the service knows it is applying the changes to the correct version of the delivery stream.</p>
-- @param _CreateTimestamp [Timestamp] <p>The date and time that the delivery stream was created.</p>
-- @param _DeliveryStreamARN [DeliveryStreamARN] <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
-- @param _DeliveryStreamStatus [DeliveryStreamStatus] <p>The status of the delivery stream.</p>
-- @param _DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- @param _Destinations [DestinationDescriptionList] <p>The destinations.</p>
-- Required parameter: DeliveryStreamName
-- Required parameter: DeliveryStreamARN
-- Required parameter: DeliveryStreamStatus
-- Required parameter: VersionId
-- Required parameter: Destinations
-- Required parameter: HasMoreDestinations
function M.DeliveryStreamDescription(_HasMoreDestinations, _LastUpdateTimestamp, _VersionId, _CreateTimestamp, _DeliveryStreamARN, _DeliveryStreamStatus, _DeliveryStreamName, _Destinations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliveryStreamDescription")
	local t = { 
		["HasMoreDestinations"] = _HasMoreDestinations,
		["LastUpdateTimestamp"] = _LastUpdateTimestamp,
		["VersionId"] = _VersionId,
		["CreateTimestamp"] = _CreateTimestamp,
		["DeliveryStreamARN"] = _DeliveryStreamARN,
		["DeliveryStreamStatus"] = _DeliveryStreamStatus,
		["DeliveryStreamName"] = _DeliveryStreamName,
		["Destinations"] = _Destinations,
	}
	asserts.AssertDeliveryStreamDescription(t)
	return t
end

keys.S3DestinationDescription = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3DestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["BufferingHints"], "Expected key BufferingHints to exist in table")
	assert(struct["CompressionFormat"], "Expected key CompressionFormat to exist in table")
	assert(struct["EncryptionConfiguration"], "Expected key EncryptionConfiguration to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DestinationDescription[k], "S3DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationDescription
-- <p>Describes a destination in Amazon S3.</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Firehose Developer Guide</i>.</p>
-- @param _BufferingHints [BufferingHints] <p>The buffering option. If no value is specified, <b>BufferingHints</b> object default values are used.</p>
-- @param _EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- @param _CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _BucketARN [BucketARN] <p>The ARN of the S3 bucket.</p>
-- Required parameter: RoleARN
-- Required parameter: BucketARN
-- Required parameter: BufferingHints
-- Required parameter: CompressionFormat
-- Required parameter: EncryptionConfiguration
function M.S3DestinationDescription(_RoleARN, _Prefix, _BufferingHints, _EncryptionConfiguration, _CompressionFormat, _CloudWatchLoggingOptions, _BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DestinationDescription")
	local t = { 
		["RoleARN"] = _RoleARN,
		["Prefix"] = _Prefix,
		["BufferingHints"] = _BufferingHints,
		["EncryptionConfiguration"] = _EncryptionConfiguration,
		["CompressionFormat"] = _CompressionFormat,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["BucketARN"] = _BucketARN,
	}
	asserts.AssertS3DestinationDescription(t)
	return t
end

keys.PutRecordBatchResponseEntry = { ["RecordId"] = true, ["ErrorCode"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertPutRecordBatchResponseEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchResponseEntry to be of type 'table'")
	if struct["RecordId"] then asserts.AssertPutResponseRecordId(struct["RecordId"]) end
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordBatchResponseEntry[k], "PutRecordBatchResponseEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchResponseEntry
-- <p>Contains the result for an individual record from a <a>PutRecordBatch</a> request. If the record is successfully added to your delivery stream, it receives a record ID. If the record fails to be added to your delivery stream, the result includes an error code and an error message.</p>
-- @param _RecordId [PutResponseRecordId] <p>The ID of the record.</p>
-- @param _ErrorCode [ErrorCode] <p>The error code for an individual record result.</p>
-- @param _ErrorMessage [ErrorMessage] <p>The error message for an individual record result.</p>
function M.PutRecordBatchResponseEntry(_RecordId, _ErrorCode, _ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordBatchResponseEntry")
	local t = { 
		["RecordId"] = _RecordId,
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
	}
	asserts.AssertPutRecordBatchResponseEntry(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>You have already reached the limit for a requested resource.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ConcurrentModificationException = { ["message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>Another modification has already happened. Fetch <b>VersionId</b> again and use it to update the destination.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ConcurrentModificationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertConcurrentModificationException(t)
	return t
end

keys.ExtendedS3DestinationUpdate = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["S3BackupUpdate"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertExtendedS3DestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationUpdate to be of type 'table'")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["S3BackupUpdate"] then asserts.AssertS3DestinationUpdate(struct["S3BackupUpdate"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then asserts.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtendedS3DestinationUpdate[k], "ExtendedS3DestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationUpdate
-- <p>Describes an update for a destination in Amazon S3.</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Firehose Developer Guide</i>.</p>
-- @param _BufferingHints [BufferingHints] <p>The buffering option.</p>
-- @param _S3BackupUpdate [S3DestinationUpdate] <p>The Amazon S3 destination for backup.</p>
-- @param _EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- @param _CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>. </p>
-- @param _S3BackupMode [S3BackupMode] <p>Enables or disables Amazon S3 backup mode.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _BucketARN [BucketARN] <p>The ARN of the S3 bucket.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
function M.ExtendedS3DestinationUpdate(_RoleARN, _Prefix, _BufferingHints, _S3BackupUpdate, _EncryptionConfiguration, _CompressionFormat, _S3BackupMode, _CloudWatchLoggingOptions, _BucketARN, _ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtendedS3DestinationUpdate")
	local t = { 
		["RoleARN"] = _RoleARN,
		["Prefix"] = _Prefix,
		["BufferingHints"] = _BufferingHints,
		["S3BackupUpdate"] = _S3BackupUpdate,
		["EncryptionConfiguration"] = _EncryptionConfiguration,
		["CompressionFormat"] = _CompressionFormat,
		["S3BackupMode"] = _S3BackupMode,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["BucketARN"] = _BucketARN,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
	}
	asserts.AssertExtendedS3DestinationUpdate(t)
	return t
end

keys.ProcessorParameter = { ["ParameterName"] = true, ["ParameterValue"] = true, nil }

function asserts.AssertProcessorParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessorParameter to be of type 'table'")
	assert(struct["ParameterName"], "Expected key ParameterName to exist in table")
	assert(struct["ParameterValue"], "Expected key ParameterValue to exist in table")
	if struct["ParameterName"] then asserts.AssertProcessorParameterName(struct["ParameterName"]) end
	if struct["ParameterValue"] then asserts.AssertProcessorParameterValue(struct["ParameterValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProcessorParameter[k], "ProcessorParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessorParameter
-- <p>Describes the processor parameter.</p>
-- @param _ParameterName [ProcessorParameterName] <p>The name of the parameter.</p>
-- @param _ParameterValue [ProcessorParameterValue] <p>The parameter value.</p>
-- Required parameter: ParameterName
-- Required parameter: ParameterValue
function M.ProcessorParameter(_ParameterName, _ParameterValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProcessorParameter")
	local t = { 
		["ParameterName"] = _ParameterName,
		["ParameterValue"] = _ParameterValue,
	}
	asserts.AssertProcessorParameter(t)
	return t
end

keys.BufferingHints = { ["IntervalInSeconds"] = true, ["SizeInMBs"] = true, nil }

function asserts.AssertBufferingHints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BufferingHints to be of type 'table'")
	if struct["IntervalInSeconds"] then asserts.AssertIntervalInSeconds(struct["IntervalInSeconds"]) end
	if struct["SizeInMBs"] then asserts.AssertSizeInMBs(struct["SizeInMBs"]) end
	for k,_ in pairs(struct) do
		assert(keys.BufferingHints[k], "BufferingHints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BufferingHints
-- <p>Describes hints for the buffering to perform before delivering data to the destination. Please note that these options are treated as hints, and therefore Firehose may choose to use different values when it is optimal.</p>
-- @param _IntervalInSeconds [IntervalInSeconds] <p>Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300.</p>
-- @param _SizeInMBs [SizeInMBs] <p>Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.</p> <p>We recommend setting this parameter to a value greater than the amount of data you typically ingest into the delivery stream in 10 seconds. For example, if you typically ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>
function M.BufferingHints(_IntervalInSeconds, _SizeInMBs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BufferingHints")
	local t = { 
		["IntervalInSeconds"] = _IntervalInSeconds,
		["SizeInMBs"] = _SizeInMBs,
	}
	asserts.AssertBufferingHints(t)
	return t
end

keys.Record = { ["Data"] = true, nil }

function asserts.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	if struct["Data"] then asserts.AssertData(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(keys.Record[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- <p>The unit of data in a delivery stream.</p>
-- @param _Data [Data] <p>The data blob, which is base64-encoded when the blob is serialized. The maximum size of the data blob, before base64-encoding, is 1,000 KB.</p>
-- Required parameter: Data
function M.Record(_Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["Data"] = _Data,
	}
	asserts.AssertRecord(t)
	return t
end

keys.ElasticsearchDestinationDescription = { ["IndexName"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["BufferingHints"] = true, ["TypeName"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["DomainARN"] = true, ["S3DestinationDescription"] = true, ["IndexRotationPeriod"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertElasticsearchDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationDescription to be of type 'table'")
	if struct["IndexName"] then asserts.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["RetryOptions"] then asserts.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then asserts.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then asserts.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["S3BackupMode"] then asserts.AssertElasticsearchS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then asserts.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["S3DestinationDescription"] then asserts.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["IndexRotationPeriod"] then asserts.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDestinationDescription[k], "ElasticsearchDestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationDescription
-- <p>The destination description in Amazon ES.</p>
-- @param _IndexName [ElasticsearchIndexName] <p>The Elasticsearch index name.</p>
-- @param _RetryOptions [ElasticsearchRetryOptions] <p>The Amazon ES retry options.</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _BufferingHints [ElasticsearchBufferingHints] <p>The buffering options.</p>
-- @param _TypeName [ElasticsearchTypeName] <p>The Elasticsearch type name.</p>
-- @param _S3BackupMode [ElasticsearchS3BackupMode] <p>The Amazon S3 backup mode.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options.</p>
-- @param _DomainARN [ElasticsearchDomainARN] <p>The ARN of the Amazon ES domain.</p>
-- @param _S3DestinationDescription [S3DestinationDescription] <p>The Amazon S3 destination.</p>
-- @param _IndexRotationPeriod [ElasticsearchIndexRotationPeriod] <p>The Elasticsearch index rotation period</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
function M.ElasticsearchDestinationDescription(_IndexName, _RetryOptions, _RoleARN, _BufferingHints, _TypeName, _S3BackupMode, _CloudWatchLoggingOptions, _DomainARN, _S3DestinationDescription, _IndexRotationPeriod, _ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDestinationDescription")
	local t = { 
		["IndexName"] = _IndexName,
		["RetryOptions"] = _RetryOptions,
		["RoleARN"] = _RoleARN,
		["BufferingHints"] = _BufferingHints,
		["TypeName"] = _TypeName,
		["S3BackupMode"] = _S3BackupMode,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["DomainARN"] = _DomainARN,
		["S3DestinationDescription"] = _S3DestinationDescription,
		["IndexRotationPeriod"] = _IndexRotationPeriod,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
	}
	asserts.AssertElasticsearchDestinationDescription(t)
	return t
end

keys.DeleteDeliveryStreamInput = { ["DeliveryStreamName"] = true, nil }

function asserts.AssertDeleteDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeliveryStreamInput[k], "DeleteDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryStreamInput
--  
-- @param _DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- Required parameter: DeliveryStreamName
function M.DeleteDeliveryStreamInput(_DeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeliveryStreamInput")
	local t = { 
		["DeliveryStreamName"] = _DeliveryStreamName,
	}
	asserts.AssertDeleteDeliveryStreamInput(t)
	return t
end

keys.RedshiftRetryOptions = { ["DurationInSeconds"] = true, nil }

function asserts.AssertRedshiftRetryOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftRetryOptions to be of type 'table'")
	if struct["DurationInSeconds"] then asserts.AssertRedshiftRetryDurationInSeconds(struct["DurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftRetryOptions[k], "RedshiftRetryOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftRetryOptions
-- <p>Configures retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift.</p>
-- @param _DurationInSeconds [RedshiftRetryDurationInSeconds] <p>The length of time during which Firehose retries delivery after a failure, starting from the initial request and including the first attempt. The default value is 3600 seconds (60 minutes). Firehose does not retry if the value of <code>DurationInSeconds</code> is 0 (zero) or if the first delivery attempt takes longer than the current value.</p>
function M.RedshiftRetryOptions(_DurationInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftRetryOptions")
	local t = { 
		["DurationInSeconds"] = _DurationInSeconds,
	}
	asserts.AssertRedshiftRetryOptions(t)
	return t
end

keys.ListDeliveryStreamsOutput = { ["DeliveryStreamNames"] = true, ["HasMoreDeliveryStreams"] = true, nil }

function asserts.AssertListDeliveryStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeliveryStreamsOutput to be of type 'table'")
	assert(struct["DeliveryStreamNames"], "Expected key DeliveryStreamNames to exist in table")
	assert(struct["HasMoreDeliveryStreams"], "Expected key HasMoreDeliveryStreams to exist in table")
	if struct["DeliveryStreamNames"] then asserts.AssertDeliveryStreamNameList(struct["DeliveryStreamNames"]) end
	if struct["HasMoreDeliveryStreams"] then asserts.AssertBooleanObject(struct["HasMoreDeliveryStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeliveryStreamsOutput[k], "ListDeliveryStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeliveryStreamsOutput
--  
-- @param _DeliveryStreamNames [DeliveryStreamNameList] <p>The names of the delivery streams.</p>
-- @param _HasMoreDeliveryStreams [BooleanObject] <p>Indicates whether there are more delivery streams available to list.</p>
-- Required parameter: DeliveryStreamNames
-- Required parameter: HasMoreDeliveryStreams
function M.ListDeliveryStreamsOutput(_DeliveryStreamNames, _HasMoreDeliveryStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeliveryStreamsOutput")
	local t = { 
		["DeliveryStreamNames"] = _DeliveryStreamNames,
		["HasMoreDeliveryStreams"] = _HasMoreDeliveryStreams,
	}
	asserts.AssertListDeliveryStreamsOutput(t)
	return t
end

keys.ResourceInUseException = { ["message"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The resource is already in use and not available for this operation.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ResourceInUseException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceInUseException(t)
	return t
end

keys.RedshiftDestinationDescription = { ["Username"] = true, ["S3BackupDescription"] = true, ["S3DestinationDescription"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["ClusterJDBCURL"] = true, ["CopyCommand"] = true, ["CloudWatchLoggingOptions"] = true, ["ProcessingConfiguration"] = true, ["S3BackupMode"] = true, nil }

function asserts.AssertRedshiftDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ClusterJDBCURL"], "Expected key ClusterJDBCURL to exist in table")
	assert(struct["CopyCommand"], "Expected key CopyCommand to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["S3DestinationDescription"], "Expected key S3DestinationDescription to exist in table")
	if struct["Username"] then asserts.AssertUsername(struct["Username"]) end
	if struct["S3BackupDescription"] then asserts.AssertS3DestinationDescription(struct["S3BackupDescription"]) end
	if struct["S3DestinationDescription"] then asserts.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["RetryOptions"] then asserts.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then asserts.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then asserts.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then asserts.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDestinationDescription[k], "RedshiftDestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationDescription
-- <p>Describes a destination in Amazon Redshift.</p>
-- @param _Username [Username] <p>The name of the user.</p>
-- @param _S3BackupDescription [S3DestinationDescription] <p>The configuration for backup in Amazon S3.</p>
-- @param _S3DestinationDescription [S3DestinationDescription] <p>The Amazon S3 destination.</p>
-- @param _RetryOptions [RedshiftRetryOptions] <p>The retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _ClusterJDBCURL [ClusterJDBCURL] <p>The database connection string.</p>
-- @param _CopyCommand [CopyCommand] <p>The <code>COPY</code> command.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @param _S3BackupMode [RedshiftS3BackupMode] <p>The Amazon S3 backup mode.</p>
-- Required parameter: RoleARN
-- Required parameter: ClusterJDBCURL
-- Required parameter: CopyCommand
-- Required parameter: Username
-- Required parameter: S3DestinationDescription
function M.RedshiftDestinationDescription(_Username, _S3BackupDescription, _S3DestinationDescription, _RetryOptions, _RoleARN, _ClusterJDBCURL, _CopyCommand, _CloudWatchLoggingOptions, _ProcessingConfiguration, _S3BackupMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDestinationDescription")
	local t = { 
		["Username"] = _Username,
		["S3BackupDescription"] = _S3BackupDescription,
		["S3DestinationDescription"] = _S3DestinationDescription,
		["RetryOptions"] = _RetryOptions,
		["RoleARN"] = _RoleARN,
		["ClusterJDBCURL"] = _ClusterJDBCURL,
		["CopyCommand"] = _CopyCommand,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
		["S3BackupMode"] = _S3BackupMode,
	}
	asserts.AssertRedshiftDestinationDescription(t)
	return t
end

keys.Processor = { ["Type"] = true, ["Parameters"] = true, nil }

function asserts.AssertProcessor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Processor to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertProcessorType(struct["Type"]) end
	if struct["Parameters"] then asserts.AssertProcessorParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Processor[k], "Processor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Processor
-- <p>Describes a data processor.</p>
-- @param _Type [ProcessorType] <p>The type of processor.</p>
-- @param _Parameters [ProcessorParameterList] <p>The processor parameters.</p>
-- Required parameter: Type
function M.Processor(_Type, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Processor")
	local t = { 
		["Type"] = _Type,
		["Parameters"] = _Parameters,
	}
	asserts.AssertProcessor(t)
	return t
end

keys.DeleteDeliveryStreamOutput = { nil }

function asserts.AssertDeleteDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeliveryStreamOutput[k], "DeleteDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryStreamOutput
--  
function M.DeleteDeliveryStreamOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeliveryStreamOutput")
	local t = { 
	}
	asserts.AssertDeleteDeliveryStreamOutput(t)
	return t
end

keys.CreateDeliveryStreamInput = { ["ExtendedS3DestinationConfiguration"] = true, ["S3DestinationConfiguration"] = true, ["DeliveryStreamName"] = true, ["ElasticsearchDestinationConfiguration"] = true, ["RedshiftDestinationConfiguration"] = true, nil }

function asserts.AssertCreateDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["ExtendedS3DestinationConfiguration"] then asserts.AssertExtendedS3DestinationConfiguration(struct["ExtendedS3DestinationConfiguration"]) end
	if struct["S3DestinationConfiguration"] then asserts.AssertS3DestinationConfiguration(struct["S3DestinationConfiguration"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["ElasticsearchDestinationConfiguration"] then asserts.AssertElasticsearchDestinationConfiguration(struct["ElasticsearchDestinationConfiguration"]) end
	if struct["RedshiftDestinationConfiguration"] then asserts.AssertRedshiftDestinationConfiguration(struct["RedshiftDestinationConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeliveryStreamInput[k], "CreateDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeliveryStreamInput
--  
-- @param _ExtendedS3DestinationConfiguration [ExtendedS3DestinationConfiguration] <p>The destination in Amazon S3. You can specify only one destination.</p>
-- @param _S3DestinationConfiguration [S3DestinationConfiguration] <p>[Deprecated] The destination in Amazon S3. You can specify only one destination.</p>
-- @param _DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream. This name must be unique per AWS account in the same region. You can have multiple delivery streams with the same name if they are in different accounts or different regions.</p>
-- @param _ElasticsearchDestinationConfiguration [ElasticsearchDestinationConfiguration] <p>The destination in Amazon ES. You can specify only one destination.</p>
-- @param _RedshiftDestinationConfiguration [RedshiftDestinationConfiguration] <p>The destination in Amazon Redshift. You can specify only one destination.</p>
-- Required parameter: DeliveryStreamName
function M.CreateDeliveryStreamInput(_ExtendedS3DestinationConfiguration, _S3DestinationConfiguration, _DeliveryStreamName, _ElasticsearchDestinationConfiguration, _RedshiftDestinationConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeliveryStreamInput")
	local t = { 
		["ExtendedS3DestinationConfiguration"] = _ExtendedS3DestinationConfiguration,
		["S3DestinationConfiguration"] = _S3DestinationConfiguration,
		["DeliveryStreamName"] = _DeliveryStreamName,
		["ElasticsearchDestinationConfiguration"] = _ElasticsearchDestinationConfiguration,
		["RedshiftDestinationConfiguration"] = _RedshiftDestinationConfiguration,
	}
	asserts.AssertCreateDeliveryStreamInput(t)
	return t
end

keys.RedshiftDestinationUpdate = { ["Username"] = true, ["S3Update"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["ClusterJDBCURL"] = true, ["CopyCommand"] = true, ["CloudWatchLoggingOptions"] = true, ["Password"] = true, ["S3BackupUpdate"] = true, ["ProcessingConfiguration"] = true, ["S3BackupMode"] = true, nil }

function asserts.AssertRedshiftDestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationUpdate to be of type 'table'")
	if struct["Username"] then asserts.AssertUsername(struct["Username"]) end
	if struct["S3Update"] then asserts.AssertS3DestinationUpdate(struct["S3Update"]) end
	if struct["RetryOptions"] then asserts.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then asserts.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then asserts.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["S3BackupUpdate"] then asserts.AssertS3DestinationUpdate(struct["S3BackupUpdate"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then asserts.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDestinationUpdate[k], "RedshiftDestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationUpdate
-- <p>Describes an update for a destination in Amazon Redshift.</p>
-- @param _Username [Username] <p>The name of the user.</p>
-- @param _S3Update [S3DestinationUpdate] <p>The Amazon S3 destination.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified in <b>RedshiftDestinationUpdate.S3Update</b> because the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these compression formats.</p>
-- @param _RetryOptions [RedshiftRetryOptions] <p>The retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _ClusterJDBCURL [ClusterJDBCURL] <p>The database connection string.</p>
-- @param _CopyCommand [CopyCommand] <p>The <code>COPY</code> command.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _Password [Password] <p>The user password.</p>
-- @param _S3BackupUpdate [S3DestinationUpdate] <p>The Amazon S3 destination for backup.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @param _S3BackupMode [RedshiftS3BackupMode] <p>The Amazon S3 backup mode.</p>
function M.RedshiftDestinationUpdate(_Username, _S3Update, _RetryOptions, _RoleARN, _ClusterJDBCURL, _CopyCommand, _CloudWatchLoggingOptions, _Password, _S3BackupUpdate, _ProcessingConfiguration, _S3BackupMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDestinationUpdate")
	local t = { 
		["Username"] = _Username,
		["S3Update"] = _S3Update,
		["RetryOptions"] = _RetryOptions,
		["RoleARN"] = _RoleARN,
		["ClusterJDBCURL"] = _ClusterJDBCURL,
		["CopyCommand"] = _CopyCommand,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["Password"] = _Password,
		["S3BackupUpdate"] = _S3BackupUpdate,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
		["S3BackupMode"] = _S3BackupMode,
	}
	asserts.AssertRedshiftDestinationUpdate(t)
	return t
end

keys.UpdateDestinationInput = { ["DeliveryStreamName"] = true, ["ElasticsearchDestinationUpdate"] = true, ["CurrentDeliveryStreamVersionId"] = true, ["DestinationId"] = true, ["ExtendedS3DestinationUpdate"] = true, ["S3DestinationUpdate"] = true, ["RedshiftDestinationUpdate"] = true, nil }

function asserts.AssertUpdateDestinationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDestinationInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["CurrentDeliveryStreamVersionId"], "Expected key CurrentDeliveryStreamVersionId to exist in table")
	assert(struct["DestinationId"], "Expected key DestinationId to exist in table")
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["ElasticsearchDestinationUpdate"] then asserts.AssertElasticsearchDestinationUpdate(struct["ElasticsearchDestinationUpdate"]) end
	if struct["CurrentDeliveryStreamVersionId"] then asserts.AssertDeliveryStreamVersionId(struct["CurrentDeliveryStreamVersionId"]) end
	if struct["DestinationId"] then asserts.AssertDestinationId(struct["DestinationId"]) end
	if struct["ExtendedS3DestinationUpdate"] then asserts.AssertExtendedS3DestinationUpdate(struct["ExtendedS3DestinationUpdate"]) end
	if struct["S3DestinationUpdate"] then asserts.AssertS3DestinationUpdate(struct["S3DestinationUpdate"]) end
	if struct["RedshiftDestinationUpdate"] then asserts.AssertRedshiftDestinationUpdate(struct["RedshiftDestinationUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDestinationInput[k], "UpdateDestinationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDestinationInput
--  
-- @param _DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- @param _ElasticsearchDestinationUpdate [ElasticsearchDestinationUpdate] <p>Describes an update for a destination in Amazon ES.</p>
-- @param _CurrentDeliveryStreamVersionId [DeliveryStreamVersionId] <p>Obtain this value from the <b>VersionId</b> result of <a>DeliveryStreamDescription</a>. This value is required, and helps the service to perform conditional operations. For example, if there is a interleaving update and this value is null, then the update destination fails. After the update is successful, the <b>VersionId</b> value is updated. The service then performs a merge of the old configuration with the new configuration.</p>
-- @param _DestinationId [DestinationId] <p>The ID of the destination.</p>
-- @param _ExtendedS3DestinationUpdate [ExtendedS3DestinationUpdate] <p>Describes an update for a destination in Amazon S3.</p>
-- @param _S3DestinationUpdate [S3DestinationUpdate] <p>[Deprecated] Describes an update for a destination in Amazon S3.</p>
-- @param _RedshiftDestinationUpdate [RedshiftDestinationUpdate] <p>Describes an update for a destination in Amazon Redshift.</p>
-- Required parameter: DeliveryStreamName
-- Required parameter: CurrentDeliveryStreamVersionId
-- Required parameter: DestinationId
function M.UpdateDestinationInput(_DeliveryStreamName, _ElasticsearchDestinationUpdate, _CurrentDeliveryStreamVersionId, _DestinationId, _ExtendedS3DestinationUpdate, _S3DestinationUpdate, _RedshiftDestinationUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDestinationInput")
	local t = { 
		["DeliveryStreamName"] = _DeliveryStreamName,
		["ElasticsearchDestinationUpdate"] = _ElasticsearchDestinationUpdate,
		["CurrentDeliveryStreamVersionId"] = _CurrentDeliveryStreamVersionId,
		["DestinationId"] = _DestinationId,
		["ExtendedS3DestinationUpdate"] = _ExtendedS3DestinationUpdate,
		["S3DestinationUpdate"] = _S3DestinationUpdate,
		["RedshiftDestinationUpdate"] = _RedshiftDestinationUpdate,
	}
	asserts.AssertUpdateDestinationInput(t)
	return t
end

keys.ElasticsearchDestinationConfiguration = { ["S3Configuration"] = true, ["IndexName"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["BufferingHints"] = true, ["TypeName"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["DomainARN"] = true, ["IndexRotationPeriod"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertElasticsearchDestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["DomainARN"], "Expected key DomainARN to exist in table")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["S3Configuration"], "Expected key S3Configuration to exist in table")
	if struct["S3Configuration"] then asserts.AssertS3DestinationConfiguration(struct["S3Configuration"]) end
	if struct["IndexName"] then asserts.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["RetryOptions"] then asserts.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then asserts.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then asserts.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["S3BackupMode"] then asserts.AssertElasticsearchS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then asserts.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["IndexRotationPeriod"] then asserts.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDestinationConfiguration[k], "ElasticsearchDestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon ES.</p>
-- @param _S3Configuration [S3DestinationConfiguration] <p>The configuration for the intermediate Amazon S3 location from which Amazon ES obtains data.</p>
-- @param _IndexName [ElasticsearchIndexName] <p>The Elasticsearch index name.</p>
-- @param _RetryOptions [ElasticsearchRetryOptions] <p>The retry behavior in the event that Firehose is unable to deliver documents to Amazon ES. The default value is 300 (5 minutes).</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Amazon S3 Bucket Access</a>.</p>
-- @param _BufferingHints [ElasticsearchBufferingHints] <p>The buffering options. If no value is specified, the default values for <b>ElasticsearchBufferingHints</b> are used.</p>
-- @param _TypeName [ElasticsearchTypeName] <p>The Elasticsearch type name.</p>
-- @param _S3BackupMode [ElasticsearchS3BackupMode] <p>Defines how documents should be delivered to Amazon S3. When set to FailedDocumentsOnly, Firehose writes any documents that could not be indexed to the configured Amazon S3 destination, with elasticsearch-failed/ appended to the key prefix. When set to AllDocuments, Firehose delivers all incoming records to Amazon S3, and also writes failed documents with elasticsearch-failed/ appended to the prefix. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup">Amazon S3 Backup for Amazon Elasticsearch Service Destination</a>. Default value is FailedDocumentsOnly.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _DomainARN [ElasticsearchDomainARN] <p>The ARN of the Amazon ES domain. The IAM role must have permissions for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>, and <code>DescribeElasticsearchDomainConfig</code> after assuming the role specified in <b>RoleARN</b>.</p>
-- @param _IndexRotationPeriod [ElasticsearchIndexRotationPeriod] <p>The Elasticsearch index rotation period. Index rotation appends a timestamp to the IndexName to facilitate expiration of old data. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation">Index Rotation for Amazon Elasticsearch Service Destination</a>. The default value is <code>OneDay</code>.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- Required parameter: RoleARN
-- Required parameter: DomainARN
-- Required parameter: IndexName
-- Required parameter: TypeName
-- Required parameter: S3Configuration
function M.ElasticsearchDestinationConfiguration(_S3Configuration, _IndexName, _RetryOptions, _RoleARN, _BufferingHints, _TypeName, _S3BackupMode, _CloudWatchLoggingOptions, _DomainARN, _IndexRotationPeriod, _ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDestinationConfiguration")
	local t = { 
		["S3Configuration"] = _S3Configuration,
		["IndexName"] = _IndexName,
		["RetryOptions"] = _RetryOptions,
		["RoleARN"] = _RoleARN,
		["BufferingHints"] = _BufferingHints,
		["TypeName"] = _TypeName,
		["S3BackupMode"] = _S3BackupMode,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["DomainARN"] = _DomainARN,
		["IndexRotationPeriod"] = _IndexRotationPeriod,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
	}
	asserts.AssertElasticsearchDestinationConfiguration(t)
	return t
end

keys.CreateDeliveryStreamOutput = { ["DeliveryStreamARN"] = true, nil }

function asserts.AssertCreateDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeliveryStreamOutput to be of type 'table'")
	if struct["DeliveryStreamARN"] then asserts.AssertDeliveryStreamARN(struct["DeliveryStreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeliveryStreamOutput[k], "CreateDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeliveryStreamOutput
--  
-- @param _DeliveryStreamARN [DeliveryStreamARN] <p>The ARN of the delivery stream.</p>
function M.CreateDeliveryStreamOutput(_DeliveryStreamARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeliveryStreamOutput")
	local t = { 
		["DeliveryStreamARN"] = _DeliveryStreamARN,
	}
	asserts.AssertCreateDeliveryStreamOutput(t)
	return t
end

keys.PutRecordOutput = { ["RecordId"] = true, nil }

function asserts.AssertPutRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordOutput to be of type 'table'")
	assert(struct["RecordId"], "Expected key RecordId to exist in table")
	if struct["RecordId"] then asserts.AssertPutResponseRecordId(struct["RecordId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordOutput[k], "PutRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordOutput
--  
-- @param _RecordId [PutResponseRecordId] <p>The ID of the record.</p>
-- Required parameter: RecordId
function M.PutRecordOutput(_RecordId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordOutput")
	local t = { 
		["RecordId"] = _RecordId,
	}
	asserts.AssertPutRecordOutput(t)
	return t
end

keys.ExtendedS3DestinationDescription = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, ["ProcessingConfiguration"] = true, ["S3BackupDescription"] = true, nil }

function asserts.AssertExtendedS3DestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["BufferingHints"], "Expected key BufferingHints to exist in table")
	assert(struct["CompressionFormat"], "Expected key CompressionFormat to exist in table")
	assert(struct["EncryptionConfiguration"], "Expected key EncryptionConfiguration to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then asserts.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupDescription"] then asserts.AssertS3DestinationDescription(struct["S3BackupDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtendedS3DestinationDescription[k], "ExtendedS3DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationDescription
-- <p>Describes a destination in Amazon S3.</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Firehose Developer Guide</i>.</p>
-- @param _BufferingHints [BufferingHints] <p>The buffering option.</p>
-- @param _EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- @param _CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p>
-- @param _S3BackupMode [S3BackupMode] <p>The Amazon S3 backup mode.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _BucketARN [BucketARN] <p>The ARN of the S3 bucket.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @param _S3BackupDescription [S3DestinationDescription] <p>The configuration for backup in Amazon S3.</p>
-- Required parameter: RoleARN
-- Required parameter: BucketARN
-- Required parameter: BufferingHints
-- Required parameter: CompressionFormat
-- Required parameter: EncryptionConfiguration
function M.ExtendedS3DestinationDescription(_RoleARN, _Prefix, _BufferingHints, _EncryptionConfiguration, _CompressionFormat, _S3BackupMode, _CloudWatchLoggingOptions, _BucketARN, _ProcessingConfiguration, _S3BackupDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtendedS3DestinationDescription")
	local t = { 
		["RoleARN"] = _RoleARN,
		["Prefix"] = _Prefix,
		["BufferingHints"] = _BufferingHints,
		["EncryptionConfiguration"] = _EncryptionConfiguration,
		["CompressionFormat"] = _CompressionFormat,
		["S3BackupMode"] = _S3BackupMode,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["BucketARN"] = _BucketARN,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
		["S3BackupDescription"] = _S3BackupDescription,
	}
	asserts.AssertExtendedS3DestinationDescription(t)
	return t
end

keys.RedshiftDestinationConfiguration = { ["Username"] = true, ["S3Configuration"] = true, ["S3BackupConfiguration"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["ClusterJDBCURL"] = true, ["CopyCommand"] = true, ["CloudWatchLoggingOptions"] = true, ["Password"] = true, ["ProcessingConfiguration"] = true, ["S3BackupMode"] = true, nil }

function asserts.AssertRedshiftDestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ClusterJDBCURL"], "Expected key ClusterJDBCURL to exist in table")
	assert(struct["CopyCommand"], "Expected key CopyCommand to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["S3Configuration"], "Expected key S3Configuration to exist in table")
	if struct["Username"] then asserts.AssertUsername(struct["Username"]) end
	if struct["S3Configuration"] then asserts.AssertS3DestinationConfiguration(struct["S3Configuration"]) end
	if struct["S3BackupConfiguration"] then asserts.AssertS3DestinationConfiguration(struct["S3BackupConfiguration"]) end
	if struct["RetryOptions"] then asserts.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then asserts.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then asserts.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then asserts.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDestinationConfiguration[k], "RedshiftDestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon Redshift.</p>
-- @param _Username [Username] <p>The name of the user.</p>
-- @param _S3Configuration [S3DestinationConfiguration] <p>The configuration for the intermediate Amazon S3 location from which Amazon Redshift obtains data. Restrictions are described in the topic for <a>CreateDeliveryStream</a>.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified in <b>RedshiftDestinationConfiguration.S3Configuration</b> because the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these compression formats.</p>
-- @param _S3BackupConfiguration [S3DestinationConfiguration] <p>The configuration for backup in Amazon S3.</p>
-- @param _RetryOptions [RedshiftRetryOptions] <p>The retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _ClusterJDBCURL [ClusterJDBCURL] <p>The database connection string.</p>
-- @param _CopyCommand [CopyCommand] <p>The <code>COPY</code> command.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _Password [Password] <p>The user password.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @param _S3BackupMode [RedshiftS3BackupMode] <p>The Amazon S3 backup mode.</p>
-- Required parameter: RoleARN
-- Required parameter: ClusterJDBCURL
-- Required parameter: CopyCommand
-- Required parameter: Username
-- Required parameter: Password
-- Required parameter: S3Configuration
function M.RedshiftDestinationConfiguration(_Username, _S3Configuration, _S3BackupConfiguration, _RetryOptions, _RoleARN, _ClusterJDBCURL, _CopyCommand, _CloudWatchLoggingOptions, _Password, _ProcessingConfiguration, _S3BackupMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDestinationConfiguration")
	local t = { 
		["Username"] = _Username,
		["S3Configuration"] = _S3Configuration,
		["S3BackupConfiguration"] = _S3BackupConfiguration,
		["RetryOptions"] = _RetryOptions,
		["RoleARN"] = _RoleARN,
		["ClusterJDBCURL"] = _ClusterJDBCURL,
		["CopyCommand"] = _CopyCommand,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["Password"] = _Password,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
		["S3BackupMode"] = _S3BackupMode,
	}
	asserts.AssertRedshiftDestinationConfiguration(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource could not be found.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.PutRecordBatchInput = { ["Records"] = true, ["DeliveryStreamName"] = true, nil }

function asserts.AssertPutRecordBatchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["Records"] then asserts.AssertPutRecordBatchRequestEntryList(struct["Records"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordBatchInput[k], "PutRecordBatchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchInput
--  
-- @param _Records [PutRecordBatchRequestEntryList] <p>One or more records.</p>
-- @param _DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- Required parameter: DeliveryStreamName
-- Required parameter: Records
function M.PutRecordBatchInput(_Records, _DeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordBatchInput")
	local t = { 
		["Records"] = _Records,
		["DeliveryStreamName"] = _DeliveryStreamName,
	}
	asserts.AssertPutRecordBatchInput(t)
	return t
end

keys.DescribeDeliveryStreamOutput = { ["DeliveryStreamDescription"] = true, nil }

function asserts.AssertDescribeDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryStreamOutput to be of type 'table'")
	assert(struct["DeliveryStreamDescription"], "Expected key DeliveryStreamDescription to exist in table")
	if struct["DeliveryStreamDescription"] then asserts.AssertDeliveryStreamDescription(struct["DeliveryStreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryStreamOutput[k], "DescribeDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryStreamOutput
--  
-- @param _DeliveryStreamDescription [DeliveryStreamDescription] <p>Information about the delivery stream.</p>
-- Required parameter: DeliveryStreamDescription
function M.DescribeDeliveryStreamOutput(_DeliveryStreamDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryStreamOutput")
	local t = { 
		["DeliveryStreamDescription"] = _DeliveryStreamDescription,
	}
	asserts.AssertDescribeDeliveryStreamOutput(t)
	return t
end

keys.ElasticsearchRetryOptions = { ["DurationInSeconds"] = true, nil }

function asserts.AssertElasticsearchRetryOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchRetryOptions to be of type 'table'")
	if struct["DurationInSeconds"] then asserts.AssertElasticsearchRetryDurationInSeconds(struct["DurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchRetryOptions[k], "ElasticsearchRetryOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchRetryOptions
-- <p>Configures retry behavior in the event that Firehose is unable to deliver documents to Amazon ES.</p>
-- @param _DurationInSeconds [ElasticsearchRetryDurationInSeconds] <p>After an initial failure to deliver to Amazon ES, the total amount of time during which Firehose re-attempts delivery (including the first attempt). After this time has elapsed, the failed documents are written to Amazon S3. Default value is 300 seconds (5 minutes). A value of 0 (zero) results in no retries.</p>
function M.ElasticsearchRetryOptions(_DurationInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchRetryOptions")
	local t = { 
		["DurationInSeconds"] = _DurationInSeconds,
	}
	asserts.AssertElasticsearchRetryOptions(t)
	return t
end

keys.S3DestinationConfiguration = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3DestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DestinationConfiguration[k], "S3DestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon S3.</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Firehose Developer Guide</i>.</p>
-- @param _BufferingHints [BufferingHints] <p>The buffering option. If no value is specified, <b>BufferingHints</b> object default values are used.</p>
-- @param _EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- @param _CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _BucketARN [BucketARN] <p>The ARN of the S3 bucket.</p>
-- Required parameter: RoleARN
-- Required parameter: BucketARN
function M.S3DestinationConfiguration(_RoleARN, _Prefix, _BufferingHints, _EncryptionConfiguration, _CompressionFormat, _CloudWatchLoggingOptions, _BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DestinationConfiguration")
	local t = { 
		["RoleARN"] = _RoleARN,
		["Prefix"] = _Prefix,
		["BufferingHints"] = _BufferingHints,
		["EncryptionConfiguration"] = _EncryptionConfiguration,
		["CompressionFormat"] = _CompressionFormat,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["BucketARN"] = _BucketARN,
	}
	asserts.AssertS3DestinationConfiguration(t)
	return t
end

keys.EncryptionConfiguration = { ["KMSEncryptionConfig"] = true, ["NoEncryptionConfig"] = true, nil }

function asserts.AssertEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionConfiguration to be of type 'table'")
	if struct["KMSEncryptionConfig"] then asserts.AssertKMSEncryptionConfig(struct["KMSEncryptionConfig"]) end
	if struct["NoEncryptionConfig"] then asserts.AssertNoEncryptionConfig(struct["NoEncryptionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionConfiguration[k], "EncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionConfiguration
-- <p>Describes the encryption for a destination in Amazon S3.</p>
-- @param _KMSEncryptionConfig [KMSEncryptionConfig] <p>The encryption key.</p>
-- @param _NoEncryptionConfig [NoEncryptionConfig] <p>Specifically override existing encryption information to ensure no encryption is used.</p>
function M.EncryptionConfiguration(_KMSEncryptionConfig, _NoEncryptionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionConfiguration")
	local t = { 
		["KMSEncryptionConfig"] = _KMSEncryptionConfig,
		["NoEncryptionConfig"] = _NoEncryptionConfig,
	}
	asserts.AssertEncryptionConfiguration(t)
	return t
end

keys.ElasticsearchBufferingHints = { ["IntervalInSeconds"] = true, ["SizeInMBs"] = true, nil }

function asserts.AssertElasticsearchBufferingHints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchBufferingHints to be of type 'table'")
	if struct["IntervalInSeconds"] then asserts.AssertElasticsearchBufferingIntervalInSeconds(struct["IntervalInSeconds"]) end
	if struct["SizeInMBs"] then asserts.AssertElasticsearchBufferingSizeInMBs(struct["SizeInMBs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchBufferingHints[k], "ElasticsearchBufferingHints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchBufferingHints
-- <p>Describes the buffering to perform before delivering data to the Amazon ES destination.</p>
-- @param _IntervalInSeconds [ElasticsearchBufferingIntervalInSeconds] <p>Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes).</p>
-- @param _SizeInMBs [ElasticsearchBufferingSizeInMBs] <p>Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.</p> <p>We recommend setting this parameter to a value greater than the amount of data you typically ingest into the delivery stream in 10 seconds. For example, if you typically ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>
function M.ElasticsearchBufferingHints(_IntervalInSeconds, _SizeInMBs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchBufferingHints")
	local t = { 
		["IntervalInSeconds"] = _IntervalInSeconds,
		["SizeInMBs"] = _SizeInMBs,
	}
	asserts.AssertElasticsearchBufferingHints(t)
	return t
end

keys.CloudWatchLoggingOptions = { ["Enabled"] = true, ["LogStreamName"] = true, ["LogGroupName"] = true, nil }

function asserts.AssertCloudWatchLoggingOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOptions to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBooleanObject(struct["Enabled"]) end
	if struct["LogStreamName"] then asserts.AssertLogStreamName(struct["LogStreamName"]) end
	if struct["LogGroupName"] then asserts.AssertLogGroupName(struct["LogGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLoggingOptions[k], "CloudWatchLoggingOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOptions
-- <p>Describes the CloudWatch logging options for your delivery stream.</p>
-- @param _Enabled [BooleanObject] <p>Enables or disables CloudWatch logging.</p>
-- @param _LogStreamName [LogStreamName] <p>The CloudWatch log stream name for logging. This value is required if CloudWatch logging is enabled.</p>
-- @param _LogGroupName [LogGroupName] <p>The CloudWatch group name for logging. This value is required if CloudWatch logging is enabled.</p>
function M.CloudWatchLoggingOptions(_Enabled, _LogStreamName, _LogGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLoggingOptions")
	local t = { 
		["Enabled"] = _Enabled,
		["LogStreamName"] = _LogStreamName,
		["LogGroupName"] = _LogGroupName,
	}
	asserts.AssertCloudWatchLoggingOptions(t)
	return t
end

keys.ElasticsearchDestinationUpdate = { ["IndexName"] = true, ["S3Update"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["BufferingHints"] = true, ["TypeName"] = true, ["CloudWatchLoggingOptions"] = true, ["DomainARN"] = true, ["IndexRotationPeriod"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertElasticsearchDestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationUpdate to be of type 'table'")
	if struct["IndexName"] then asserts.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["S3Update"] then asserts.AssertS3DestinationUpdate(struct["S3Update"]) end
	if struct["RetryOptions"] then asserts.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then asserts.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then asserts.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then asserts.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["IndexRotationPeriod"] then asserts.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDestinationUpdate[k], "ElasticsearchDestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationUpdate
-- <p>Describes an update for a destination in Amazon ES.</p>
-- @param _IndexName [ElasticsearchIndexName] <p>The Elasticsearch index name.</p>
-- @param _S3Update [S3DestinationUpdate] <p>The Amazon S3 destination.</p>
-- @param _RetryOptions [ElasticsearchRetryOptions] <p>The retry behavior in the event that Firehose is unable to deliver documents to Amazon ES. Default value is 300 (5 minutes).</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Amazon S3 Bucket Access</a>.</p>
-- @param _BufferingHints [ElasticsearchBufferingHints] <p>The buffering options. If no value is specified, <b>ElasticsearchBufferingHints</b> object default values are used. </p>
-- @param _TypeName [ElasticsearchTypeName] <p>The Elasticsearch type name.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _DomainARN [ElasticsearchDomainARN] <p>The ARN of the Amazon ES domain. The IAM role must have permissions for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>, and <code>DescribeElasticsearchDomainConfig</code> after assuming the IAM role specified in <b>RoleARN</b>.</p>
-- @param _IndexRotationPeriod [ElasticsearchIndexRotationPeriod] <p>The Elasticsearch index rotation period. Index rotation appends a timestamp to IndexName to facilitate the expiration of old data. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation">Index Rotation for Amazon Elasticsearch Service Destination</a>. Default value is <code>OneDay</code>.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
function M.ElasticsearchDestinationUpdate(_IndexName, _S3Update, _RetryOptions, _RoleARN, _BufferingHints, _TypeName, _CloudWatchLoggingOptions, _DomainARN, _IndexRotationPeriod, _ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDestinationUpdate")
	local t = { 
		["IndexName"] = _IndexName,
		["S3Update"] = _S3Update,
		["RetryOptions"] = _RetryOptions,
		["RoleARN"] = _RoleARN,
		["BufferingHints"] = _BufferingHints,
		["TypeName"] = _TypeName,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["DomainARN"] = _DomainARN,
		["IndexRotationPeriod"] = _IndexRotationPeriod,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
	}
	asserts.AssertElasticsearchDestinationUpdate(t)
	return t
end

keys.DestinationDescription = { ["ElasticsearchDestinationDescription"] = true, ["DestinationId"] = true, ["ExtendedS3DestinationDescription"] = true, ["S3DestinationDescription"] = true, ["RedshiftDestinationDescription"] = true, nil }

function asserts.AssertDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationDescription to be of type 'table'")
	assert(struct["DestinationId"], "Expected key DestinationId to exist in table")
	if struct["ElasticsearchDestinationDescription"] then asserts.AssertElasticsearchDestinationDescription(struct["ElasticsearchDestinationDescription"]) end
	if struct["DestinationId"] then asserts.AssertDestinationId(struct["DestinationId"]) end
	if struct["ExtendedS3DestinationDescription"] then asserts.AssertExtendedS3DestinationDescription(struct["ExtendedS3DestinationDescription"]) end
	if struct["S3DestinationDescription"] then asserts.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["RedshiftDestinationDescription"] then asserts.AssertRedshiftDestinationDescription(struct["RedshiftDestinationDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DestinationDescription[k], "DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationDescription
-- <p>Describes the destination for a delivery stream.</p>
-- @param _ElasticsearchDestinationDescription [ElasticsearchDestinationDescription] <p>The destination in Amazon ES.</p>
-- @param _DestinationId [DestinationId] <p>The ID of the destination.</p>
-- @param _ExtendedS3DestinationDescription [ExtendedS3DestinationDescription] <p>The destination in Amazon S3.</p>
-- @param _S3DestinationDescription [S3DestinationDescription] <p>[Deprecated] The destination in Amazon S3.</p>
-- @param _RedshiftDestinationDescription [RedshiftDestinationDescription] <p>The destination in Amazon Redshift.</p>
-- Required parameter: DestinationId
function M.DestinationDescription(_ElasticsearchDestinationDescription, _DestinationId, _ExtendedS3DestinationDescription, _S3DestinationDescription, _RedshiftDestinationDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DestinationDescription")
	local t = { 
		["ElasticsearchDestinationDescription"] = _ElasticsearchDestinationDescription,
		["DestinationId"] = _DestinationId,
		["ExtendedS3DestinationDescription"] = _ExtendedS3DestinationDescription,
		["S3DestinationDescription"] = _S3DestinationDescription,
		["RedshiftDestinationDescription"] = _RedshiftDestinationDescription,
	}
	asserts.AssertDestinationDescription(t)
	return t
end

keys.CopyCommand = { ["DataTableName"] = true, ["CopyOptions"] = true, ["DataTableColumns"] = true, nil }

function asserts.AssertCopyCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyCommand to be of type 'table'")
	assert(struct["DataTableName"], "Expected key DataTableName to exist in table")
	if struct["DataTableName"] then asserts.AssertDataTableName(struct["DataTableName"]) end
	if struct["CopyOptions"] then asserts.AssertCopyOptions(struct["CopyOptions"]) end
	if struct["DataTableColumns"] then asserts.AssertDataTableColumns(struct["DataTableColumns"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyCommand[k], "CopyCommand contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyCommand
-- <p>Describes a <code>COPY</code> command for Amazon Redshift.</p>
-- @param _DataTableName [DataTableName] <p>The name of the target table. The table must already exist in the database.</p>
-- @param _CopyOptions [CopyOptions] <p>Optional parameters to use with the Amazon Redshift <code>COPY</code> command. For more information, see the "Optional Parameters" section of <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html">Amazon Redshift COPY command</a>. Some possible examples that would apply to Firehose are as follows:</p> <p> <code>delimiter '\t' lzop;</code> - fields are delimited with "\t" (TAB character) and compressed using lzop.</p> <p> <code>delimiter '|</code> - fields are delimited with "|" (this is the default delimiter).</p> <p> <code>delimiter '|' escape</code> - the delimiter should be escaped.</p> <p> <code>fixedwidth 'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'</code> - fields are fixed width in the source, with each width specified after every column in the table.</p> <p> <code>JSON 's3://mybucket/jsonpaths.txt'</code> - data is in JSON format, and the path specified is the format of the data.</p> <p>For more examples, see <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html">Amazon Redshift COPY command examples</a>.</p>
-- @param _DataTableColumns [DataTableColumns] <p>A comma-separated list of column names.</p>
-- Required parameter: DataTableName
function M.CopyCommand(_DataTableName, _CopyOptions, _DataTableColumns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyCommand")
	local t = { 
		["DataTableName"] = _DataTableName,
		["CopyOptions"] = _CopyOptions,
		["DataTableColumns"] = _DataTableColumns,
	}
	asserts.AssertCopyCommand(t)
	return t
end

keys.S3DestinationUpdate = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3DestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationUpdate to be of type 'table'")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DestinationUpdate[k], "S3DestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationUpdate
-- <p>Describes an update for a destination in Amazon S3.</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Firehose Developer Guide</i>.</p>
-- @param _BufferingHints [BufferingHints] <p>The buffering option. If no value is specified, <b>BufferingHints</b> object default values are used.</p>
-- @param _EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- @param _CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _BucketARN [BucketARN] <p>The ARN of the S3 bucket.</p>
function M.S3DestinationUpdate(_RoleARN, _Prefix, _BufferingHints, _EncryptionConfiguration, _CompressionFormat, _CloudWatchLoggingOptions, _BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DestinationUpdate")
	local t = { 
		["RoleARN"] = _RoleARN,
		["Prefix"] = _Prefix,
		["BufferingHints"] = _BufferingHints,
		["EncryptionConfiguration"] = _EncryptionConfiguration,
		["CompressionFormat"] = _CompressionFormat,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["BucketARN"] = _BucketARN,
	}
	asserts.AssertS3DestinationUpdate(t)
	return t
end

keys.InvalidArgumentException = { ["message"] = true, nil }

function asserts.AssertInvalidArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgumentException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgumentException[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- <p>The specified input parameter has an value that is not valid.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.InvalidArgumentException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgumentException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidArgumentException(t)
	return t
end

keys.ListDeliveryStreamsInput = { ["Limit"] = true, ["ExclusiveStartDeliveryStreamName"] = true, nil }

function asserts.AssertListDeliveryStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeliveryStreamsInput to be of type 'table'")
	if struct["Limit"] then asserts.AssertListDeliveryStreamsInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartDeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["ExclusiveStartDeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeliveryStreamsInput[k], "ListDeliveryStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeliveryStreamsInput
--  
-- @param _Limit [ListDeliveryStreamsInputLimit] <p>The maximum number of delivery streams to list.</p>
-- @param _ExclusiveStartDeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream to start the list with.</p>
function M.ListDeliveryStreamsInput(_Limit, _ExclusiveStartDeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeliveryStreamsInput")
	local t = { 
		["Limit"] = _Limit,
		["ExclusiveStartDeliveryStreamName"] = _ExclusiveStartDeliveryStreamName,
	}
	asserts.AssertListDeliveryStreamsInput(t)
	return t
end

keys.ExtendedS3DestinationConfiguration = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["S3BackupConfiguration"] = true, ["BucketARN"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertExtendedS3DestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then asserts.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["S3BackupConfiguration"] then asserts.AssertS3DestinationConfiguration(struct["S3BackupConfiguration"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtendedS3DestinationConfiguration[k], "ExtendedS3DestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon S3.</p>
-- @param _RoleARN [RoleARN] <p>The ARN of the AWS credentials.</p>
-- @param _Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Firehose Developer Guide</i>.</p>
-- @param _BufferingHints [BufferingHints] <p>The buffering option.</p>
-- @param _EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- @param _CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is UNCOMPRESSED.</p>
-- @param _S3BackupMode [S3BackupMode] <p>The Amazon S3 backup mode.</p>
-- @param _CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- @param _S3BackupConfiguration [S3DestinationConfiguration] <p>The configuration for backup in Amazon S3.</p>
-- @param _BucketARN [BucketARN] <p>The ARN of the S3 bucket.</p>
-- @param _ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- Required parameter: RoleARN
-- Required parameter: BucketARN
function M.ExtendedS3DestinationConfiguration(_RoleARN, _Prefix, _BufferingHints, _EncryptionConfiguration, _CompressionFormat, _S3BackupMode, _CloudWatchLoggingOptions, _S3BackupConfiguration, _BucketARN, _ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtendedS3DestinationConfiguration")
	local t = { 
		["RoleARN"] = _RoleARN,
		["Prefix"] = _Prefix,
		["BufferingHints"] = _BufferingHints,
		["EncryptionConfiguration"] = _EncryptionConfiguration,
		["CompressionFormat"] = _CompressionFormat,
		["S3BackupMode"] = _S3BackupMode,
		["CloudWatchLoggingOptions"] = _CloudWatchLoggingOptions,
		["S3BackupConfiguration"] = _S3BackupConfiguration,
		["BucketARN"] = _BucketARN,
		["ProcessingConfiguration"] = _ProcessingConfiguration,
	}
	asserts.AssertExtendedS3DestinationConfiguration(t)
	return t
end

keys.DescribeDeliveryStreamInput = { ["ExclusiveStartDestinationId"] = true, ["DeliveryStreamName"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["ExclusiveStartDestinationId"] then asserts.AssertDestinationId(struct["ExclusiveStartDestinationId"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Limit"] then asserts.AssertDescribeDeliveryStreamInputLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryStreamInput[k], "DescribeDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryStreamInput
--  
-- @param _ExclusiveStartDestinationId [DestinationId] <p>The ID of the destination to start returning the destination information. Currently Firehose supports one destination per delivery stream.</p>
-- @param _DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- @param _Limit [DescribeDeliveryStreamInputLimit] <p>The limit on the number of destinations to return. Currently, you can have one destination per delivery stream.</p>
-- Required parameter: DeliveryStreamName
function M.DescribeDeliveryStreamInput(_ExclusiveStartDestinationId, _DeliveryStreamName, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryStreamInput")
	local t = { 
		["ExclusiveStartDestinationId"] = _ExclusiveStartDestinationId,
		["DeliveryStreamName"] = _DeliveryStreamName,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeDeliveryStreamInput(t)
	return t
end

keys.ProcessingConfiguration = { ["Enabled"] = true, ["Processors"] = true, nil }

function asserts.AssertProcessingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessingConfiguration to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBooleanObject(struct["Enabled"]) end
	if struct["Processors"] then asserts.AssertProcessorList(struct["Processors"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProcessingConfiguration[k], "ProcessingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessingConfiguration
-- <p>Describes a data processing configuration.</p>
-- @param _Enabled [BooleanObject] <p>Enables or disables data processing.</p>
-- @param _Processors [ProcessorList] <p>The data processors.</p>
function M.ProcessingConfiguration(_Enabled, _Processors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProcessingConfiguration")
	local t = { 
		["Enabled"] = _Enabled,
		["Processors"] = _Processors,
	}
	asserts.AssertProcessingConfiguration(t)
	return t
end

function asserts.AssertDataTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected DataTableName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DataTableName(str)
	asserts.AssertDataTableName(str)
	return str
end

function asserts.AssertProcessorParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorParameterValue to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProcessorParameterValue(str)
	asserts.AssertProcessorParameterValue(str)
	return str
end

function asserts.AssertElasticsearchS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchS3BackupMode to be of type 'string'")
end

--  
function M.ElasticsearchS3BackupMode(str)
	asserts.AssertElasticsearchS3BackupMode(str)
	return str
end

function asserts.AssertBucketARN(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BucketARN(str)
	asserts.AssertBucketARN(str)
	return str
end

function asserts.AssertElasticsearchIndexRotationPeriod(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndexRotationPeriod to be of type 'string'")
end

--  
function M.ElasticsearchIndexRotationPeriod(str)
	asserts.AssertElasticsearchIndexRotationPeriod(str)
	return str
end

function asserts.AssertLogStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStreamName to be of type 'string'")
end

--  
function M.LogStreamName(str)
	asserts.AssertLogStreamName(str)
	return str
end

function asserts.AssertDeliveryStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeliveryStreamName(str)
	asserts.AssertDeliveryStreamName(str)
	return str
end

function asserts.AssertUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected Username to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Username(str)
	asserts.AssertUsername(str)
	return str
end

function asserts.AssertDeliveryStreamVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamVersionId to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeliveryStreamVersionId(str)
	asserts.AssertDeliveryStreamVersionId(str)
	return str
end

function asserts.AssertElasticsearchIndexName(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndexName to be of type 'string'")
	assert(#str <= 80, "Expected string to be max 80 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchIndexName(str)
	asserts.AssertElasticsearchIndexName(str)
	return str
end

function asserts.AssertDestinationId(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationId(str)
	asserts.AssertDestinationId(str)
	return str
end

function asserts.AssertDeliveryStreamStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamStatus to be of type 'string'")
end

--  
function M.DeliveryStreamStatus(str)
	asserts.AssertDeliveryStreamStatus(str)
	return str
end

function asserts.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleARN(str)
	asserts.AssertRoleARN(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertDeliveryStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeliveryStreamARN(str)
	asserts.AssertDeliveryStreamARN(str)
	return str
end

function asserts.AssertProcessorParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorParameterName to be of type 'string'")
end

--  
function M.ProcessorParameterName(str)
	asserts.AssertProcessorParameterName(str)
	return str
end

function asserts.AssertElasticsearchDomainARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchDomainARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchDomainARN(str)
	asserts.AssertElasticsearchDomainARN(str)
	return str
end

function asserts.AssertDataTableColumns(str)
	assert(str)
	assert(type(str) == "string", "Expected DataTableColumns to be of type 'string'")
end

--  
function M.DataTableColumns(str)
	asserts.AssertDataTableColumns(str)
	return str
end

function asserts.AssertS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BackupMode to be of type 'string'")
end

--  
function M.S3BackupMode(str)
	asserts.AssertS3BackupMode(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertProcessorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorType to be of type 'string'")
end

--  
function M.ProcessorType(str)
	asserts.AssertProcessorType(str)
	return str
end

function asserts.AssertClusterJDBCURL(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterJDBCURL to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClusterJDBCURL(str)
	asserts.AssertClusterJDBCURL(str)
	return str
end

function asserts.AssertCopyOptions(str)
	assert(str)
	assert(type(str) == "string", "Expected CopyOptions to be of type 'string'")
end

--  
function M.CopyOptions(str)
	asserts.AssertCopyOptions(str)
	return str
end

function asserts.AssertNoEncryptionConfig(str)
	assert(str)
	assert(type(str) == "string", "Expected NoEncryptionConfig to be of type 'string'")
end

--  
function M.NoEncryptionConfig(str)
	asserts.AssertNoEncryptionConfig(str)
	return str
end

function asserts.AssertPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected Prefix to be of type 'string'")
end

--  
function M.Prefix(str)
	asserts.AssertPrefix(str)
	return str
end

function asserts.AssertAWSKMSKeyARN(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSKMSKeyARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AWSKMSKeyARN(str)
	asserts.AssertAWSKMSKeyARN(str)
	return str
end

function asserts.AssertRedshiftS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftS3BackupMode to be of type 'string'")
end

--  
function M.RedshiftS3BackupMode(str)
	asserts.AssertRedshiftS3BackupMode(str)
	return str
end

function asserts.AssertLogGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogGroupName to be of type 'string'")
end

--  
function M.LogGroupName(str)
	asserts.AssertLogGroupName(str)
	return str
end

function asserts.AssertPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected Password to be of type 'string'")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.Password(str)
	asserts.AssertPassword(str)
	return str
end

function asserts.AssertPutResponseRecordId(str)
	assert(str)
	assert(type(str) == "string", "Expected PutResponseRecordId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PutResponseRecordId(str)
	asserts.AssertPutResponseRecordId(str)
	return str
end

function asserts.AssertElasticsearchTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchTypeName(str)
	asserts.AssertElasticsearchTypeName(str)
	return str
end

function asserts.AssertCompressionFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionFormat to be of type 'string'")
end

--  
function M.CompressionFormat(str)
	asserts.AssertCompressionFormat(str)
	return str
end

function asserts.AssertListDeliveryStreamsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListDeliveryStreamsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListDeliveryStreamsInputLimit(integer)
	asserts.AssertListDeliveryStreamsInputLimit(integer)
	return integer
end

function asserts.AssertElasticsearchBufferingSizeInMBs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchBufferingSizeInMBs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ElasticsearchBufferingSizeInMBs(integer)
	asserts.AssertElasticsearchBufferingSizeInMBs(integer)
	return integer
end

function asserts.AssertElasticsearchRetryDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchRetryDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7200, "Expected integer to be max 7200")
end

function M.ElasticsearchRetryDurationInSeconds(integer)
	asserts.AssertElasticsearchRetryDurationInSeconds(integer)
	return integer
end

function asserts.AssertElasticsearchBufferingIntervalInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchBufferingIntervalInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 900, "Expected integer to be max 900")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.ElasticsearchBufferingIntervalInSeconds(integer)
	asserts.AssertElasticsearchBufferingIntervalInSeconds(integer)
	return integer
end

function asserts.AssertIntervalInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntervalInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 900, "Expected integer to be max 900")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.IntervalInSeconds(integer)
	asserts.AssertIntervalInSeconds(integer)
	return integer
end

function asserts.AssertDescribeDeliveryStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeDeliveryStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeDeliveryStreamInputLimit(integer)
	asserts.AssertDescribeDeliveryStreamInputLimit(integer)
	return integer
end

function asserts.AssertSizeInMBs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SizeInMBs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 128, "Expected integer to be max 128")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.SizeInMBs(integer)
	asserts.AssertSizeInMBs(integer)
	return integer
end

function asserts.AssertRedshiftRetryDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RedshiftRetryDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7200, "Expected integer to be max 7200")
end

function M.RedshiftRetryDurationInSeconds(integer)
	asserts.AssertRedshiftRetryDurationInSeconds(integer)
	return integer
end

function asserts.AssertNonNegativeIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NonNegativeIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NonNegativeIntegerObject(integer)
	asserts.AssertNonNegativeIntegerObject(integer)
	return integer
end

function asserts.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	asserts.AssertBooleanObject(boolean)
	return boolean
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertData(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Data to be of type 'string'")
	assert(#blob <= 1024000, "Expected blob to be max 1024000")
end

function M.Data(blob)
	asserts.AssertData(blob)
	return blob
end

function asserts.AssertPutRecordBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordBatchRequestEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRecord(v)
	end
end

--  
-- List of Record objects
function M.PutRecordBatchRequestEntryList(list)
	asserts.AssertPutRecordBatchRequestEntryList(list)
	return list
end

function asserts.AssertProcessorList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProcessor(v)
	end
end

--  
-- List of Processor objects
function M.ProcessorList(list)
	asserts.AssertProcessorList(list)
	return list
end

function asserts.AssertDeliveryStreamNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryStreamNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeliveryStreamName(v)
	end
end

--  
-- List of DeliveryStreamName objects
function M.DeliveryStreamNameList(list)
	asserts.AssertDeliveryStreamNameList(list)
	return list
end

function asserts.AssertProcessorParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessorParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProcessorParameter(v)
	end
end

--  
-- List of ProcessorParameter objects
function M.ProcessorParameterList(list)
	asserts.AssertProcessorParameterList(list)
	return list
end

function asserts.AssertPutRecordBatchResponseEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordBatchResponseEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPutRecordBatchResponseEntry(v)
	end
end

--  
-- List of PutRecordBatchResponseEntry objects
function M.PutRecordBatchResponseEntryList(list)
	asserts.AssertPutRecordBatchResponseEntryList(list)
	return list
end

function asserts.AssertDestinationDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DestinationDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDestinationDescription(v)
	end
end

--  
-- List of DestinationDescription objects
function M.DestinationDescriptionList(list)
	asserts.AssertDestinationDescriptionList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "firehose.amazonaws.com"
		end
	end
	local ss = { "firehose" }
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

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call CreateDeliveryStream asynchronously, invoking a callback when done
-- @param CreateDeliveryStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeliveryStreamAsync(CreateDeliveryStreamInput, cb)
	assert(CreateDeliveryStreamInput, "You must provide a CreateDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.CreateDeliveryStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeliveryStreamInput
-- @return response
-- @return error_message
function M.CreateDeliveryStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeliveryStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeliveryStream asynchronously, invoking a callback when done
-- @param DescribeDeliveryStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeliveryStreamAsync(DescribeDeliveryStreamInput, cb)
	assert(DescribeDeliveryStreamInput, "You must provide a DescribeDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.DescribeDeliveryStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDeliveryStreamInput
-- @return response
-- @return error_message
function M.DescribeDeliveryStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeliveryStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDestination asynchronously, invoking a callback when done
-- @param UpdateDestinationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDestinationAsync(UpdateDestinationInput, cb)
	assert(UpdateDestinationInput, "You must provide a UpdateDestinationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.UpdateDestination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDestinationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDestinationInput
-- @return response
-- @return error_message
function M.UpdateDestinationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDestinationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeliveryStream asynchronously, invoking a callback when done
-- @param DeleteDeliveryStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeliveryStreamAsync(DeleteDeliveryStreamInput, cb)
	assert(DeleteDeliveryStreamInput, "You must provide a DeleteDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.DeleteDeliveryStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeliveryStreamInput
-- @return response
-- @return error_message
function M.DeleteDeliveryStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeliveryStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeliveryStreams asynchronously, invoking a callback when done
-- @param ListDeliveryStreamsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeliveryStreamsAsync(ListDeliveryStreamsInput, cb)
	assert(ListDeliveryStreamsInput, "You must provide a ListDeliveryStreamsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.ListDeliveryStreams",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeliveryStreamsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeliveryStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeliveryStreamsInput
-- @return response
-- @return error_message
function M.ListDeliveryStreamsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeliveryStreamsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRecordBatch asynchronously, invoking a callback when done
-- @param PutRecordBatchInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutRecordBatchAsync(PutRecordBatchInput, cb)
	assert(PutRecordBatchInput, "You must provide a PutRecordBatchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.PutRecordBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRecordBatchInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRecordBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRecordBatchInput
-- @return response
-- @return error_message
function M.PutRecordBatchSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRecordBatchAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRecord asynchronously, invoking a callback when done
-- @param PutRecordInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutRecordAsync(PutRecordInput, cb)
	assert(PutRecordInput, "You must provide a PutRecordInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.PutRecord",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRecordInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRecord synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRecordInput
-- @return response
-- @return error_message
function M.PutRecordSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRecordAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
