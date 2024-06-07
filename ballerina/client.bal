// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import dayforce.oas;

public isolated client class Client {
    final oas:Client genClient;
    final http:Client paginatedClient;
    final string serviceUrl;
    # Gets invoked to initialize the `connector`.
    #
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ConnectionConfig config, string serviceUrl = "https://ustest241-services.dayforcehcm.com/Api") returns error? {
        http:ClientConfiguration httpClientConfig = {auth: config.auth, httpVersion: config.httpVersion, timeout: config.timeout, forwarded: config.forwarded, poolConfig: config.poolConfig, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, validation: config.validation};
        if config.http1Settings is ClientHttp1Settings {
            ClientHttp1Settings settings = check config.http1Settings.ensureType();
            httpClientConfig.http1Settings = {...settings};
        }
        if config.http2Settings is http:ClientHttp2Settings {
            httpClientConfig.http2Settings = check config.http2Settings.ensureType();
        }
        if config.cache is http:CacheConfig {
            httpClientConfig.cache = check config.cache.ensureType();
        }
        if config.responseLimits is http:ResponseLimitConfigs {
            httpClientConfig.responseLimits = check config.responseLimits.ensureType();
        }
        if config.secureSocket is http:ClientSecureSocket {
            httpClientConfig.secureSocket = check config.secureSocket.ensureType();
        }
        if config.proxy is http:ProxyConfig {
            httpClientConfig.proxy = check config.proxy.ensureType();
        }
        http:Client httpEp = check new (serviceUrl, httpClientConfig);
        oas:Client genClient = check new oas:Client(config, serviceUrl);
        self.genClient = genClient;
        self.paginatedClient = httpEp;
        self.serviceUrl = serviceUrl;
        return;
    }
    # Add new HR Bulk Export details into Job Queue tables.
    #
    # + isValidateOnly - This parameter used to run a test case without fail
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A HR Bulk Export is created with an empty response body. 
    resource isolated function post [string clientNamespace]/v1/GetEmployeeBulkAPI(true isValidateOnly, EmployeeExportParams payload) returns json|error {
        return self.genClient->/[clientNamespace]/v1/GetEmployeeBulkAPI.post(isValidateOnly, payload);
    }
    # Get the status of Job Queue tables.
    #
    # + backgroundJobQueueItemId - To find a status of employee export background job
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Job Status and Access API URL 
    resource isolated function get [string clientNamespace]/v1/GetEmployeeBulkAPI/Status/[int:Signed32 backgroundJobQueueItemId]() returns Payload_Object|error {
        return self.genClient->/[clientNamespace]/v1/GetEmployeeBulkAPI/Status/[backgroundJobQueueItemId].get();
    }
    # Get bulk employee of data as a string in json format
    # ```ballerina
    # PaginatedPayload_IEnumerable_Employee? employeeDetails = check dayforce->/[NAMESPACE]/v1/GetEmployeeBulkAPI/Data/["12810"];
    # if employees is PaginatedPayload_IEnumerable_Employee {
    #    employeeDetails = check dayforce->/[NAMESPACE]/v1/GetEmployeeBulkAPI/Data/["12810"](employeeDetails.Paging);
    # }
    #```
    # + jobId - To get background job processed data for employee export.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + pagination - The pagination information to be used for the request if there is any. You can obtain the Paging record from the initial request's response.
    # + return - Returns a page of employee data, `nil` if the given paginated data does not have a url(marking the end of the pages) or else an error if the request fails.
    resource isolated function get [string clientNamespace]/v1/GetEmployeeBulkAPI/Data/[string jobId](Paging? pagination = ()) returns PaginatedPayload_IEnumerable_Employee|error? {
        string:RegExp re = re `${self.serviceUrl}`;
        if pagination !is () {
            if pagination.Next is () || pagination.Next == "" {
                return ();
            }
            string[] result = re.split(<string>pagination.Next);
            string resourcePath = string `${result[1]}`;
            PaginatedPayload_IEnumerable_Employee response = check self.paginatedClient->get(resourcePath);
            return response;
        }
        return self.genClient->/[clientNamespace]/v1/GetEmployeeBulkAPI/Data/[jobId].get();
    }
    # Get Reports
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Reports 
    resource isolated function get [string clientNamespace]/V1/Analytics/Reports() returns Payload_IEnumerable_AnalyticsReportDefinitions|Payload_IEnumerable_Object|error {
        return self.genClient->/[clientNamespace]/V1/Analytics/Reports.get();
    }
    # Get Dataset
    #
    # + datasetId - Uniquely identifies a dataset.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Contents of a dataset 
    resource isolated function get [string clientNamespace]/V1/Analytics/Datasets/[string datasetId](string? page = (), string? datasetPageSize = ()) returns Payload_AnalyticsReportDataset|error {
        return self.genClient->/[clientNamespace]/V1/Analytics/Datasets/[datasetId].get(page, datasetPageSize);
    }
    # Refresh Dataset
    #
    # + datasetId - Uniquely identifies a dataset.
    # + isValidateOnly - This parameter is applied here for testing purposes. Please remember to remove it when utilizing this endpoint to actually refresh the dataset
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Status of a dataset refresh and its metadata 
    resource isolated function post [string clientNamespace]/V1/Analytics/Datasets/[string datasetId](true isValidateOnly, AnalyticsReportMetadata payload) returns Payload_AnalyticsDatasetMetadataResponse|json|error {
        return self.genClient->/[clientNamespace]/V1/Analytics/Datasets/[datasetId].post(isValidateOnly, payload);
    }
    # Create Dataset
    #
    # + reportId - Uniquely identifies a report.
    # + isValidateOnly - This parameter is applied here for testing purposes. Please remember to remove it when utilizing this endpoint to actually post the report
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Metadata of a dataset 
    resource isolated function post [string clientNamespace]/V1/Analytics/Reports/[int:Signed32 reportId](true isValidateOnly, AnalyticsReportMetadata payload) returns Payload_Object|Payload_AnalyticsDatasetMetadata|error {
        return self.genClient->/[clientNamespace]/V1/Analytics/Reports/[reportId].post(isValidateOnly, payload);
    }
    # Get Dataset Metadata
    #
    # + datasetId - Uniquely identifies a dataset.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Metadata of a dataset 
    resource isolated function get [string clientNamespace]/V1/Analytics/Datasets/[string datasetId]/Metadata() returns Payload_Object|Payload_AnalyticsDatasetMetadata|error {
        return self.genClient->/[clientNamespace]/V1/Analytics/Datasets/[datasetId]/Metadata.get();
    }
    # Get Report Metadata
    #
    # + reportId - Uniquely identifies a report.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Metadata of the report 
    resource isolated function get [string clientNamespace]/V1/Analytics/Reports/[int:Signed32 reportId]/Metadata() returns Payload_IEnumerable_AnalyticsReportMetadata|Payload_AnalyticsReportMetadata|error {
        return self.genClient->/[clientNamespace]/V1/Analytics/Reports/[reportId]/Metadata.get();
    }
    # GET AppUserSSO Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The AppUserSSO with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/SSOAccounts(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeSSOAccount|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/SSOAccounts.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a AppUserSSO
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/SSOAccounts(true isValidateOnly, EmployeeSSOAccount payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/SSOAccounts.post(isValidateOnly, payload);
    }
    # PATCH a AppUserSSO
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The AppUserSSO is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/SSOAccounts(true isValidateOnly, EmployeeSSOAccount payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/SSOAccounts.patch(isValidateOnly, payload);
    }
    # Delete an SSOAccount entry that has matching {loginName}
    #
    # + employeeXRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be deleted.
    # The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + loginName - The loginName of the SSOAccount to be deleted from this Employee
    # + isValidateOnly - When a TRUE value is used in this parameter, this operation is validated without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An SSO Account is deleted for this Employee 
    resource isolated function delete [string clientNamespace]/V1/Employees/[string employeeXRefCode]/SSOAccounts/[string loginName](true isValidateOnly) returns Payload_SubordinateEntityReferences|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[employeeXRefCode]/SSOAccounts/[loginName].delete(isValidateOnly);
    }
    # GET List of Employee Availability
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + filterAvailabilityStartDate - Inclusive period start date to determine which employee availability data to retrieve . Example: 2017-01-01T00:00:00
    # + filterAvailabilityEndDate - Inclusive period end date to determine which employee availability data to retrieve . Example: 2017-01-01T00:00:00
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of employee availability meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Availability(string filterAvailabilityStartDate, string filterAvailabilityEndDate) returns Payload_IEnumerable_EmployeeAvailability|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Availability.get(filterAvailabilityStartDate, filterAvailabilityEndDate);
    }
    # Post Employee Availablity
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/[string employeeXRefCode]/EmployeeAvailability(true isValidateOnly, EmployeeAvailabilityPostAPIRequestDTO payload) returns Payload_IEnumerable_ProcessResult|error {
        return self.genClient->/[clientNamespace]/V1/[employeeXRefCode]/EmployeeAvailability.post(isValidateOnly, payload);
    }
    # GET List of Background Job Logs
    #
    # + pageSize - Use to specify the number of records returned per page in the paginated response. This value will be constrained to be between 1 and 10,000 (default is 1,000).
    # + codeName - Use to search for background job logs using a comma separated list of code names. If omitted, all job code names are included.
    # + status - Use to search for background job logs by job status. If omitted, all job statuses are included. Accepted values: Queued, In Progress, Paused, Completed, Cancelled, Error.
    # + hasItemLevelErrors - Use to search for background job logs with item-level errors. If omitted, both logs with and without item level errors are included. Accepted values: True, False
    # + queueTimeUtcStart - The beginning date/time used when searching for logs that were queued in a specified time frame. When a value is provided for this parameter, a queueTimeUtcEnd value must also be provided.  Example: 2017-01-01T13:24:56
    # + queueTimeUtcEnd - The ending date/time used when searching for logs that were queued in a specified time frame. When a value is provided for this parameter, a queueTimeUtcStart value must also be provided.  Example: 2017-01-01T13:24:56
    # + wasScheduled - Use to search for background job logs that were scheduled or ran on-demand. If omitted, logs for both scheduled and on-demand background jobs are included.  Accepted values: True, False
    # + submittedBy - Use to search for background job logs that were manually submitted by a specified user. If omitted, all job submitters including the System are included.
    # + filterUpdateTimeUtcStart - The beginning date/time used when searching for background job logs with updates in a specified time frame. When a value is provided for this parameter, a filterUpdateTimeUtcEnd value must also be provided.  Example: 2017-01-01T13:24:56
    # + filterUpdateTimeUtcEnd - The ending date/time used when searching for background job logs with updates in a specified time frame. When a value is provided for this parameter, a filterUpdateTimeUtcStart value must also be provided.  Example: 2017-01-01T13:24:56
    # + includeSuppressedTaskTypes - Used to specify whether commonly suppressed background jobs should be included in the filtered results.  Accepted values: True, False.  Defaults to False.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of background job logs meeting the search criteria. Parameters, JobInformation, ErrorInformation, DebugInformation and FileList fields are not retrieved with this call. 
    resource isolated function get [string clientNamespace]/V1/BackgroundJobLogs(int:Signed32? pageSize = (), string? codeName = (), string? status = (), boolean? hasItemLevelErrors = (), string? queueTimeUtcStart = (), string? queueTimeUtcEnd = (), boolean? wasScheduled = (), string? submittedBy = (), string? filterUpdateTimeUtcStart = (), string? filterUpdateTimeUtcEnd = (), boolean? includeSuppressedTaskTypes = ()) returns PaginatedPayload_IEnumerable_BackgroundJobLog|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundJobLogs.get(pageSize, codeName, status, hasItemLevelErrors, queueTimeUtcStart, queueTimeUtcEnd, wasScheduled, submittedBy, filterUpdateTimeUtcStart, filterUpdateTimeUtcEnd, includeSuppressedTaskTypes);
    }
    # GET Details of a Background Job Log based on backgroundLogId
    #
    # + backgroundJobLogId - The identifier of the background job log to retrieve further information.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A background job log that meets the search criteria. 
    resource isolated function get [string clientNamespace]/V1/BackgroundJobLogs/[string backgroundJobLogId]() returns Payload_BackgroundJobLog|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundJobLogs/[backgroundJobLogId].get();
    }
    # PATCH (Update) a Background Screening Status for a specific candidate.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The Json payload containing an event and the new status.
    # + return - The Background Screening request is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening/Status(true isValidateOnly, BackgroundScreeningStatus payload) returns BackgroundScreeningStatus|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundScreening/Status.patch(isValidateOnly, payload);
    }
    # PATCH (Update) a Background Screening Adjudication Status for a specific candidate.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The Json payload containing an event and the new adjudication status.
    # + return - The Background Screening request is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening/AdjudicationStatus(true isValidateOnly, BackgroundScreeningAdjudicationStatus payload) returns BackgroundScreeningAdjudicationStatus|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundScreening/AdjudicationStatus.patch(isValidateOnly, payload);
    }
    # POST Background Screening Packages.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Background Screening Packages are added, no response body. 
    resource isolated function post [string clientNamespace]/V1/BackgroundScreening/Package(true isValidateOnly, BackgroundScreeningPackage payload) returns BackgroundScreeningPackage[]|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundScreening/Package.post(isValidateOnly, payload);
    }
    # POST Background Screening Billing Codes.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Background Screening Billing Codes are added, no response body. 
    resource isolated function post [string clientNamespace]/V1/BackgroundScreening/BillingCode(true isValidateOnly, BackgroundScreeningBillingCode payload) returns BackgroundScreeningBillingCode[]|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundScreening/BillingCode.post(isValidateOnly, payload);
    }
    # POST Background Screening Provider Statuses.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Custom Provider Statuses are added, no response body. 
    resource isolated function post [string clientNamespace]/V1/BackgroundScreening/ProviderStatuses(true isValidateOnly, BackgroundScreeningProviderStatuses payload) returns BackgroundScreeningProviderStatuses|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundScreening/ProviderStatuses.post(isValidateOnly, payload);
    }
    # PATCH Background Screening Status, URL and Report containing PII
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The Json payload containing Status, Url and Report containing PII.
    # + return - The Background Screening Status, Url and Report containing PII are added, no response body. 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening(true isValidateOnly, BackgroundScreeningStatusUrlReport payload) returns BackgroundScreeningStatusUrlReport[]|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundScreening.patch(isValidateOnly, payload);
    }
    # PATCH Background Screening Report containing Personal Identifiable Informations
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The Json payload with a Report containing Personal Identifiable Informations.
    # + return - The Background Screening Report containing Personal Identifiable Informations are added, no response body. 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening/PersonalIdentifiableInformation(true isValidateOnly, BackgroundScreeningReport payload) returns BackgroundScreeningReport[]|error {
        return self.genClient->/[clientNamespace]/V1/BackgroundScreening/PersonalIdentifiableInformation.patch(isValidateOnly, payload);
    }
    # GET Benefits ongoing carrier feed export in JSON format
    #
    # + carrierXRefCode - A reference code that maps to a given carrier.
    # + planStartDate - The plan start date.
    # + planEndDate - The plan end date.
    # + payrollEarningAccumulationXRefCodes - A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations.
    # + blackoutPeriodStartDate - If applicable, the blackout period start date.
    # + lookBackDays - The number of days the export will look back from execution date to find employee elections.
    # + lookForwardDays - The number of days the export will look forward from execution date to find employee elections.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The CarrierFeeds model in json format. 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedOngoingExports(string carrierXRefCode, string planStartDate, string planEndDate, string? payrollEarningAccumulationXRefCodes = (), string? blackoutPeriodStartDate = (), int:Signed32? lookBackDays = (), int:Signed32? lookForwardDays = ()) returns Payload_CarrierFeeds|error {
        return self.genClient->/[clientNamespace]/V1/BenefitsCarrierFeedOngoingExports.get(carrierXRefCode, planStartDate, planEndDate, payrollEarningAccumulationXRefCodes, blackoutPeriodStartDate, lookBackDays, lookForwardDays);
    }
    # GET Benefits open enrollment carrier feed export in JSON format
    #
    # + carrierXRefCode - A reference code that maps to a given carrier.
    # + planStartDate - The plan start date.
    # + planEndDate - The plan end date.
    # + payrollEarningAccumulationXRefCodes - A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The CarrierFeeds model in json format. 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedOpenEnrollmentExports(string carrierXRefCode, string planStartDate, string? planEndDate = (), string? payrollEarningAccumulationXRefCodes = ()) returns Payload_CarrierFeeds|error {
        return self.genClient->/[clientNamespace]/V1/BenefitsCarrierFeedOpenEnrollmentExports.get(carrierXRefCode, planStartDate, planEndDate, payrollEarningAccumulationXRefCodes);
    }
    # GET Benefits multi carrier ongoing carrier feed export in JSON format
    #
    # + carrierXRefCodes - A comma delimited list of reference codes, mapping to a list of individual carriers.
    # + planStartDate - The plan start date.
    # + planEndDate - The plan end date.
    # + payrollEarningAccumulationXRefCodes - A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations.
    # + blackoutPeriodStartDate - If applicable, the blackout period start date.
    # + lookBackDays - The number of days the export will look back from execution date to find employee elections.
    # + lookForwardDays - The number of days the export will look forward from execution date to find employee elections.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The CarrierFeeds model in json format. 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedMultiCarrierOngoingExports(string carrierXRefCodes, string planStartDate, string planEndDate, string? payrollEarningAccumulationXRefCodes = (), string? blackoutPeriodStartDate = (), int:Signed32? lookBackDays = (), int:Signed32? lookForwardDays = ()) returns Payload_CarrierFeeds|error {
        return self.genClient->/[clientNamespace]/V1/BenefitsCarrierFeedMultiCarrierOngoingExports.get(carrierXRefCodes, planStartDate, planEndDate, payrollEarningAccumulationXRefCodes, blackoutPeriodStartDate, lookBackDays, lookForwardDays);
    }
    # GET Benefits multi carrier open enrollment carrier feed export in JSON format
    #
    # + carrierXRefCodes - A comma delimited list of reference codes, mapping to a list of individual carriers.
    # + planStartDate - The plan start date.
    # + planEndDate - The plan end date.
    # + payrollEarningAccumulationXRefCodes - A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The CarrierFeeds model in json format. 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedMultiCarrierOpenEnrollmentExports(string carrierXRefCodes, string planStartDate, string? planEndDate = (), string? payrollEarningAccumulationXRefCodes = ()) returns Payload_CarrierFeeds|error {
        return self.genClient->/[clientNamespace]/V1/BenefitsCarrierFeedMultiCarrierOpenEnrollmentExports.get(carrierXRefCodes, planStartDate, planEndDate, payrollEarningAccumulationXRefCodes);
    }
    # POST a Candidate Application and/or a Candidate Profile
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, this will validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The Json payload containing candidate and application details.
    # + return - Candidate profile/application have been accepted. 
    resource isolated function post [string clientNamespace]/V1/CandidateSourcing(true isValidateOnly, JobPostingApplicantModel payload) returns Response|error {
        return self.genClient->/[clientNamespace]/V1/CandidateSourcing.post(isValidateOnly, payload);
    }
    # GET Job Posting Questionnaires
    #
    # + jobPostingId - The job posting id
    # + cultureId - The culture id to determine the language screening questions
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of questionnaires for a particular job posting. Each questionnaire section is separated by a page break object. 
    resource isolated function get [string clientNamespace]/V1/JobPostingQuestionnaires(int:Signed32 jobPostingId, int:Signed32 cultureId) returns Payload_IEnumerable_QuestionModel|error {
        return self.genClient->/[clientNamespace]/V1/JobPostingQuestionnaires.get(jobPostingId, cultureId);
    }
    # GET Candidate Application Statuses
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of candidate application statuses for all job applications sent by the provider calling this endpoint. Once the latest unsent application statuses are provided via this endpoint, no further data will be provided on subsequent calls unless further application status updates have been made. This endpoint will return application statuses in tranches of up to 1000 statuses per call and will continue to do so for subsequent calls until all unsent statuses have been provided. 
    resource isolated function get [string clientNamespace]/V1/CandidateApplicationStatuses() returns Payload_CandidateApplicationStatusUpdatesPaginationModel|error {
        return self.genClient->/[clientNamespace]/V1/CandidateApplicationStatuses.get();
    }
    # GET Job Postings
    #
    # + companyName - Company name. Example: XYZ Co.
    # + parentCompanyName - Parent Company name. Example: Ceridian
    # + internalJobBoardCode - XRefCode of Job Board. Example: CANDIDATEPORTAL
    # + includeActivePostingOnly - If true, then exclude inactive postings from the result. If False, then the 'Last Update Time From' and 'Last Update Time To' parameters are required and the range specified between the 'Last Update Time From' and 'Last Update Time To' parameters must not be larger than 1 month. Example: True
    # + lastUpdateTimeFrom - A starting timestamp of last updated job posting. Example: 2017-01-01T13:24:56
    # + lastUpdateTimeTo - An ending timestamp of last updated job posting. Example: 2017-02-01T13:24:56
    # + datePostedFrom - A starting timestamp of job posting date. Example: 2017-01-01T13:24:56
    # + datePostedTo - An ending timestamp of job posting date. Example: 2017-02-01T13:24:56
    # + htmlDescription - A flag to feed the jobs over with html formatting or plain text description
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of all active external job postings (i.e. public facing job postings) based on specified filter parameters. Each job posting included in the response also includes URLs for Candidate Sourcing and Apply endpoints. Users with access to the Candidate Sourcing and Apply feature should use this endpoint for obtaining job postings rather than GET JobFeeds. 
    resource isolated function get [string clientNamespace]/V1/JobPostings(string? companyName = (), string? parentCompanyName = (), string? internalJobBoardCode = (), boolean? includeActivePostingOnly = (), string? lastUpdateTimeFrom = (), string? lastUpdateTimeTo = (), string? datePostedFrom = (), string? datePostedTo = (), boolean? htmlDescription = ()) returns Payload_IEnumerable_JobFeed|error {
        return self.genClient->/[clientNamespace]/V1/JobPostings.get(companyName, parentCompanyName, internalJobBoardCode, includeActivePostingOnly, lastUpdateTimeFrom, lastUpdateTimeTo, datePostedFrom, datePostedTo, htmlDescription);
    }
    # GET the list of all certifications
    #
    # + pageSize - The page size for the pagination (Default is 1000)
    # + xRefCode - The xrefcode filter for the certifications
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of certifications 
    resource isolated function get [string clientNamespace]/V1/Certifications(int:Signed32? pageSize = (), string? xRefCode = ()) returns PaginatedPayload_IEnumerable_LMSCertification|error {
        return self.genClient->/[clientNamespace]/V1/Certifications.get(pageSize, xRefCode);
    }
    # POST one certification
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The certification payload that will be used for certification creation
    # + return - A certification is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Certifications(true isValidateOnly, LMSCertification payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Certifications.post(isValidateOnly, payload);
    }
    # PATCH one certification
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The certification payload that will be used for certification modification
    # + return - A certification is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Certifications(string xRefCode, true isValidateOnly, LMSCertification payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Certifications.patch(xRefCode, isValidateOnly, payload);
    }
    # GET Client Metadata
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Returns client metadata. 
    resource isolated function get [string clientNamespace]/V1/ClientMetadata() returns ClientMetadata|error {
        return self.genClient->/[clientNamespace]/V1/ClientMetadata.get();
    }
    # GET client payroll countries.
    #
    # + countryCodes - Comma separated list of country codes to filter the results.
    # + hcmPayroll - Flag to filter countries for HCM Payroll.
    # + connectedPay - Flag to filter countries for Connected Pay.
    # + payGroup - Flag to filter countries having pay group(s).
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Client Payroll Countries. 
    resource isolated function get [string clientNamespace]/V1/ClientPayrollCountry(string? countryCodes = (), boolean? hcmPayroll = (), boolean? connectedPay = (), boolean? payGroup = ()) returns Payload_ClientPayrollCountry|error {
        return self.genClient->/[clientNamespace]/V1/ClientPayrollCountry.get(countryCodes, hcmPayroll, connectedPay, payGroup);
    }
    # POST Client Payroll Country.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The ClientPayrollCountry has been added successfully, no response body. 
    resource isolated function post [string clientNamespace]/V1/ClientPayrollCountry(true isValidateOnly, ClientPayrollCountryUpdate[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/ClientPayrollCountry.post(isValidateOnly, payload);
    }
    # PATCH Client Payroll Country.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - ClientPayrollCountry has been updated successfully, no response body. 
    resource isolated function patch [string clientNamespace]/V1/ClientPayrollCountry(true isValidateOnly, ClientPayrollCountryUpdate[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/ClientPayrollCountry.patch(isValidateOnly, payload);
    }
    # GET a List of ContactInformationTypes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of ContactInformationType XRefCodes. 
    resource isolated function get [string clientNamespace]/V1/ContactInformationTypes() returns Payload_IEnumerable_ContactInformationType|error {
        return self.genClient->/[clientNamespace]/V1/ContactInformationTypes.get();
    }
    # GET a ContactInformationType with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The ContactInformationType with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/ContactInformationTypes/[string xrefCode]() returns Payload_ContactInformationType|error {
        return self.genClient->/[clientNamespace]/V1/ContactInformationTypes/[xrefCode].get();
    }
    # GET the list of all courses
    #
    # + pageSize - The page size for the pagination (Default is 1000)
    # + courseType - The course type filter for the courses
    # + courseProvider - The course provider filter for the courses
    # + xRefCode - The xrefcode filter for the courses
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of courses 
    resource isolated function get [string clientNamespace]/V1/Courses(int:Signed32? pageSize = (), string? courseType = (), string? courseProvider = (), string? xRefCode = ()) returns PaginatedPayload_IEnumerable_Course|error {
        return self.genClient->/[clientNamespace]/V1/Courses.get(pageSize, courseType, courseProvider, xRefCode);
    }
    # POST one course
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The course payload that will be used for course creation
    # + return - A course is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Courses(true isValidateOnly, Course payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Courses.post(isValidateOnly, payload);
    }
    # PATCH one course
    #
    # + xRefCode - The course payload that will be used for course creation
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The course payload that will be used for course creation
    # + return - A course is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Courses(string xRefCode, true isValidateOnly, Course payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Courses.patch(xRefCode, isValidateOnly, payload);
    }
    # GET List of Data Entries.
    #
    # + payGroupXRefCode - The pay group reference code.
    # + entryType - The type of the data entry.
    # + periodStartDate - The pay run period start date.
    # + periodEndDate - The pay run period end date.
    # + payDate - The pay run pay date.
    # + ppn - The pay run's pay period number (format: ##-##).
    # + orgUnitXRefCode - The user org unit reference code to load data entries from (in org unit hierarchy).
    # + codeType - The type of the data entry codes.
    # + codeXRefCode - The data entry code reference code.
    # + employeeXRefCode - The employee reference code.
    # + projectXRefCodes - The comma separated project reference codes.
    # + sinceLastModifiedTimestamp - Last modified timestamp to load entries since.
    # + pageSize - Number of records to be loaded.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Payroll data entries. 
    resource isolated function get [string clientNamespace]/V1/Payroll/DataEntry/[string payGroupXRefCode]/[string entryType](string? periodStartDate = (), string? periodEndDate = (), string? payDate = (), string? ppn = (), string? orgUnitXRefCode = (), string? codeType = (), string? codeXRefCode = (), string? employeeXRefCode = (), string? projectXRefCodes = (), string? sinceLastModifiedTimestamp = (), string? 'source = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_DataEntry|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/DataEntry/[payGroupXRefCode]/[entryType].get(periodStartDate, periodEndDate, payDate, ppn, orgUnitXRefCode, codeType, codeXRefCode, employeeXRefCode, projectXRefCodes, sinceLastModifiedTimestamp, 'source, pageSize);
    }
    # Get a list of Person Management History
    #
    # + pageSize - The number of records returned per page in the paginated response
    # + policy - Person Management Policy Types such as HR, WFM, etc
    # + personType - Can be either Employee or Candidate
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which Person Management History data to search when records have specific start and end dates.The service defaults to null if the requester does not specify a value.Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which Person Management History data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Person Management History. 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PersonManagementHistory(int:Signed32? pageSize = (), string? policy = (), string? personType = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns PaginatedPayload_PersonManagementHistory|error {
        return self.genClient->/[clientNamespace]/V1/DataPrivacy/PersonManagementHistory.get(pageSize, policy, personType, contextDateRangeFrom, contextDateRangeTo);
    }
    # Get a list of Person Management Exemption
    #
    # + pageSize - The number of records returned per page in the paginated response
    # + number - Represent the Employee number
    # + personType - Can be either Employee or Candidate
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Person Management Exemption. 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PersonManagementExemptions(int:Signed32? pageSize = (), string? number = (), string? personType = ()) returns PaginatedPayload_PersonManagementExemption|error {
        return self.genClient->/[clientNamespace]/V1/DataPrivacy/PersonManagementExemptions.get(pageSize, number, personType);
    }
    # Get a list of Person Management Erase History
    #
    # + pageSize - The number of records returned per page in the paginated response
    # + personType - Can be either Employee or Candidate
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which user data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which user data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + requestId - The right to be forgotten request identifier. The value provided must be exact match; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Person Management Erase History. 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PersonManagementEraseHistory(int:Signed32? pageSize = (), string? personType = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = (), int:Signed32? requestId = ()) returns PaginatedPayload_PersonManagementEraseHistory|error {
        return self.genClient->/[clientNamespace]/V1/DataPrivacy/PersonManagementEraseHistory.get(pageSize, personType, contextDateRangeFrom, contextDateRangeTo, requestId);
    }
    # Get a List of Policy Associations
    #
    # + countryCodes - The country codes to search policies for, if ommited all countries will be returned
    # + pageSize - The number of records returned per page in the paginated response
    # + personType - Can be either Employee or Candidate
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of PolicyAssociation data meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PolicyAssociations(string? countryCodes = (), int:Signed32? pageSize = (), string? personType = (), string? xRefCode = ()) returns PaginatedPayload_IEnumerable_PolicyAssociation|error {
        return self.genClient->/[clientNamespace]/V1/DataPrivacy/PolicyAssociations.get(countryCodes, pageSize, personType, xRefCode);
    }
    # Get List of Deduction Definitions.
    #
    # + countryCodes - &gt;List of country codes with comma separator to filter the result base on country.
    # + deductionXRefCodes - List of Deduction Reference Codes with comma separator to filter the result.
    # + taxComplianceXRefCodes - List of Tax Compliance Reference Codes (DeductionCodeXRefCodes) with comma separator to filter the result.
    # + taxTypeCodes - List of Tax Type Codes with comma separator to filter the result.
    # + systemDeduction - Set to True to get only System Defined Deduction, or set to False to get only User Defined Deductions.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - List of Deduction Definitions and associated payees. 
    resource isolated function get [string clientNamespace]/V1/DeductionDefinition(string? countryCodes = (), string? deductionXRefCodes = (), string? taxComplianceXRefCodes = (), string? taxTypeCodes = (), boolean? systemDeduction = ()) returns Payload_IEnumerable_DeductionDefinition|error {
        return self.genClient->/[clientNamespace]/V1/DeductionDefinition.get(countryCodes, deductionXRefCodes, taxComplianceXRefCodes, taxTypeCodes, systemDeduction);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Department XRefCodes. 
    resource isolated function get [string clientNamespace]/V1/Departments() returns Payload_IEnumerable_Department|error {
        return self.genClient->/[clientNamespace]/V1/Departments.get();
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A Department is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Departments(true isValidateOnly, Department payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Departments.post(isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A Department XRefCode meets the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Departments/[string xRefCode](true isValidateOnly) returns Payload_Department|error {
        return self.genClient->/[clientNamespace]/V1/Departments/[xRefCode].get(isValidateOnly);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A Department is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Departments/[string xRefCode](true isValidateOnly, Department payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Departments/[xRefCode].patch(isValidateOnly, payload);
    }
    # GET DocMgmtSecurityGroupUserMap Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The DocMgmtSecurityGroupUserMap with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DocumentManagementSecurityGroups() returns Payload_IEnumerable_EmployeeDocumentManagementSecurityGroup|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DocumentManagementSecurityGroups.get();
    }
    # POST a DocMgmtSecurityGroupUserMap
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The DocMgmtSecurityGroupUserMap is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/DocumentManagementSecurityGroups(true isValidateOnly, EmployeeDocumentManagementSecurityGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DocumentManagementSecurityGroups.post(isValidateOnly, payload);
    }
    # PATCH a DocMgmtSecurityGroupUserMap
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The DocMgmtSecurityGroupUserMap is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/DocumentManagementSecurityGroups(true isValidateOnly, EmployeeDocumentManagementSecurityGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DocumentManagementSecurityGroups.patch(isValidateOnly, payload);
    }
    # GET a List of Documents
    #
    # + employeeXRefCode - Filter for documents attached to the uniquely identified employee specified. Partial search is not supported, so provide the full value. Otherwise, a 400 error will be returned.
    # + lastModifiedTimestampStart - Filter for documents starting from this date time value. The lastModifiedTimestampStart and lastModifiedTimestampEnd criteria require additional criteria to be specified.
    # + lastModifiedTimestampEnd - Filter for documents until this date time value. The lastModifiedTimestampStart and lastModifiedTimestampEnd criteria require additional criteria to be specified.
    # + entity - Filter documents attached to this specified entity. The entity and entityTypeXRefCode must both be provided to apply this filter criteria.
    # + entityTypeXRefCode - Filter for documents associated with this specified Entity Type. The current Entity Types supported for filtering are: "BENEFIT_PLAN", "BENEFIT_PLAN_OPTION", "HR_POLICY", "PAY_RUN", "PAY_GROUP_CALENDAR", "EMPLOYEE_FILE". The entity and entityTypeXRefCode must both be provided to apply this filter criteria.
    # + documentTypeXRefCode - Filter for documents associated with this specified Document Type
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Returns documents associated with the given criteria. 
    resource isolated function get [string clientNamespace]/V1/Documents(string? employeeXRefCode = (), string? lastModifiedTimestampStart = (), string? lastModifiedTimestampEnd = (), string? entity = (), string? entityTypeXRefCode = (), string? documentTypeXRefCode = ()) returns Payload_IEnumerable_Document|error {
        return self.genClient->/[clientNamespace]/V1/Documents.get(employeeXRefCode, lastModifiedTimestampStart, lastModifiedTimestampEnd, entity, entityTypeXRefCode, documentTypeXRefCode);
    }
    # GET Document Details
    #
    # + documentGuid - Uniquely identifies the document you want to retrieve. Partial search is not supported, so provide the full value. Otherwise, a 400 error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Returns the document identified by the documentGuid 
    resource isolated function get [string clientNamespace]/V1/documents/[string documentGuid]() returns Payload_ArchiveDocument|error {
        return self.genClient->/[clientNamespace]/V1/documents/[documentGuid].get();
    }
    # POST (Create) Queue Document Import task
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the metadata entities and elements of document import to be processed in POST (queue task) operation.
    # + return - Document import queued. 
    resource isolated function post [string clientNamespace]/V1/Documents/Import/Queue(true isValidateOnly, DocumentImportQueueRequest[] payload) returns Payload_DocumentImportQueueResponse|error {
        return self.genClient->/[clientNamespace]/V1/Documents/Import/Queue.post(isValidateOnly, payload);
    }
    # Upload one or more documents using a multipart request.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Document(s) processed. 
    resource isolated function post [string clientNamespace]/V1/Documents/Upload(true isValidateOnly) returns DocMgmtUploadResponse|error {
        return self.genClient->/[clientNamespace]/V1/Documents/Upload.post(isValidateOnly);
    }
    # GET List of Earning Definitions.
    #
    # + countryCodes - List of country codes with comma separator to filter the result base on country.
    # + earningXRefCodes - List of Earning Reference Codes with comma separator to filter the result.
    # + taxComplianceXRefCodes - List of Tax Compliance Reference Codes (EarningCodeXRefCodes) with comma separator to filter the result.
    # + earningTypeXRefCodes - List of Earning Type Reference Codes with comma separator to filter the result.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - List of Earning Definitions and associated payees. 
    resource isolated function get [string clientNamespace]/V1/EarningDefinition(string? countryCodes = (), string? earningXRefCodes = (), string? taxComplianceXRefCodes = (), string? earningTypeXRefCodes = ()) returns Payload_IEnumerable_EarningDefinition|error {
        return self.genClient->/[clientNamespace]/V1/EarningDefinition.get(countryCodes, earningXRefCodes, taxComplianceXRefCodes, earningTypeXRefCodes);
    }
    # GET Earning Statement Headers
    #
    # + pageSize - The number of records returned per page in the paginated response
    # + payGroupXRefCode - The pay group's reference code.
    # + payDate - The pay run's pay date (format: yyyy-mm-dd).
    # + payPeriodStartDate - The pay run's period start date (format: yyyy-mm-dd).
    # + payPeriodEndDate - The pay run's period end date (format: yyyy-mm-dd).
    # + ppn - The PayPeriodNumber(format: ##-##).
    # + employeeXRefCodes - Comma delimited list of XRef codes for employees
    # + employeeLastNames - Comma delimited list of last names for employees
    # + employeePayDateBegin - The employee's pay start date(format: yyyy-mm-dd).
    # + employeePayDateEnd - The employee's pay end date(format: yyyy-mm-dd).
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An encrypted string which contains list of earning statement headers. 
    resource isolated function get [string clientNamespace]/V1/EarningStatementHeader(int:Signed32? pageSize = (), string? payGroupXRefCode = (), string? payDate = (), string? payPeriodStartDate = (), string? payPeriodEndDate = (), string? ppn = (), string? employeeXRefCodes = (), string? employeeLastNames = (), string? employeePayDateBegin = (), string? employeePayDateEnd = ()) returns PaginatedPayload_EarningStatementHeader|error {
        return self.genClient->/[clientNamespace]/V1/EarningStatementHeader.get(pageSize, payGroupXRefCode, payDate, payPeriodStartDate, payPeriodEndDate, ppn, employeeXRefCodes, employeeLastNames, employeePayDateBegin, employeePayDateEnd);
    }
    # GET Earning Statement Pdf
    #
    # + employeeXRefCode - Employee XRefCode.
    # + earningStatementXRefCode - Unique identifier for the Earning Statement.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Earning statement document. 
    resource isolated function get [string clientNamespace]/V1/EarningStatement/[string earningStatementXRefCode](string employeeXRefCode) returns Payload_List_EarningStatementDocument|error {
        return self.genClient->/[clientNamespace]/V1/EarningStatement/[earningStatementXRefCode].get(employeeXRefCode);
    }
    # GET EmergencyContact Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The emergency contacts of employee with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmergencyContacts(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeEmergencyContact|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmergencyContacts.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmergencyContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmergencyContact is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmergencyContacts(true isValidateOnly, EmployeeEmergencyContact payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmergencyContacts.post(isValidateOnly, payload);
    }
    # PATCH an EmergencyContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmergencyContact is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmergencyContacts(true isValidateOnly, EmployeeEmergencyContact payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmergencyContacts.patch(isValidateOnly, payload);
    }
    # GET DEUEmployeeAccidentInsurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The DEUEmployeeAccidentInsurance with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAccidentInsurance/AccidentInsurance() returns Payload_IEnumerable_DEUEmployeeAccidentInsurance|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeAccidentInsurance/AccidentInsurance.get();
    }
    # POST A dEUEmployeeAccidentInsurance
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A DEUEmployeeAccidentInsurance is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAccidentInsurance/AccidentInsurance(true isValidateOnly, DEUEmployeeAccidentInsurance payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeAccidentInsurance/AccidentInsurance.post(isValidateOnly, payload);
    }
    # PATCH an DEUEmployeeAccidentInsurance
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The dEUEmployeeAccidentInsurance is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAccidentInsurance/AccidentInsurance(true isValidateOnly, DEUEmployeeAccidentInsurance payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeAccidentInsurance/AccidentInsurance.post(isValidateOnly, payload);
    }
    # GET EmployeeAssignedSexAndGenderIdentity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeAssignedSexAndGenderIdentity with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAssignedSexAndGenderIdentity(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeAssignedSexAndGenderIdentity|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeAssignedSexAndGenderIdentity.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeAssignedSexAndGenderIdentity
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeAssignedSexAndGenderIdentity is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAssignedSexAndGenderIdentity(true isValidateOnly, EmployeeAssignedSexAndGenderIdentity payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeAssignedSexAndGenderIdentity.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeAssignedSexAndGenderIdentity
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeAssignedSexAndGenderIdentity is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAssignedSexAndGenderIdentity(true isValidateOnly, EmployeeAssignedSexAndGenderIdentity payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeAssignedSexAndGenderIdentity.patch(isValidateOnly, payload);
    }
    # GET EmployeeAUSFederalTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeAUSFederalTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AUSFederalTaxes(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeAUSFederalTax|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AUSFederalTaxes.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeAUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeAUSFederalTax is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/AUSFederalTaxes(true isValidateOnly, EmployeeAUSFederalTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AUSFederalTaxes.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeAUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeAUSFederalTax is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/AUSFederalTaxes(true isValidateOnly, EmployeeAUSFederalTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AUSFederalTaxes.patch(isValidateOnly, payload);
    }
    # GET Employee superannuation details for Australia
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The employee superannuation details for Australia by requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AUSSuperannuation(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeAUSSuperannuation|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AUSSuperannuation.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET Employee superannuation rules for Australia
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The employee superannuation rules for Australia by requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AUSSuperannuationRules(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeAUSSuperannuationRules|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AUSSuperannuationRules.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET Employee's Authorization Assignment Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeAuthorizationAssignments with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AuthorizationAssignments(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_AuthorizationAssignment|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AuthorizationAssignments.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an AuthorizationAssignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An AuthorizationAssignment is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/AuthorizationAssignments(true isValidateOnly, AuthorizationAssignment payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AuthorizationAssignments.post(isValidateOnly, payload);
    }
    # PATCH an AuthorizationAssignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The AuthorizationAssignment is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/AuthorizationAssignments(true isValidateOnly, AuthorizationAssignment payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/AuthorizationAssignments.patch(isValidateOnly, payload);
    }
    # GET EmployeeBadge Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeBadge with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Badges(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeBadge|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Badges.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeBadge
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeBadge is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Badges(true isValidateOnly, EmployeeBadge payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Badges.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeBadge
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeBadge is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Badges(true isValidateOnly, EmployeeBadge payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Badges.patch(isValidateOnly, payload);
    }
    # Get a list of Employee Balance Periods
    #
    # + employeeXRefCode - A case-sensitive field that identifies a unique employee.
    # + asOfDate - The date as of which to calculate the current values for the employee balance periods returned. If omitted, current values will be calculated as of today. Example: 2020-01-01T00:00:00
    # + startDate - Period start date to determine which employee balance periods to retrieve. If omitted, today's date will be used. Example: 2020-01-01T00:00:00
    # + endDate - Period end date to determine which employee balance periods to retrieve. If omitted, the period start date will be used. If the period start date is also omitted, today's date will be used. Example: 2020-01-01T00:00:00
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of employee balance periods meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeeBalancePeriods(string employeeXRefCode, string? asOfDate = (), string? startDate = (), string? endDate = ()) returns Payload_IEnumerable_EmployeeBalancePeriod|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeBalancePeriods.get(employeeXRefCode, asOfDate, startDate, endDate);
    }
    # Get a list of Employee Balance Transactions grouped by their employee balance periods
    #
    # + employeeXRefCode - A case-sensitive field that identifies a unique employee.
    # + balanceXRefCode - A case-sensitive field that identifies a unique balance.
    # + startDate - Period start date to determine which employee balance periods to retrieve. If omitted, today's date will be used. Example: 2020-01-01T00:00:00
    # + endDate - Period end date to determine which employee balance periods to retrieve. If omitted, the period start date will be used. If the period start date is also omitted, today's date will be used. Example: 2020-01-01T00:00:00
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of employee balance transactions grouped by their employee balance periods meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeeBalanceTransactions(string employeeXRefCode, string balanceXRefCode, string? startDate = (), string? endDate = ()) returns Payload_IEnumerable_EmployeeBalanceTransactions|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeBalanceTransactions.get(employeeXRefCode, balanceXRefCode, startDate, endDate);
    }
    # POST (Create) Employee Balance Transaction
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An employee balance transaction is created 
    resource isolated function post [string clientNamespace]/V1/EmployeeBalanceTransactions(true isValidateOnly, EmployeeBalanceTransactionForSubmit payload) returns EmployeeBalanceTransactionPostResponse|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeBalanceTransactions.post(isValidateOnly, payload);
    }
    # PATCH (Modify) Employee Balance Transaction
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An employee balance transaction is modified 
    resource isolated function patch [string clientNamespace]/V1/EmployeeBalanceTransactions(string employeeBalanceTransactionId, true isValidateOnly, EmployeeBalanceTransactionForPatch payload) returns EmployeeBalanceTransactionPatchResponse|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeBalanceTransactions.patch(employeeBalanceTransactionId, isValidateOnly, payload);
    }
    # GET EmployeeCANFederalTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeCANFederalTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CANFederalTaxes(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeCANFederalTax|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANFederalTaxes.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeCANFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeCANFederalTax is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/CANFederalTaxes(true isValidateOnly, EmployeeCANFederalTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANFederalTaxes.post(isValidateOnly, payload);

    }
    # PATCH a EmployeeCANFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeCANFederalTax is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/CANFederalTaxes(true isValidateOnly, EmployeeCANFederalTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANFederalTaxes.patch(isValidateOnly, payload);
    }
    # GET EmployeeCANStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeCANStateTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CANStateTaxes(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeCANStateTax|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANStateTaxes.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeCANStateTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A CANStateTaxes is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/CANStateTaxes(true isValidateOnly, EmployeeCANStateTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANStateTaxes.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeCANStateTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The CANStateTaxes is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/CANStateTaxes(true isValidateOnly, EmployeeCANStateTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANStateTaxes.patch(isValidateOnly, payload);
    }
    # GET EmployeeCANTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeCANTaxStatus with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CANTaxStatuses(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeCANTaxStatus|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANTaxStatuses.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST EmployeeCANTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeCANTaxStatus Detail is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/CANTaxStatuses(true isValidateOnly, EmployeeCANTaxStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANTaxStatuses.post(isValidateOnly, payload);
    }
    # PATCH EmployeeCANTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeCANTaxStatus Detail is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/CANTaxStatuses(true isValidateOnly, EmployeeCANTaxStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CANTaxStatuses.patch(isValidateOnly, payload);
    }
    # GET EmployeeCertification Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeCertification with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeCertifications(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_LMSEmployeeCertification|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeCertifications.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an Employee Certification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Certification is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeCertifications(true isValidateOnly, LMSEmployeeCertification payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeCertifications.post(isValidateOnly, payload);
    }
    # PATCH (Update) an Employee Certification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Certification is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeCertifications(true isValidateOnly, LMSEmployeeCertification payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeCertifications.patch(isValidateOnly, payload);
    }
    # GET EmployeeClockDeviceGroup Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeClockDeviceGroup with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/ClockDeviceGroups(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeClockDeviceGroup|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/ClockDeviceGroups.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeClockDeviceGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeClockDeviceGroup is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/ClockDeviceGroups(true isValidateOnly, EmployeeClockDeviceGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/ClockDeviceGroups.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeClockDeviceGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeClockDeviceGroup is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/ClockDeviceGroups(true isValidateOnly, EmployeeClockDeviceGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/ClockDeviceGroups.patch(isValidateOnly, payload);
    }
    # GET EmployeeCompensation Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeCompensation with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CompensationSummary(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeCompensation|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/CompensationSummary.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET EmployeeConfidentialIdentification Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeConfidentialIdentification with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/ConfidentialIdentification(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeConfidentialIdentification|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/ConfidentialIdentification.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeConfidentialIdentification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeConfidentialIdentification is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/ConfidentialIdentification(true isValidateOnly, EmployeeConfidentialIdentification payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/ConfidentialIdentification.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeConfidentialIdentification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeConfidentialIdentification is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/ConfidentialIdentification(true isValidateOnly, EmployeeConfidentialIdentification payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/ConfidentialIdentification.patch(isValidateOnly, payload);
    }
    # GET EmployeeCourse Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeCourse with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Courses() returns Payload_IEnumerable_EmployeeCourse|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Courses.get();
    }
    # POST an Employee Course Enrollment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be created.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Course Enrollment is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Courses(true isValidateOnly, EmployeeCourse payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Courses.post(isValidateOnly, payload);
    }
    # PATCH (Update) an Employee Course Enrollment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be created.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Course Enrollment is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Courses(true isValidateOnly, EmployeeCourse payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Courses.patch(isValidateOnly, payload);
    }
    # GET EmployeeDefaultLabor Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeDefaultLabor with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/LaborDefaults(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeDefaultLabor|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/LaborDefaults.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeDefaultLabor
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An EmployeeDefaultLabor is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/LaborDefaults(true isValidateOnly, EmployeeDefaultLabor payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/LaborDefaults.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeDefaultLabor
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeDefaultLabor is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/LaborDefaults(true isValidateOnly, EmployeeDefaultLabor payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/LaborDefaults.patch(isValidateOnly, payload);
    }
    # GET EmployeeDependentsBeneficiaries Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeDependentsBeneficiaries with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DependentsBeneficiaries(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeDependentBeneficiary|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DependentsBeneficiaries.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET EmployeeWageTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeWageTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/DEUEmployeeWageTax(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_DEUEmployeeWageTax|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DEUTax/DEUEmployeeWageTax.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an Employee Wage Tax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An Employee Wage Tax is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/DEUEmployeeWageTax(true isValidateOnly, DEUEmployeeWageTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DEUTax/DEUEmployeeWageTax.post(isValidateOnly, payload);
    }
    # PATCH (Update) an Employee Wage Tax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An Employee Wage Tax is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/DEUEmployeeWageTax(true isValidateOnly, DEUEmployeeWageTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DEUTax/DEUEmployeeWageTax.patch(isValidateOnly, payload);
    }
    # GET Employee Social Insurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Employee Social Insurance details with the requested Employee XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/SocialInsurance(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_DEUTaxSocialInsurance|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DEUTax/SocialInsurance.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST Employee Social Insurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An Employee Social Insurance is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/SocialInsurance(true isValidateOnly, DEUTaxSocialInsurance payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DEUTax/SocialInsurance.post(isValidateOnly, payload);
    }
    # PATCH (Update) aEmployee Social Insurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An Employee Social Insurance is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/SocialInsurance(true isValidateOnly, DEUTaxSocialInsurance payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DEUTax/SocialInsurance.patch(isValidateOnly, payload);
    }
    # GET EmployeeDirectDeposit Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeDirectDeposit with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DirectDeposits(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeDirectDeposit|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/DirectDeposits.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET EmployeeDisability Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeDisabilityController with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Disabilities(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeDisability|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Disabilities.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeDisability
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A EmployeeDisability is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Disabilities(true isValidateOnly, EmployeeDisability payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Disabilities.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeDisability
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeDisability is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Disabilities(true isValidateOnly, EmployeeDisability payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Disabilities.patch(isValidateOnly, payload);
    }
    # GET EmployeeEIRate Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeEIRate with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EIRates(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeCANEmploymentInsuranceRate|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EIRates.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET EmployeeEmploymentAgreement Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeEmploymentAgreement with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentAgreements(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeEmploymentAgreement|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentAgreements.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeEmploymentAgreement
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentAgreements(true isValidateOnly, EmployeeEmploymentAgreement payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentAgreements.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeEmploymentAgreement
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeEmploymentAgreement is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentAgreements(true isValidateOnly, EmployeeEmploymentAgreement payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentAgreements.patch(isValidateOnly, payload);
    }
    # GET EmploymentStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Employment Statuses of employee with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeEmploymentStatus|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentStatuses.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmploymentStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmploymentStatus is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses(true isValidateOnly, EmployeeEmploymentStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentStatuses.post(isValidateOnly, payload);
    }
    # PATCH an EmploymentStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmploymentStatus is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses(true isValidateOnly, EmployeeEmploymentStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentStatuses.patch(isValidateOnly, payload);
    }
    # Replace EmploymentStatuses
    #
    # + xRefCode - The unique identifier (external reference code) of the Employee for whom the subordinate data will be replaced.
    # The value provided must be the exact match for an Employee; otherwise, a bad request (400) error will be returned.
    # + replaceFrom - The date from which all EmploymentStatuses will be replaced.
    # + replaceTo - The date up to which all EmploymentStatuses will be replaced.
    # + isValidateOnly - When a TRUE value is used in this parameter, validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The new JSON-formatted EmploymentStatus with which to replace the deleted ones.
    # + return - The Employee's Employment Statuses are replaced within the given date range; no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses/Replacement(true isValidateOnly, EmployeeEmploymentStatus payload, string? replaceFrom = (), string? replaceTo = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentStatuses/Replacement.patch(isValidateOnly, payload, replaceFrom, replaceTo);
    }
    # GET EmployeeEmploymentType Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeEmploymentType with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentTypes(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeEmploymentType|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentTypes.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeEmploymentType
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeEmploymentType is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentTypes(true isValidateOnly, EmployeeEmploymentType payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentTypes.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeEmploymentType
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeEmploymentType is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentTypes(true isValidateOnly, EmployeeEmploymentType payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmploymentTypes.patch(isValidateOnly, payload);
    }
    # GET EmployeeEthnicity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeEthnicity with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Ethnicities(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeEthnicity|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Ethnicities.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST EmployeeEthnicity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeEthnicity Detail is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Ethnicities(true isValidateOnly, EmployeeEthnicity payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Ethnicities.post(isValidateOnly, payload);
    }
    # PATCH EmployeeEthnicity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeEthnicity Detail is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Ethnicities(true isValidateOnly, EmployeeEthnicity payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Ethnicities.patch(isValidateOnly, payload);
    }
    # Get the status of Job Queue tables.
    #
    # + backgroundJobQueueItemId - To find a status of employee export background job
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Job Status and Access API URL 
    resource isolated function get [string clientNamespace]/v1/EmployeeExportJobs/Status/[int:Signed32 backgroundJobQueueItemId]() returns Payload_Object|error {
        return self.genClient->/[clientNamespace]/v1/EmployeeExportJobs/Status/[backgroundJobQueueItemId].get();
    }
    # Get bulk employee of data as a string in json format
    #
    # + jobId - To get background job processed data for employee export
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Returns a page of employee data. 
    resource isolated function get [string clientNamespace]/v1/EmployeeExportJobs/Data/[string jobId]() returns PaginatedPayload_IEnumerable_Employee|error {
        return self.genClient->/[clientNamespace]/v1/EmployeeExportJobs/Data/[jobId].get();
    }
    # Add new HR Bulk Export details into Job Queue tables.
    #
    # + isValidateOnly - This parameter used to run a test case without fail
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A HR Bulk Export is created with an empty response body. 
    resource isolated function post [string clientNamespace]/V1/EmployeeExportJobs(true isValidateOnly, EmployeeExportParams payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeExportJobs.post(isValidateOnly, payload);
    }
    # GET EmployeeGlobalPropertyValue Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeGlobalPropertyValue with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeGlobalProperties(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeGlobalPropertyValue|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeGlobalProperties.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeGlobalPropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Global Property is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeGlobalProperties(true isValidateOnly, EmployeeGlobalPropertyValue payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeGlobalProperties.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeGlobalPropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeGlobalPropertyValue is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeGlobalProperties(true isValidateOnly, EmployeeGlobalPropertyValue payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeGlobalProperties.patch(isValidateOnly, payload);
    }
    # GET the list of employee gl splits.
    #
    # + payGroupXRefCode - The pay group reference code.
    # + employeeXRefCodes - The comma separated employee XRef codes.
    # + splitStatus - Filter to fetch all or current/future effective GL splits. Value can be All or Active. Default value is Active.
    # + pageSize - Number of records to be loaded.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Employee GL Splits. 
    resource isolated function get [string clientNamespace]/V1/Payroll/EmployeeGLSplits(string? payGroupXRefCode = (), string? employeeXRefCodes = (), string? splitStatus = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeeGLSplits|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/EmployeeGLSplits.get(payGroupXRefCode, employeeXRefCodes, splitStatus, pageSize);
    }
    # POST a list of employee GLSplitSets.
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/Payroll/EmployeeGLSplits(true isValidateOnly, EmployeeGLSplitUpsert[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/EmployeeGLSplits.post(isValidateOnly, payload);
    }
    # PATCH a list of employee GLSplitSets.
    #
    # + isValidateOnly - If TRUE, PATCH operations validate the request without queue the import. The default value is FALSE. Note, PATCH operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/V1/Payroll/EmployeeGLSplits(true isValidateOnly, EmployeeGLSplitUpsert[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/EmployeeGLSplits.patch(isValidateOnly, payload);
    }
    # GET HighlyCompensatedEmployee Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The HighlyCompensatedEmployee with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HighlyCompensatedEmployees(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeHighlyCompensatedEmployeeIndicator|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HighlyCompensatedEmployees.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a HighlyCompensatedEmployee
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A HighlyCompensatedEmployee is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HighlyCompensatedEmployees(true isValidateOnly, EmployeeHighlyCompensatedEmployeeIndicator payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HighlyCompensatedEmployees.post(isValidateOnly, payload);
    }
    # PATCH a HighlyCompensatedEmployee
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The HighlyCompensatedEmployee is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/HighlyCompensatedEmployees(true isValidateOnly, EmployeeHighlyCompensatedEmployeeIndicator payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HighlyCompensatedEmployees.patch(isValidateOnly, payload);
    }
    # GET EmployeeHealthWellness Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeHealthWellness with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HealthWellnessDetails(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeHealthWellness|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HealthWellnessDetails.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeHealthWellness
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeHealthWellness is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HealthWellnessDetails(true isValidateOnly, EmployeeHealthWellness payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HealthWellnessDetails.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeHealthWellness
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeHealthWellness is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/HealthWellnessDetails(true isValidateOnly, EmployeeHealthWellness payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HealthWellnessDetails.patch(isValidateOnly, payload);
    }
    # GET EmployeeHRIncident Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeHRIncident with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HRIncidents() returns Payload_IEnumerable_EmployeeHRIncident|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HRIncidents.get();
    }
    # POST an EmployeeHRIncident
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An EmployeeHRIncident is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HRIncidents(true isValidateOnly, EmployeeHRIncident payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HRIncidents.post(isValidateOnly, payload);
    }
    # GET EmployeeHRPolicy Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Employee HRPolicy with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HRPolicies() returns Payload_IEnumerable_EmployeeHRPolicy|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HRPolicies.get();
    }
    # POST an EmployeeHRPolicy
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee HRPolicy is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HRPolicies(true isValidateOnly, EmployeeHRPolicy payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/HRPolicies.post(isValidateOnly, payload);
    }
    # GET an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeIRLTaxEWSS with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/EWSS() returns Payload_IEnumerable_EmployeeIRLTaxEWSS|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/EWSS.get();
    }
    # POST an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeIRLTaxEWSS is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/EWSS(true isValidateOnly, EmployeeIRLTaxEWSS payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/EWSS.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeIRLTaxEWSS is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/EWSS(true isValidateOnly, EmployeeIRLTaxEWSS payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/EWSS.patch(isValidateOnly, payload);
    }
    # GET EmployeeIRLTaxPAYEExclusion Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeIRLTaxPAYEExclusion with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PAYEExclusion() returns Payload_IEnumerable_EmployeeIRLTaxPAYEExclusion|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/PAYEExclusion.get();
    }
    # POST an EmployeeIRLTaxPAYEExclusion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An EmployeeIRLTaxPAYEExclusion is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PAYEExclusion(true isValidateOnly, EmployeeIRLTaxPAYEExclusion payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/PAYEExclusion.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeIRLTaxPAYEExclusion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeIRLTaxPAYEExclusion is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PAYEExclusion(true isValidateOnly, EmployeeIRLTaxPAYEExclusion payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/PAYEExclusion.patch(isValidateOnly, payload);
    }
    # GET EmployeeIRLTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeIRLTaxPRSI with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PRSI() returns Payload_IEnumerable_EmployeeIRLTaxPRSI|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/PRSI.get();
    }
    # POST a EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeIRLTaxPRSI is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PRSI(true isValidateOnly, EmployeeIRLTaxPRSI payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/PRSI.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeIRLTaxPRSI is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PRSI(true isValidateOnly, EmployeeIRLTaxPRSI payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/PRSI.patch(isValidateOnly, payload);
    }
    # GET an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeIRLTaxRPN with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/RPN() returns Payload_IEnumerable_EmployeeIRLTaxRPN|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/RPN.get();
    }
    # POST an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeIRLTaxRPN is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/RPN(true isValidateOnly, EmployeeIRLTaxRPN payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/RPN.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeIRLTaxRPN is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/RPN(true isValidateOnly, EmployeeIRLTaxRPN payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/IRLTax/RPN.patch(isValidateOnly, payload);
    }
    # GET EmployeeLocation Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeLocation with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Locations(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeLocation|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Locations.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeLocation
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeLocation is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Locations(true isValidateOnly, EmployeeLocation payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Locations.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeLocation
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeLocation is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Locations(true isValidateOnly, EmployeeLocation payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Locations.patch(isValidateOnly, payload);
    }
    # GET EmployeeManager Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeManager with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeManagers(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeManager|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeManagers.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET EmployeeOnboardingPolicy Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeOnboardingPolicy with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/OnboardingPolicies(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeOnboardingPolicy|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/OnboardingPolicies.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeOnboardingPolicy
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/OnboardingPolicies(true isValidateOnly, EmployeeOnboardingPolicy payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/OnboardingPolicies.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeOnboardingPolicy
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeOnboardingPolicy is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/OnboardingPolicies(true isValidateOnly, EmployeeOnboardingPolicy payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/OnboardingPolicies.patch(isValidateOnly, payload);
    }
    # GET EmployeeOrgUnitInfo Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeOrgUnitInfo with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/OrgUnitInfos() returns Payload_IEnumerable_EmployeeOrgUnitInformation|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/OrgUnitInfos.get();
    }
    # GET EmployeePayAdjCodeGroupList Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePayAdjCodeGroupList with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayAdjustCodeGroups() returns Payload_IEnumerable_EmployeePayAdjustCodeGroup|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayAdjustCodeGroups.get();
    }
    # POST a EmployeePayAdjCodeGroupList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeePayAdjCodeGroupList is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayAdjustCodeGroups(true isValidateOnly, EmployeePayAdjustCodeGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayAdjustCodeGroups.post(isValidateOnly, payload);
    }
    # PATCH a EmployeePayAdjCodeGroupList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeePayAdjCodeGroupList is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayAdjustCodeGroups(true isValidateOnly, EmployeePayAdjustCodeGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayAdjustCodeGroups.patch(isValidateOnly, payload);
    }
    # Get a list of Employee Pay Adjustments
    #
    # + filterPayAdjustmentStartDate - Inclusive period start date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00
    # + filterPayAdjustmentEndDate - Inclusive period end date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00
    # + filterLastModifiedStartDateUTC - Inclusive period last modified start date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00Z
    # + filterLastModifiedEndDateUTC - Inclusive period last modified end date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00Z
    # + orgUnitXRefCode - A case-sensitive field that identifies a unique organization
    # + employeeXRefCode - A case-sensitive field that identifies a unique employee
    # + payAdjustmentCodeXRefCode - A case-sensitive field that identifies a unique pay adjustment code
    # + projectXRefCode - A case-sensitive field that identifies a unique project
    # + departmentXRefCode - A case-sensitive field that identifies a unique department
    # + jobXRefCode - A case-sensitive field that identifies a unique job
    # + docketXRefCode - A case-sensitive field that identifies a unique docket
    # + referenceDate - Inclusive period reference date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00
    # + managerAuthorized - A flag to determine if a pay adjustment is manager authorized
    # + employeeAuthorized - A flag to determine if a pay adjustment is employee authorized
    # + isDeleted - A flag to determine if a pay adjustment is deleted
    # + pageSize - The number of records returned per page in the paginated response
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of EmployeePayAdjustment data meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeePayAdjustments(string filterPayAdjustmentStartDate, string filterPayAdjustmentEndDate, string? filterLastModifiedStartDateUTC = (), string? filterLastModifiedEndDateUTC = (), string? orgUnitXRefCode = (), string? employeeXRefCode = (), string? payAdjustmentCodeXRefCode = (), string? projectXRefCode = (), string? departmentXRefCode = (), string? jobXRefCode = (), string? docketXRefCode = (), string? referenceDate = (), boolean? managerAuthorized = (), boolean? employeeAuthorized = (), boolean? isDeleted = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeePayAdjustment|error {
        return self.genClient->/[clientNamespace]/V1/EmployeePayAdjustments.get(filterPayAdjustmentStartDate, filterPayAdjustmentEndDate, filterLastModifiedStartDateUTC, filterLastModifiedEndDateUTC, orgUnitXRefCode, employeeXRefCode, payAdjustmentCodeXRefCode, projectXRefCode, departmentXRefCode, jobXRefCode, docketXRefCode, referenceDate, managerAuthorized, employeeAuthorized, isDeleted, pageSize);
    }
    # POST (Create) Employee Pay Adjustment
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database.
    # + isValidateLabor - When a TRUE value is used in this parameter, POST operations validate against Labor Validation Engine to verify pay adjustment follows rules/qualifiers created
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An employee pay adjustment is created 
    resource isolated function post [string clientNamespace]/V1/EmployeePayAdjustments(true isValidateOnly, EmployeePayAdjustmentForSubmit payload, boolean? isValidateLabor = ()) returns EmployeePayAdjustmentPostResponse|error {
        return self.genClient->/[clientNamespace]/V1/EmployeePayAdjustments.post(isValidateOnly, payload, isValidateLabor);
    }
    # PATCH (Update) Employee Pay Adjustment
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database.
    # + isValidateLabor - When a TRUE value is used in this parameter, PATCH operations validate against Labor Validation Engine to verify pay adjustment follows rules/qualifiers created
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An employee pay adjustment is updated 
    resource isolated function patch [string clientNamespace]/V1/EmployeePayAdjustments/[string xRefCode](true isValidateOnly, EmployeePayAdjustmentForSubmit payload, boolean? isValidateLabor = ()) returns EmployeePayAdjustmentPostResponse|error {
        return self.genClient->/[clientNamespace]/V1/EmployeePayAdjustments/[xRefCode].patch(isValidateOnly, payload, isValidateLabor);
    }
    # GET EmployeePayGradeRate Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePayGradeRate with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/PayGradeRates(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeePayGradeRate|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/PayGradeRates.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET List of Taxes for a specific employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved. The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePayrollTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxes() returns Payload_IEnumerable_EmployeePayrollTax|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayrollTaxes.get();
    }
    # GET List of Tax Parameters for a specific employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved. The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates. The service defaults to the current day if the requester does not specify a value. Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates. The service defaults to null if the requester does not specify a value. Example: 2017-01-01T13:24:56
    # + taxAuthorityInstance - The Governmental Authority having jurisdiction over the assessment, determination, collection or imposition of any tax. The value provided must be an exact match to an authority assigned to the employee. Example: USA-00000000-001.
    # + legalEntityXRefCode - The unique reference code which identifies the organization that the federal tax authorities recognize. The value provided must be an exact match to the Legal Entity reference to which the employee is assigned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePayrollTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParameters(string? contextDateRangeFrom = (), string? contextDateRangeTo = (), string? taxAuthorityInstance = (), string? legalEntityXRefCode = ()) returns Payload_IEnumerable_EmployeePayrollTaxParameter|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayrollTaxParameters.get(contextDateRangeFrom, contextDateRangeTo, taxAuthorityInstance, legalEntityXRefCode);
    }
    # POST Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeePayrollTaxParameter is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParameters(true isValidateOnly, EmployeePayrollTaxParameter payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayrollTaxParameters.post(isValidateOnly, payload);
    }
    # PATCH Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeePayrollTaxParameter is created, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParameters(true isValidateOnly, EmployeePayrollTaxParameter payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayrollTaxParameters.patch(isValidateOnly, payload);
    }
    # POST Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - EmployeePayrollTaxParameter is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParametersList(true isValidateOnly, EmployeePayrollTaxParameter[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayrollTaxParametersList.post(isValidateOnly, payload);
    }
    # PATCH Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - EmployeePayrollTaxParameter is created, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParametersList(true isValidateOnly, EmployeePayrollTaxParameter[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeePayrollTaxParametersList.patch(isValidateOnly, payload);
    }
    # GET a List of Employee pay summaries
    #
    # + filterPaySummaryStartDate - Inclusive period start date in UTC to determine which employee pay summary data to retrieve. Example: 2017-01-01T00:00:00
    # + filterPaySummaryEndDate - Inclusive period end date in UTC to determine which employee pay summary data to retrieve. Example: 2017-01-01T00:00:00
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee
    # + locationXRefCode - The unique identifier (external reference code) of the location to be retrieved. The value provided must be the exact match for a location
    # + payGroupXRefCode - The unique identifier (external reference code) of the position to be retrieved. The value provided must be the exact match for a position
    # + payCategoryXRefCode - The unique identifier (external reference code) of the payCatergory to be retrieved. The value provided must be the exact match for a payCatergory
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of EmployeePaySummary data meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeePaySummaries(string filterPaySummaryStartDate, string filterPaySummaryEndDate, string? employeeXRefCode = (), string? locationXRefCode = (), string? payGroupXRefCode = (), string? payCategoryXRefCode = ()) returns PaginatedPayload_IEnumerable_EmployeePaySummary|error {
        return self.genClient->/[clientNamespace]/V1/EmployeePaySummaries.get(filterPaySummaryStartDate, filterPaySummaryEndDate, employeeXRefCode, locationXRefCode, payGroupXRefCode, payCategoryXRefCode);
    }
    # GET a List of Employee pay summaries retro
    #
    # + payGroupXRefCode - The unique identifier (external reference code) of the pay group to be retrieved. The value provided must be the exact match for a pay group.
    # + periodStartDate - The start date of the pay calendar to be retrieved. The value provided must be the exact match for an effective start of a pay calendar.
    # + periodEndDate - The end date of the pay calendar to be retrieved. The value provided must be the exact match for an effective end of a pay calendar.
    # + payDate - The pay date of the pay calendar to be retrieved. The value provided must be the exact match for a pay date of a pay calendar.
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee.
    # + locationXRefCode - The unique identifier (external reference code) of the location to be retrieved. The value provided must be the exact match for a location.
    # + payCategoryXRefCode - The unique identifier (external reference code) of the payCategory to be retrieved. The value provided must be the exact match for a payCategory.
    # + onlyRetros - Filters only Retro Employee Pay Summaries (defaults to false).
    # + payExportId - The unique identifier of the Pay export data to be retrieved. The value provided must be the exact match for a Pay export.
    # + pageSize - Number of records to be loaded (defaults to a 1000 records).
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of EmployeePaySummary retro data meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeePaySummariesRetro(string payGroupXRefCode, string? periodStartDate = (), string? periodEndDate = (), string? payDate = (), string? employeeXRefCode = (), string? locationXRefCode = (), string? payCategoryXRefCode = (), boolean? onlyRetros = (), int? payExportId = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeePaySummaryRetro|error {
        return self.genClient->/[clientNamespace]/V1/EmployeePaySummariesRetro.get(payGroupXRefCode, periodStartDate, periodEndDate, payDate, employeeXRefCode, locationXRefCode, payCategoryXRefCode, onlyRetros, payExportId, pageSize);
    }
    # GET EmployeePerformanceRating Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePerformanceRating with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/PerformanceRatings() returns Payload_IEnumerable_EmployeePerformanceRating|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/PerformanceRatings.get();
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An Employee Performance Rating is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/PerformanceRatings(true isValidateOnly, EmployeePerformanceRating payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/PerformanceRatings.post(isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An Employee Performance Rating is created, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/PerformanceRatings(true isValidateOnly, EmployeePerformanceRating payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/PerformanceRatings.patch(isValidateOnly, payload);
    }
    # GET EmployeePropertyValue Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePropertyValue with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeProperties(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeePropertyValue|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeProperties.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeePropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeProperties(true isValidateOnly, EmployeePropertyValue payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeProperties.post(isValidateOnly, payload);
    }
    # PATCH a EmployeePropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeePropertyValue is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeProperties(true isValidateOnly, EmployeePropertyValue payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeProperties.patch(isValidateOnly, payload);
    }
    # GET a List of Employee Punches
    #
    # + filterTransactionStartTimeUTC - Inclusive transaction period start date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    # + filterTransactionEndTimeUTC - Inclusive transaction period end date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee
    # + locationXRefCode - A case-sensitive field that identifies a location or organizational units
    # + positionXRefCode - A case-sensitive field that identifies one or more Positions
    # + departmentXRefCode - A case-sensitive field that identifies one or more Departments
    # + jobXRefCode - A case-sensitive field that identifies one or more Jobs
    # + docketXRefCode - A case-sensitive field that identifies one or more dockets
    # + projectXRefCode - A case-sensitive field that identifies one or more projects
    # + payAdjustmentXRefCode - A case-sensitive field that identifies one or more pay adjustment
    # + shiftStatus - A case-sensitive field containing shift status groups. Examples: [ACTIVE, COMPLETED, PROBLEM, ALL]
    # + filterShiftTimeStart - Use with FilterTransactionStartTimeUTC to search for shifts with a Start and end time in a given timeframe. Example: Used to include or exclude edits made to historical punches
    # + filterShiftTimeEnd - Use with FilterTransactionEndTimeUTC to search for shifts with a Start and end time in a given timeframe. Example: Used to include or exclude edits made to historical
    # + businessDate - The Business Date value is intended as a “Timesheet View” to return punch data related to a clients Business day parameter configuration. Example: 2017-01-01T00:00:00
    # + pageSize - The number of records returned per page in the paginated response
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of EmployeePunch data meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeePunches(string filterTransactionStartTimeUTC, string filterTransactionEndTimeUTC, string? employeeXRefCode = (), string? locationXRefCode = (), string? positionXRefCode = (), string? departmentXRefCode = (), string? jobXRefCode = (), string? docketXRefCode = (), string? projectXRefCode = (), string? payAdjustmentXRefCode = (), string? shiftStatus = (), string? filterShiftTimeStart = (), string? filterShiftTimeEnd = (), string? businessDate = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeePunch|error {
        return self.genClient->/[clientNamespace]/V1/EmployeePunches.get(filterTransactionStartTimeUTC, filterTransactionEndTimeUTC, employeeXRefCode, locationXRefCode, positionXRefCode, departmentXRefCode, jobXRefCode, docketXRefCode, projectXRefCode, payAdjustmentXRefCode, shiftStatus, filterShiftTimeStart, filterShiftTimeEnd, businessDate, pageSize);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - EmployeePunch details which matches XRefCode were Deleted. 
    resource isolated function delete [string clientNamespace]/V1/EmployeePunches(string employeePunchXRefCode) returns Payload_EmployeePunchPatchPostDeleteResponse|error {
        return self.genClient->/[clientNamespace]/V1/EmployeePunches.delete(employeePunchXRefCode);
    }
    # GET a List of Employee Raw Punches
    #
    # + filterTransactionStartTimeUTC - Inclusive transaction period start date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    # + filterTransactionEndTimeUTC - Inclusive transaction period end date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee
    # + employeeBadge - The badge number of the employee to be retrieved. The value provided must be the exact match for a badge
    # + punchState - The state of the punch. Examples: [PROCESSED, REJECTED, ALL]
    # + punchTypes - Comma separated values of punch types. Example: [Punch_In, Break_Out, Job_Transfer, ALL, etc]
    # + pageSize - The number of records returned per page in the paginated response
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of EmployeePunch data meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeeRawPunches(string filterTransactionStartTimeUTC, string filterTransactionEndTimeUTC, string? employeeXRefCode = (), string? employeeBadge = (), string? punchState = (), string? punchTypes = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeeRawPunch|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeRawPunches.get(filterTransactionStartTimeUTC, filterTransactionEndTimeUTC, employeeXRefCode, employeeBadge, punchState, punchTypes, pageSize);
    }
    # POST (Create) Employee Raw Punch
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A raw punch is created. 
    resource isolated function post [string clientNamespace]/V1/EmployeeRawPunches(true isValidateOnly, EmployeeRawPunchForSubmit payload) returns PaginatedPayload_IEnumerable_EmployeeRawPunch|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeRawPunches.post(isValidateOnly, payload);
    }
    # GET EmployeeRole Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeRole with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Roles(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeRole|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Roles.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeRole
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Roles(true isValidateOnly, EmployeeRole payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Roles.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeRole
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeRole is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Roles(true isValidateOnly, EmployeeRole payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Roles.patch(isValidateOnly, payload);
    }
    # GET a List of Employees
    #
    # + employeeNumber - Employment identification number assigned to an employee.  A partial value can be provided for a wider search.
    # + displayName - Employee Name. A partial value can be provided for a wider search.
    # + socialSecurityNumber - Social Security Number of the employee. A partial value can be provided for a wider search.
    # + employmentStatusXRefCode - Employment status xrefcode, which can be client-specific. Use this to search employees having the given employment status. Use a ContextDate value to search for employees with a given status as of a point in time. Otherwise, the search will use the current date and time.
    # + orgUnitXRefCode - Organizational units' xrefcode. Use this to search all levels of the employees’ organization including department, location, region, corporate, etc. Use a ContextDate value to search for employees with a specific value as of a point in time.  Otherwise, the search will use the current date and time.
    # + departmentXRefCode - Department xrefcode value, which can be client-specific. Use this to search employees' work assignments having the given department.Use a ContextDate value to search for employees with a given department as of a point in time. Otherwise, the search will use the current date and time.
    # + jobXRefCode - Job xrefcode value, which can be client-specific. Use this to search employees' work assignments having the given job. Use a ContextDate value to search for employees with a given job as of a point in time. Otherwise, the search will use the current date and time.
    # + positionXRefCode - Position xrefcode value, which can be client-specific. Use this to search employees' work assignments having the given position. Use a ContextDate value to search for employees with a given position as of a point in time. Otherwise, the search will use the current date and time.
    # + payClassXRefCode - Pay class xrefcode value, which can be client-specific. Use this to search employees having the given pay class. Use a ContextDate value to search for employees with a given pay class as of a point in time. Otherwise, the search will use the current date and time.
    # + payGroupXRefCode - Pay group xrefcode value, which can be client-specific. Use this to search employees having the given pay group. Use a ContextDate value to search for employees with a given pay group as of a point in time. Otherwise, the search will use the current date and time.
    # + payPolicyXRefCode - Pay policy xrefcode value, which can be client-specific. Use this to search employees having the given pay policy. Use a ContextDate value to search for employees with a given pay policy as of a point in time. Otherwise, the search will use the current date and time.
    # + payTypeXRefCode - Pay type xrefcode value, which can be client-specific. Use this to search employees having the given pay type. Use a ContextDate value to search for employees with a given pay type as of a point in time. Otherwise, the search will use the current date and time.
    # + payrollPolicyXRefCode - Payroll policy xrefcode value, which can be client-specific. Use this to search employees having the given payroll policy. Use a ContextDate value to search for employees with a given payroll policy as of a point in time. Otherwise, the search will use the current date and time.
    # + filterHireStartDate - Use to search for employees whose most recent hire date is greater than or equal to the specified value (e.g. 2017-01-01T13:24:56). Use with filterHireEndDate to search for employees hired or rehired in a given timeframe.
    # + filterHireEndDate - Use to search for employees whose most recent hire date is less than or equal to the specified value. Typically this parameter is used in conjunction with FilterHireStartDate to search for employees hired or rehired in a given timeframe. Example: 2017-01-01T13:24:56
    # + filterTerminationStartDate - Use to search for employees with termination date values greater than or equal to the specified value. Typically this parameter is used in conjunction with FilterTerminationStartDate to search for employees terminated in a given timeframe. Example: 2017-01-01T13:24:56
    # + filterTerminationEndDate - Use to search for employees with termination date values less than or equal to the specified value. Typically this parameter is used in conjunction with filterTerminationStartDate to search for employees terminated in a given timeframe. Example: 2017-01-01T13:24:56
    # + filterUpdatedStartDate - The beginning date used when searching for employees with updates (and newly effective records) in a specified timeframe. When a value is provided for this parameter, a filterUpdatedEndDate value must also be provided. Because this search is conducted across all entities in the HR data model regardless of whether the requesting user has access to them, it is possible that the query will return XRefCode of employees with changes in which the consuming application is not interested.  Example: 2017-01-01T13:24:56
    # + filterUpdatedEndDate - The end date used when searching for employees with updates (and newly effective records) in a specified timeframe. When a value is provided for this parameter, a filterUpdatedStartDate value must also be provided.   Example: 2017-01-01T13:24:56
    # + filterUpdatedEntities - Use to search employees with changes to specific employee sub-entities. These sub-entity names, based on the employee model, can be provided in a comma-separated value, e.g. filterUpdatedEntities=EmploymentStatuses,WorkAssignments,Addresses. The base Employee is always searched by default. This parameter requires that filterUpdatedStartDate/filterUpdatedEndDate range is provided, otherwise it is ignored and all relevant employee entities are searched.
    # + filterOriginalHireStartDate - Use to search for employees with original hire date values greater than or equal to the specified value. Typically this parameter is used in conjunction with filterOriginialHireEndDate to search for employees who were originally hired in a given timeframe. Example: 2017-01-01T13:24:56
    # + filterOriginalHireEndDate - Use to search for employees with original hire date values less than or equal to the specified value. Typically this parameter is used in conjunction with filterOriginialHireStartDate to search for employees who were originally hired in a given timeframe. Example: 2017-01-01T13:24:56
    # + filterSeniorityStartDate - Use to search for employees with seniority date values greater than or equal to the specified value. Typically this parameter is used in conjunction with filterSeniorityEndDate to search for employees seniority date in a given timeframe. Example: 2017-01-01T13:24:56
    # + filterSeniorityEndDate - Use to search for employees with original hire date values less than or equal to the specified value. Typically this parameter is used in conjunction with filterSeniorityStartDate to search for employees seniority date in a given timeframe. Example: 2017-01-01T13:24:56
    # + filterBaseSalaryFrom - Use to search for employees base salary greater than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseSalaryTo to search for employees base salary in a given range. Example: 20000
    # + filterBaseSalaryTo - Use to search for employees base salary less than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseSalaryFrom to search for employees base salary in a given range. Example: 40000
    # + filterBaseRateFrom - Use to search for employees base rate greater than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseRateTo to search for employees base rate in a given range. Example: 10
    # + filterBaseRateTo - Use to search for employees base rate less than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseRateFrom to search for employees base rate in a given range. Example: 40
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Employees XRefCodes meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Employees(string? employeeNumber = (), string? displayName = (), string? socialSecurityNumber = (), string? employmentStatusXRefCode = (), string? orgUnitXRefCode = (), string? departmentXRefCode = (), string? jobXRefCode = (), string? positionXRefCode = (), string? payClassXRefCode = (), string? payGroupXRefCode = (), string? payPolicyXRefCode = (), string? payTypeXRefCode = (), string? payrollPolicyXRefCode = (), string? filterHireStartDate = (), string? filterHireEndDate = (), string? filterTerminationStartDate = (), string? filterTerminationEndDate = (), string? filterUpdatedStartDate = (), string? filterUpdatedEndDate = (), string? filterUpdatedEntities = (), string? filterOriginalHireStartDate = (), string? filterOriginalHireEndDate = (), string? filterSeniorityStartDate = (), string? filterSeniorityEndDate = (), decimal? filterBaseSalaryFrom = (), decimal? filterBaseSalaryTo = (), decimal? filterBaseRateFrom = (), decimal? filterBaseRateTo = (), string? contextDate = ()) returns Payload_IEnumerable_Employee|error {
        return self.genClient->/[clientNamespace]/V1/Employees.get(employeeNumber, displayName, socialSecurityNumber, employmentStatusXRefCode, orgUnitXRefCode, departmentXRefCode, jobXRefCode, positionXRefCode, payClassXRefCode, payGroupXRefCode, payPolicyXRefCode, payTypeXRefCode, payrollPolicyXRefCode, filterHireStartDate, filterHireEndDate, filterTerminationStartDate, filterTerminationEndDate, filterUpdatedStartDate, filterUpdatedEndDate, filterUpdatedEntities, filterOriginalHireStartDate, filterOriginalHireEndDate, filterSeniorityStartDate, filterSeniorityEndDate, filterBaseSalaryFrom, filterBaseSalaryTo, filterBaseRateFrom, filterBaseRateTo, contextDate);
    }
    # POST (Hire) an Employee
    #
    # + isValidateOnly - If true, then the POST data is validated without being submitted.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (hire and rehire ) and PATCH (employee update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees(true isValidateOnly, Employee payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees.post(isValidateOnly, payload);
    }
    # GET Employee Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + expand - This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the employee master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document.
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + amfEntity - This parameter is to identify the application object for Application Metadata Framework (AMF) request.
    # + amfLevel - This parameter is to identify the level for Application Metadata Framework (AMF) request.
    # + amfLevelValue - This parameter is to identify context specific to amfLevel for Application Metadata Framework (AMF) request.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Employee with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode](string? contextDate = (), string? expand = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = (), string? amfEntity = (), string? amfLevel = (), string? amfLevelValue = ()) returns Payload_Employee|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode].get(contextDate, expand, contextDateRangeFrom, contextDateRangeTo, amfEntity, amfLevel, amfLevelValue);
    }
    # PATCH (Update) an Employee
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + replaceExisting - This parameter accepts a comma-separated list of employee-subordinate entities where the respective data provided will replace all existing records.
    # It applies to the following collections (which are not effective dated and thus require this special treatment):
    # <list type="bullet"><item>ClockDeviceGroups, </item><item>DirectDeposits, </item><item>EmployeePayAdjustCodeGroups, </item><item>OrgUnitLocationTypes, </item><item>SSOAccounts, </item><item>UserPayAdjustCodeGroups</item></list>
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (hire and rehire ) and PATCH (employee update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The Employee is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode](true isValidateOnly, Employee payload, string? replaceExisting = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode].patch(isValidateOnly, payload, replaceExisting);
    }
    # GET List Employee Schedules
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + filterScheduleStartDate - Inclusive period start aligned to the employee business day start date to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    # + filterScheduleEndDate - Exclusive period end aligned to the employee business day start to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    # + isPosted - A flag to determine whether to display posted schedules.By default it searches for published schedules
    # + expand - This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of employee schedule meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Schedules(string filterScheduleStartDate, string filterScheduleEndDate, boolean? isPosted = (), string? expand = ()) returns Payload_IEnumerable_EmployeeSchedule|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Schedules.get(filterScheduleStartDate, filterScheduleEndDate, isPosted, expand);
    }
    # GET List of Employee Schedules
    #
    # + filterScheduleStartDate - Inclusive period start aligned to the employee business day start date to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    # + filterScheduleEndDate - Exclusive period end aligned to the employee business day start to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    # + employeeXRefCode - Only valid when Unfill = FALSE or not provided
    # + orgUnitXRefCode - Not required when Unfill = TRUE, Will send all unfilled shifts for the specified date range
    # + unfill - When a TRUE value is used in this parameter, the API returns all Unfill shifts.
    # When a FALSE value is used in this parameter, only employee schdules are returned
    # + expand - This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document.
    # + pageSize - The number of records returned per page in the paginated response
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of employee schedule meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/EmployeeSchedules(string filterScheduleStartDate, string filterScheduleEndDate, string? employeeXRefCode = (), string? departmentXRefCode = (), string? jobXRefCode = (), string? positionXRefCode = (), string? orgUnitXRefCode = (), boolean? unfill = (), string? expand = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeeSchedule|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeSchedules.get(filterScheduleStartDate, filterScheduleEndDate, employeeXRefCode, departmentXRefCode, jobXRefCode, positionXRefCode, orgUnitXRefCode, unfill, expand, pageSize);
    }
    # POST (Create) Employee schedule
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/EmployeeSchedules(string orgUnitXRefCode, true isValidateOnly, EmployeeSchedulePostAPIRequestDTO[] payload, 0|1|2|3|4? violationLevel = ()) returns Payload_IEnumerable_EmployeeSchedulePostAPIResponse|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeSchedules.post(orgUnitXRefCode, isValidateOnly, payload, violationLevel);
    }
    # PATCH (Update) Employee schedule
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/V1/EmployeeSchedules(string orgUnitXRefCode, true isValidateOnly, EmployeeSchedulePatchAPIRequestDTO[] payload, 0|1|2|3|4? violationLevel = ()) returns Payload_IEnumerable_EmployeeSchedulePostAPIResponse|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeSchedules.patch(orgUnitXRefCode, isValidateOnly, payload, violationLevel);
    }
    # GET EmployeeShortTimeWork Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeShortTimeWorkController with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeShortTimeWorks(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeShortTimeWork|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeShortTimeWorks.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # GET EmployeeSkill Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeSkill with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Skills(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeSkill|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Skills.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an Employee Skill
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Skill is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Skills(true isValidateOnly, EmployeeSkill payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Skills.post(isValidateOnly, payload);
    }
    # PATCH (Update) an Employee Skill
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Skill is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Skills(true isValidateOnly, EmployeeSkill payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Skills.patch(isValidateOnly, payload);
    }
    # GET EmployeeTrainingProgram Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeTrainingProgram with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/TrainingPrograms() returns Payload_IEnumerable_EmployeeTrainingProgram|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/TrainingPrograms.get();
    }
    # POST an EmployeeTrainingProgram
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeTrainingProgram is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/TrainingPrograms(true isValidateOnly, EmployeeTrainingProgram payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/TrainingPrograms.post(isValidateOnly, payload);
    }
    # GET an EmployeeUKIrregularPaymentDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUKIrregularPaymentDetail with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/Irregular() returns Payload_IEnumerable_EmployeeUKIrregularPaymentDetails|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/Irregular.get();
    }
    # POST an EmployeeUKIrregularPaymentDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeUKIrregularPaymentDetails is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/Irregular(true isValidateOnly, EmployeeUKIrregularPaymentDetails payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/Irregular.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeUKIrregularPaymentDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUKIrregularPaymentDetails is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/Irregular(true isValidateOnly, EmployeeUKIrregularPaymentDetails payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/Irregular.patch(isValidateOnly, payload);
    }
    # GET Employee NI Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUKNIDetails with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKNI/NIInfo() returns Payload_IEnumerable_EmployeeUKNIDetails|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKNI/NIInfo.get();
    }
    # POST Employee NI Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Created NI Details for Employee with supplied XRefCode. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKNI/NIInfo(true isValidateOnly, EmployeeUKNIDetails payload) returns Payload_IEnumerable_EmployeeUKNIDetails|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKNI/NIInfo.post(isValidateOnly, payload);
    }
    # PATCH Employee NI Details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUKTaxDetails is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKNI/NIInfo(true isValidateOnly, EmployeeUKNIDetails payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKNI/NIInfo.patch(isValidateOnly, payload);
    }
    # GET EmployeeUKPostgraduateLoan Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUKPostgraduateLoan with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/PostgraduateLoan(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeUKPostgraduateLoan|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/PostgraduateLoan.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeUKPostgraduateLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeUKPostgraduateLoan is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/PostgraduateLoan(true isValidateOnly, EmployeeUKPostgraduateLoan payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/PostgraduateLoan.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeUKPostgraduateLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeUKPostgraduateLoan is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/PostgraduateLoan(true isValidateOnly, EmployeeUKPostgraduateLoan payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/PostgraduateLoan.patch(isValidateOnly, payload);
    }
    # GET EmployeeUKStudentLoan Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUKStudentLoan with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/StudentLoan(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeUKStudentLoan|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/StudentLoan.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeUKStudentLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeUKStudentLoan is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/StudentLoan(true isValidateOnly, EmployeeUKStudentLoan payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/StudentLoan.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeUKStudentLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeUKStudentLoan is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/StudentLoan(true isValidateOnly, EmployeeUKStudentLoan payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/StudentLoan.patch(isValidateOnly, payload);
    }
    # GET EmployeeUKTaxDetails Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUKTaxDetails with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/TaxInfo() returns Payload_IEnumerable_EmployeeUKTaxDetails|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/TaxInfo.get();
    }
    # POST an EmployeeUKTaxDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeUKTaxDetails is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/TaxInfo(true isValidateOnly, EmployeeUKTaxDetails payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/TaxInfo.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeUKTaxDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeUKTaxDetails is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/TaxInfo(true isValidateOnly, EmployeeUKTaxDetails payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UKTax/TaxInfo.patch(isValidateOnly, payload);
    }
    # GET EmployeeUnion Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUnion with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UnionMemberships(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeUnionMembership|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UnionMemberships.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeUnion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeUnion is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UnionMemberships(true isValidateOnly, EmployeeUnionMembership payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UnionMemberships.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeUnion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUnion is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UnionMemberships(true isValidateOnly, EmployeeUnionMembership payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UnionMemberships.patch(isValidateOnly, payload);
    }
    # GET EmployeeUSFederalTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUSFederalTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/USFederalTaxes(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeUSFederalTax|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USFederalTaxes.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeUSFederalTax is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/USFederalTaxes(true isValidateOnly, EmployeeUSFederalTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USFederalTaxes.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeUSFederalTax is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/USFederalTaxes(true isValidateOnly, EmployeeUSFederalTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USFederalTaxes.patch(isValidateOnly, payload);
    }
    # GET EmployeeUSStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUSStateTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/USStateTaxes(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeUSStateTax|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USStateTaxes.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST EmployeeUSStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeUSStateTax Detail is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/USStateTaxes(true isValidateOnly, EmployeeUSStateTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USStateTaxes.post(isValidateOnly, payload);
    }
    # PATCH EmployeeUSStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeUSStateTax Detail is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/USStateTaxes(true isValidateOnly, EmployeeUSStateTax payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USStateTaxes.patch(isValidateOnly, payload);
    }
    # GET EmployeeUSTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeUSTaxStatus with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/USTaxStatuses(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeUSTaxStatus|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USTaxStatuses.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST EmployeeUSTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeUSTaxStatus Detail is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/USTaxStatuses(true isValidateOnly, EmployeeUSTaxStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USTaxStatuses.post(isValidateOnly, payload);
    }
    # PATCH EmployeeUSTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeUSTaxStatus Detail is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/USTaxStatuses(true isValidateOnly, EmployeeUSTaxStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/USTaxStatuses.patch(isValidateOnly, payload);
    }
    # GET Verification of Employment (VOE) for a specific employee.
    #
    # + countryCode - Employee's Country Code.
    # + employeeXRefCode - The unique identifier (external reference code) of the employee.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePayrollTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/EmployeeVOE/[string countryCode]/[string employeeXRefCode]() returns Payload_EmployeeVOE|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeVOE/[countryCode]/[employeeXRefCode].get();
    }
    # GET Verification of Income (VOI) for a specific employee.
    #
    # + countryCode - Employee's Country Code.
    # + employeeXRefCode - The unique identifier (external reference code) of the employee.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeePayrollTax with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/EmployeeVOI/[string countryCode]/[string employeeXRefCode]() returns Payload_EmployeeVOI|error {
        return self.genClient->/[clientNamespace]/V1/EmployeeVOI/[countryCode]/[employeeXRefCode].get();
    }
    # GET EmployeeVeteransStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeVeteransStatusController with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/VeteranStatuses(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeVeteransStatus|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/VeteranStatuses.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeVeteransStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeVeteransStatus is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/VeteranStatuses(true isValidateOnly, EmployeeVeteransStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/VeteranStatuses.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeVeteransStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeVeteransStatus is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/VeteranStatuses(true isValidateOnly, EmployeeVeteransStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/VeteranStatuses.patch(isValidateOnly, payload);
    }
    # GET Employee's Volunteer List Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The  EmployeeVolunteerList for the requested employee XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/VolunteerLists(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeVolunteerList|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/VolunteerLists.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST an EmployeeVolunteerList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeVolunteerList is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/VolunteerLists(true isValidateOnly, EmployeeVolunteerList payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/VolunteerLists.post(isValidateOnly, payload);
    }
    # PATCH an EmployeeVolunteerList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A EmployeeVolunteerList is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/VolunteerLists(true isValidateOnly, EmployeeVolunteerList payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/VolunteerLists.patch(isValidateOnly, payload);
    }
    # GET EmployeeWorkAssignmentManager Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeWorkAssignmentManager with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeWorkAssignmentManager|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeWorkAssignmentManagers.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeWorkAssignmentManager
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeWorkAssignmentManager is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers(true isValidateOnly, EmployeeWorkAssignmentManager payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeWorkAssignmentManagers.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeWorkAssignmentManager
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeWorkAssignmentManager is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers(true isValidateOnly, EmployeeWorkAssignmentManager payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeWorkAssignmentManagers.patch(isValidateOnly, payload);
    }
    # Replace EmployeeWorkAssignmentManagers
    #
    # + xRefCode - The unique identifier (external reference code) of the Employee for whom the subordinate data will be replaced.
    # The value provided must be the exact match for an Employee; otherwise, a bad request (400) error will be returned.
    # + replaceFrom - The date from which all EmployeeWorkAssignmentManagers will be replaced.
    # + replaceTo - The date up to which all EmployeeWorkAssignmentManagers will be replaced.
    # + isValidateOnly - When a TRUE value is used in this parameter, validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The new JSON-formatted EmployeeWorkAssignmentManager with which to replace the deleted ones.
    # + return - The Employee's Work Assignment Managers are replaced within the given date range; no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers/Replacement(true isValidateOnly, EmployeeWorkAssignmentManager payload, string? replaceFrom = (), string? replaceTo = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/EmployeeWorkAssignmentManagers/Replacement.patch(isValidateOnly, payload, replaceFrom, replaceTo);
    }
    # GET WorkAssignment Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Work Assignments of employee with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeWorkAssignment|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/WorkAssignments.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a WorkAssignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - An EmployeeWorkAssignment is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments(true isValidateOnly, EmployeeWorkAssignment payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/WorkAssignments.post(isValidateOnly, payload);
    }
    # PATCH a Work Assignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The Work Assignment is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments(true isValidateOnly, EmployeeWorkAssignment payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/WorkAssignments.patch(isValidateOnly, payload);
    }
    # Replace WorkAssignments
    #
    # + xRefCode - The unique identifier (external reference code) of the Employee for whom the subordinate data will be replaced.
    # The value provided must be the exact match for an Employee; otherwise, a bad request (400) error will be returned.
    # + replaceFrom - The date from which all WorkAssignments will be replaced.
    # + replaceTo - The date up to which all WorkAssignments will be replaced.
    # + isValidateOnly - When a TRUE value is used in this parameter, validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The new JSON-formatted WorkAssignment with which to replace the deleted ones.
    # + return - The Employee's Work Assignments are replaced within the given date range; no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments/Replacement(true isValidateOnly, EmployeeWorkAssignment payload, string? replaceFrom = (), string? replaceTo = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/WorkAssignments/Replacement.patch(isValidateOnly, payload, replaceFrom, replaceTo);
    }
    # GET List of work location overrides.
    #
    # + workLocationOverrideXRefCodes - The comma delimited list of work location overrides XRef codes.
    # + locationAddressStateCodes - The comma delimited list of location address state codes.
    # + legalEntityXRefCode - The legal entity XRef code.
    # + legalEntityOverrideDetails - Filter to fetch all or current/future effective legal entity overrides. Value can be All or Active. Default value is Active.
    # + pageSize - Number of records to be loaded.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Work location overrides. 
    resource isolated function get [string clientNamespace]/V1/Payroll/WorkLocationOverride(string? workLocationOverrideXRefCodes = (), string? locationAddressStateCodes = (), string? legalEntityXRefCode = (), string? legalEntityOverrideDetails = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeeWorkLocationOverride|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/WorkLocationOverride.get(workLocationOverrideXRefCodes, locationAddressStateCodes, legalEntityXRefCode, legalEntityOverrideDetails, pageSize);
    }
    # POST Employee Elections
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - OK response 
    resource isolated function post [string clientNamespace]/v1/Payroll/WorkLocationOverrides(true isValidateOnly, EmployeeWorkLocationOverride[] payload) returns Payload_IEnumerable_EmployeeWorkLocationOverride|error {
        return self.genClient->/[clientNamespace]/v1/Payroll/WorkLocationOverrides.post(isValidateOnly, payload);
    }
    # PATCH Employee Elections
    #
    # + isValidateOnly - If TRUE, PATCH operations validate the request without queue the import. The default value is FALSE. Note, PATCH operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/v1/Payroll/WorkLocationOverrides(true isValidateOnly, EmployeeWorkLocationOverride[] payload) returns Payload_IEnumerable_EmployeeWorkLocationOverride|error {
        return self.genClient->/[clientNamespace]/v1/Payroll/WorkLocationOverrides.patch(isValidateOnly, payload);
    }
    # GET a List of EmploymentStatus XRefCodes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of EmploymentStatus XRefCodes. 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatuses() returns Payload_IEnumerable_EmploymentStatus|error {
        return self.genClient->/[clientNamespace]/V1/EmploymentStatuses.get();
    }
    # GET a EmploymentStatus with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmploymentStatus with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatuses/[string xrefCode]() returns Payload_EmploymentStatus|error {
        return self.genClient->/[clientNamespace]/V1/EmploymentStatuses/[xrefCode].get();
    }
    # GET a List of EmploymentStatusReason XRefCodes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of EmploymentStatusReason XRefCodes. 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatusReasons() returns Payload_IEnumerable_EmploymentStatusReason|error {
        return self.genClient->/[clientNamespace]/V1/EmploymentStatusReasons.get();
    }
    # GET a EmploymentStatusReason with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmploymentStatusReason with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatusReasons/[string xrefCode]() returns Payload_EmploymentStatusReason|error {
        return self.genClient->/[clientNamespace]/V1/EmploymentStatusReasons/[xrefCode].get();
    }
    # POST e-signature order status.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Returns a HTTP OK response indicating the acceptance of e-signature order status. 
    resource isolated function post [string clientNamespace]/V1/ESignatureOrder(record {}[] payload) returns xml|error {
        return self.genClient->/[clientNamespace]/V1/ESignatureOrder.post(payload);
    }
    # GET The list of regional property.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The ExtensibleProperty with the requested TypeCode,EntityType,CountryCode,EntityXrefCode. 
    resource isolated function get [string clientNamespace]/V1/ExtensibleProperty/[string typeCode]/[string entityType]/[string countryCode]/[string entityXRefCode](string elementXRefCode, string activeAll) returns Payload_IEnumerable_ExtensibleProperty|error {
        return self.genClient->/[clientNamespace]/V1/ExtensibleProperty/[typeCode]/[entityType]/[countryCode]/[entityXRefCode].get(elementXRefCode, activeAll);
    }
    # POST (Create) Extensible Property
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The ExtensibleProperty with the requested TypeCode,EntityType,CountryCode,EntityXrefCode. 
    resource isolated function post [string clientNamespace]/V1/ExtensibleProperty/[string typeCode]/[string entityType]/[string countryCode]/[string entityXRefCode](true isValidateOnly, ExtensibleProperty[] payload) returns ExtensibleProperty[]|error {
        return self.genClient->/[clientNamespace]/V1/ExtensibleProperty/[typeCode]/[entityType]/[countryCode]/[entityXRefCode].post(isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The ExtensibleProperty with the requested EntityXrefCode. 
    resource isolated function post [string clientNamespace]/V1/ExtensibleProperty/Remove/[string typeCode]/[string entityType]/[string countryCode]/[string entityXRefCode](true isValidateOnly) returns ExtensibleProperty|error {
        return self.genClient->/[clientNamespace]/V1/ExtensibleProperty/Remove/[typeCode]/[entityType]/[countryCode]/[entityXRefCode].post(isValidateOnly);
    }
    # POST Global Pay Run/s Details
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A Global Pay Run is created with an empty response body. 
    resource isolated function post [string clientNamespace]/V1/GLOBALPayRunImport(true isValidateOnly) returns json|error {
        return self.genClient->/[clientNamespace]/V1/GLOBALPayRunImport.post(isValidateOnly);
    }
    # PATCH (Update) an I-9 order
    #
    # + i9OrderId - The unique identifier for the I-9 order on the I-9 partner's system. The value of this parameter needs to match the value for the I9OrderId property in the request body.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - Details about the I-9 order to update.
    # + return - The I-9 order is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/I9Orders/[string i9OrderId](true isValidateOnly, I9Order payload) returns xml|error {
        return self.genClient->/[clientNamespace]/V1/I9Orders/[i9OrderId].patch(isValidateOnly, payload);
    }
    # GET Job Feeds
    #
    # + companyName - Company name. Example: XYZ Co.
    # + parentCompanyName - Parent Company name. Example: Ceridian
    # + internalJobBoardCode - XRefCode of Job Board. Example: CANDIDATEPORTAL
    # + includeActivePostingOnly - If true, then exclude inactive postings from the result. If False, then the 'Last Update Time From' and 'Last Update Time To' parameters are required and the range specified between the 'Last Update Time From' and 'Last Update Time To' parameters must not be larger than 1 month. Example: True
    # + lastUpdateTimeFrom - A starting timestamp of last updated job posting. Example: 2017-01-01T13:24:56
    # + lastUpdateTimeTo - An ending timestamp of last updated job posting. Example: 2017-02-01T13:24:56
    # + datePostedFrom - A starting timestamp of job posting date. Example: 2017-01-01T13:24:56
    # + datePostedTo - An ending timestamp of job posting date. Example: 2017-02-01T13:24:56
    # + htmlDescription - A flag to feed the jobs over with html formatting or plain text description
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of all active external job postings (i.e. public facing job postings) based on specified filter parameters. 
    resource isolated function get [string clientNamespace]/V1/JobFeeds(string? companyName = (), string? parentCompanyName = (), string? internalJobBoardCode = (), boolean? includeActivePostingOnly = (), string? lastUpdateTimeFrom = (), string? lastUpdateTimeTo = (), string? datePostedFrom = (), string? datePostedTo = (), boolean? htmlDescription = ()) returns JobFeed[]|error {
        return self.genClient->/[clientNamespace]/V1/JobFeeds.get(companyName, parentCompanyName, internalJobBoardCode, includeActivePostingOnly, lastUpdateTimeFrom, lastUpdateTimeTo, datePostedFrom, datePostedTo, htmlDescription);
    }
    # GET a List of Jobs
    #
    # + contextDate - The Context Date value is an “as-of” date used to determine which job data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Job XRefCodes meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Jobs(string? contextDate = ()) returns Payload_IEnumerable_Job|error {
        return self.genClient->/[clientNamespace]/V1/Jobs.get(contextDate);
    }
    # POST (Add) a Job
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH (job update) operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH (job update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A Job is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Jobs(true isValidateOnly, Job payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Jobs.post(isValidateOnly, payload);
    }
    # GET a List of Jobs
    #
    # + xrefCode - The unique identifier (external reference code) of the job to be retrieved.  The value provided must be the exact match for a job; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Job with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Jobs/[string xrefCode]() returns Payload_Job|error {
        return self.genClient->/[clientNamespace]/V1/Jobs/[xrefCode].get();
    }
    # PATCH (Update) a Job
    #
    # + xRefCode - The unique identifier (external reference code) of the job to be retrieved.  The value provided must be the exact match for a job; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH (job update) operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH (job update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A Job is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Jobs/[string xRefCode](true isValidateOnly, Job payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Jobs/[xRefCode].patch(isValidateOnly, payload);
    }
    # Get KPI Data matching search criteria
    # (if neither Zone or MDSE supplied the data is assumed to be organization-wide)
    #
    # + orgUnitXRefCode - Org unit reference code
    # + kpiXRefCode - KPI reference Code
    # + kpiDataType - KPI data type - Enter values for either actual, plan or forecast
    # + timePeriod - KPI time period - Enter values for either minute, day or week
    # + filterFrom - Start date of filter range
    # + filterTo - End date of filter range
    # + zoneXRefCode - Zone reference code
    # + mdseXRefCode - MDSE reference code
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - KPI Data which matches the supplied parameters 
    resource isolated function get [string clientNamespace]/V1/KpiData(string orgUnitXRefCode, string kpiXRefCode, string kpiDataType, string timePeriod, string filterFrom, string filterTo, string? zoneXRefCode = (), string? mdseXRefCode = ()) returns Payload_IEnumerable_KpiData|error {
        return self.genClient->/[clientNamespace]/V1/KpiData.get(orgUnitXRefCode, kpiXRefCode, kpiDataType, timePeriod, filterFrom, filterTo, zoneXRefCode, mdseXRefCode);
    }
    # Post KPI Data for the supplied parameters
    #
    # + orgUnitXRefCode - Org unit reference code
    # + kpiXRefCode - KPI reference code
    # + kpiDataType - KPI data type - Enter values for either actual, plan or forecast
    # + timePeriod - KPI time period - Enter values for either minute, day or week
    # + aggregateToDay - Aggregate to day will be set to true by default. This will aggregate data from minute to day
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The KPI Data has been created 
    resource isolated function post [string clientNamespace]/V1/KpiData(string orgUnitXRefCode, string kpiXRefCode, string kpiDataType, string timePeriod, true isValidateOnly, KpiData[] payload, boolean? aggregateToDay = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/KpiData.post(orgUnitXRefCode, kpiXRefCode, kpiDataType, timePeriod, isValidateOnly, payload, aggregateToDay);
    }
    # Patch KPI Data for the supplied parameters
    #
    # + orgUnitXRefCode - Org unit reference code
    # + kpiXRefCode - KPI reference code
    # + kpiDataType - KPI data type - Enter values for either actual, plan or forecast
    # + timePeriod - KPI time period - Enter values for either minute, day or week
    # + aggregateToDay - Aggregate to day will be set to true by default. This will aggregate data from minute to day
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The KPI Data has been updated 
    resource isolated function patch [string clientNamespace]/V1/KpiData(string orgUnitXRefCode, string kpiXRefCode, string kpiDataType, string timePeriod, true isValidateOnly, KpiData[] payload, boolean? aggregateToDay = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/KpiData.patch(orgUnitXRefCode, kpiXRefCode, kpiDataType, timePeriod, isValidateOnly, payload, aggregateToDay);
    }
    # Get KPI Target Patterns matching search criteria
    #
    # + orgUnitXRefCode - Org unit reference code
    # + kpiXRefCode - KPI reference code
    # + startDate - Start date
    # + endDate - End date
    # + zoneXRefCode - Zone reference code
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - KPI Target Pattern details which matches the supplied parameters 
    resource isolated function get [string clientNamespace]/V1/KpiTargetPattern(string orgUnitXRefCode, string kpiXRefCode, string startDate, string endDate, string? zoneXRefCode = ()) returns Payload_IEnumerable_KpiTargetPattern|error {
        return self.genClient->/[clientNamespace]/V1/KpiTargetPattern.get(orgUnitXRefCode, kpiXRefCode, startDate, endDate, zoneXRefCode);
    }
    # Post KPI Target Pattern for the supplied parameters
    #
    # + orgUnitXRefCode - Org unit reference code
    # + kpiXRefCode - KPI reference code
    # + isValidateOnly - When a TRUE value is used in this parameter, the POST operation validates the
    # request without creating records in the database. The default value is FALSE if parameter is not specified
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed. 
    resource isolated function post [string clientNamespace]/V1/KpiTargetPattern(string orgUnitXRefCode, string kpiXRefCode, true isValidateOnly, KpiTargetPatternPOST[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/KpiTargetPattern.post(orgUnitXRefCode, kpiXRefCode, isValidateOnly, payload);
    }
    # Patch KPI Target Pattern for the supplied parameters
    #
    # + orgUnitXRefCode - Org unit reference code
    # + kpiXRefCode - KPI reference code
    # + isValidateOnly - When a TRUE value is used in this parameter, the PATCH operation validates the
    # request without applying the updates to the database. The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed 
    resource isolated function patch [string clientNamespace]/V1/KpiTargetPattern(string orgUnitXRefCode, string kpiXRefCode, true isValidateOnly, KpiTargetPatternPOST[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/KpiTargetPattern.patch(orgUnitXRefCode, kpiXRefCode, isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Labor cost result in the segment of 15 minutes. 
    resource isolated function get [string clientNamespace]/V1/LaborCosts(string locationXRefCode, string businessDate) returns Payload_LaborCostResult|error {
        return self.genClient->/[clientNamespace]/V1/LaborCosts.get(locationXRefCode, businessDate);
    }
    # Get Labor Demand Curve details for Org over period
    #
    # + orgUnitXRefCode - Org Unit Ref Code
    # + schedulePeriodStart - start of schedule period
    # + filterFrom - start of range (optional) - defaults to schedulePeriodStart if not supplied
    # + filterTo - end of range (optional) - defaults to a week from schedulePeriodStart if not supplied
    # + zoneXRefCode - filter by Zone Ref Code (optional)
    # + activityXRefCode - filter by Activity Ref Code (optional)
    # + laborMeasureXRefCode - filter by Labor Measure Ref Code (optional)
    # + axisXRefCode - filter by Axis Ref Code (optional)
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Labor demand details which matches the supplied OrgXrefCode and SchedulePeriod 
    resource isolated function get [string clientNamespace]/V1/LaborDemands(string orgUnitXRefCode, string schedulePeriodStart, string? filterFrom = (), string? filterTo = (), string? zoneXRefCode = (), string? activityXRefCode = (), string? laborMeasureXRefCode = (), string? axisXRefCode = ()) returns Payload_LaborDemand|error {
        return self.genClient->/[clientNamespace]/V1/LaborDemands.get(orgUnitXRefCode, schedulePeriodStart, filterFrom, filterTo, zoneXRefCode, activityXRefCode, laborMeasureXRefCode, axisXRefCode);
    }
    # Create a set of labor demands for an organization in the defined SchedulePeriod
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Labor Demands have been created 
    resource isolated function post [string clientNamespace]/V1/LaborDemands(true isValidateOnly, LaborDemand payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LaborDemands.post(isValidateOnly, payload);
    }
    # Deletes Labor Demand Curve details for Org over period
    # Optional will only delete demands matching filters
    #
    # + orgUnitXRefCode - Org Unit Ref Code
    # + schedulePeriodStart - start of schedule period
    # + filterFrom - start of range (optional) - defaults to schedulePeriodStart if not supplied
    # + filterTo - end of range (optional) - defaults to a week from schedulePeriodStart if not supplied
    # + zoneXRefCode - filter by Zone Ref Code (optional)
    # + activityXRefCode - filter by Activity Ref Code (optional)
    # + laborMeasureXRefCode - filter by Labor Measure Ref Code (optional)
    # + axisXRefCode - filter by Axis Ref Code (optional)
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Labor demand details for the supplied OrgXrefCode and SchedulePeriod have been deleted 
    resource isolated function delete [string clientNamespace]/V1/LaborDemands(string orgUnitXRefCode, string schedulePeriodStart, string? filterFrom = (), string? filterTo = (), string? zoneXRefCode = (), string? activityXRefCode = (), string? laborMeasureXRefCode = (), string? axisXRefCode = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LaborDemands.delete(orgUnitXRefCode, schedulePeriodStart, filterFrom, filterTo, zoneXRefCode, activityXRefCode, laborMeasureXRefCode, axisXRefCode);
    }
    # Update a set of labor demands for an organization in the defined SchedulePeriod
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Created 
    resource isolated function patch [string clientNamespace]/V1/LaborDemands(string dayToPatch, true isValidateOnly, LaborDemand payload, string? zoneXRefCode = (), string? activityXRefCode = (), string? laborMeasureXRefCode = (), string? axisXRefCode = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LaborDemands.patch(dayToPatch, isValidateOnly, payload, zoneXRefCode, activityXRefCode, laborMeasureXRefCode, axisXRefCode);
    }
    # Get Labor Metric details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Labor metric details which matches the XRefCode. 
    resource isolated function get [string clientNamespace]/V1/LaborMetrics/[string xRefCode]() returns Payload_LaborMetricCodes|error {
        return self.genClient->/[clientNamespace]/V1/LaborMetrics/[xRefCode].get();
    }
    # Post Insert Labor metrics codes
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - New Labor metrics code data is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/LaborMetrics(true isValidateOnly, LaborMetricsCodesForSubmit payload) returns LaborMetricsCodePostPatchResponse|error {
        return self.genClient->/[clientNamespace]/V1/LaborMetrics.post(isValidateOnly, payload);
    }
    # Patch (Update) a Labor metrics code
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - Labor metrics code data is updated 
    resource isolated function patch [string clientNamespace]/V1/LaborMetrics(true isValidateOnly, LaborMetricsCodesForSubmit payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LaborMetrics.patch(isValidateOnly, payload);
    }
    # Get Labor Metric Type details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Labor metric type details which matches the XRefCode. 
    resource isolated function get [string clientNamespace]/V1/LaborMetricTypes/[string xRefCode]() returns Payload_LaborMetricType|error {
        return self.genClient->/[clientNamespace]/V1/LaborMetricTypes/[xRefCode].get();
    }
    # POST Labor Metric Type details
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - New Labor Metric Type is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/LaborMetricTypes(true isValidateOnly, LaborMetricTypeForSubmit payload) returns LaborMetricTypePatchPostResponse|error {
        return self.genClient->/[clientNamespace]/V1/LaborMetricTypes.post(isValidateOnly, payload);
    }
    # Patch (Update) Labor Metric Type
    #
    # + laborMetricTypeXRefCode - Labor Metric Type XRefCode
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - Labor Metric Type data is updated 
    resource isolated function patch [string clientNamespace]/V1/LaborMetricTypes(string laborMetricTypeXRefCode, true isValidateOnly, LaborMetricTypeForSubmit payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LaborMetricTypes.patch(laborMetricTypeXRefCode, isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Search results for Labor Validation Policy rules based on parameters 
    resource isolated function post [string clientNamespace]/V1/LaborValidationPolicy/Search(LaborValidationFilters payload, int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_LaborValidationRule|error {
        return self.genClient->/[clientNamespace]/V1/LaborValidationPolicy/Search.post(payload, pageSize);
    }
    # Get Labor Validation Policy Rule Details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Labor Validation Policy rules  which matches the XRefCode 
    resource isolated function get [string clientNamespace]/V1/LaborValidationPolicy/Rule/[string laborValidationPolicyRuleXRefCode]() returns Payload_IEnumerable_LaborValidationRule|error {
        return self.genClient->/[clientNamespace]/V1/LaborValidationPolicy/Rule/[laborValidationPolicyRuleXRefCode].get();
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Delete labor validation policy rules based on xrefcode 
    resource isolated function delete [string clientNamespace]/V1/LaborValidationPolicy/Rule/[string laborValidationPolicyRuleXRefCode]() returns json|error {
        return self.genClient->/[clientNamespace]/V1/LaborValidationPolicy/Rule/[laborValidationPolicyRuleXRefCode].delete();
    }
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Post Validation Policy Rule 
    resource isolated function patch [string clientNamespace]/V1/LaborValidationPolicy/Rule/[string laborValidationPolicyRuleXRefCode](true isValidateOnly, LaborValidationRule payload) returns Payload_Boolean|error {
        return self.genClient->/[clientNamespace]/V1/LaborValidationPolicy/Rule/[laborValidationPolicyRuleXRefCode].patch(isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Post Validation Policy Rule 
    resource isolated function post [string clientNamespace]/V1/LaborValidationPolicy/Rule(LaborValidationRule payload) returns Payload_Boolean|error {
        return self.genClient->/[clientNamespace]/V1/LaborValidationPolicy/Rule.post(payload);
    }
    # Get Legacy Labor Metric data
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Legacy labor metric details which matches the Type and XRefCode. 
    resource isolated function get [string clientNamespace]/V1/LegacyLaborMetric(string legacyLaborMetricType, string legacyLaborMetricXRefCode) returns Payload_LegacyLaborMetricCodes|error {
        return self.genClient->/[clientNamespace]/V1/LegacyLaborMetric.get(legacyLaborMetricType, legacyLaborMetricXRefCode);
    }
    # Post Insert Legacy Labor metrics
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - New Legacy Labor Metric data is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/LegacyLaborMetric(true isValidateOnly, LegacyLaborMetricForSubmit payload) returns LegacyLaborMetricPatchPostDeleteResponse|error {
        return self.genClient->/[clientNamespace]/V1/LegacyLaborMetric.post(isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Legacy labor metric details which matches the Type and XRefCode were Deleted. 
    resource isolated function delete [string clientNamespace]/V1/LegacyLaborMetric(string legacyLaborMetricType, string legacyLaborMetricXRefCode) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LegacyLaborMetric.delete(legacyLaborMetricType, legacyLaborMetricXRefCode);
    }
    # Patch (Update) a Legacy Labor Metric
    #
    # + legacyLaborMetricXRefCode - XRefCode
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - Legacy Labor Metric data is updated 
    resource isolated function patch [string clientNamespace]/V1/LegacyLaborMetric(string legacyLaborMetricXRefCode, true isValidateOnly, LegacyLaborMetricForSubmit payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LegacyLaborMetric.patch(legacyLaborMetricXRefCode, isValidateOnly, payload);
    }
    # GET List of Location Addresses.
    #
    # + shortName - Filter the location addresses by their ShortName. The service defaults to NULL if the requester does not specify a value.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Location Addresses meeting the search criteria, if provided. 
    resource isolated function get [string clientNamespace]/V1/LocationAddresses(string? shortName = (), string? countryCode = (), string? stateProvinceCode = ()) returns Payload_IEnumerable_LocationAddresses|error {
        return self.genClient->/[clientNamespace]/V1/LocationAddresses.get(shortName, countryCode, stateProvinceCode);
    }
    # POST Location Address.
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A Location Address is created with an empty response body. 
    resource isolated function post [string clientNamespace]/V1/LocationAddresses(true isValidateOnly, LocationAddresses payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LocationAddresses.post(isValidateOnly, payload);
    }
    # PATCH Location Address.
    #
    # + xRefCode - The unique identifier (external reference code) of the position. The value provided must be the exact match for a position; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (position add) and PATCH (position update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A Location Address is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/LocationAddresses(string xRefCode, true isValidateOnly, LocationAddresses payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/LocationAddresses.patch(xRefCode, isValidateOnly, payload);
    }
    # GET MaritalStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Marital Statuses of employee with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/MaritalStatuses(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeMaritalStatus|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/MaritalStatuses.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a MaritalStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A MaritalStatus is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/MaritalStatuses(true isValidateOnly, EmployeeMaritalStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/MaritalStatuses.post(isValidateOnly, payload);
    }
    # PATCH a MaritalStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The MaritalStatus is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/MaritalStatuses(true isValidateOnly, EmployeeMaritalStatus payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/MaritalStatuses.patch(isValidateOnly, payload);
    }
    #
    # + startDate - Date to represent the start of the period for which operating hours should be retrieved. Format yyyy-mm-dd
    # + endDate - Date to represent the end of the period for which operating hours should be retrieved. Format yyyy-mm-dd
    # + orgUnitXRefCode - The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Operating Hours details which matches the supplied OrgUnitXRefCode and date range. 
    resource isolated function get [string clientNamespace]/V1/OperatingHours/GetOperatingHours(string startDate, string endDate, string orgUnitXRefCode) returns Payload_OperatingHours|error {
        return self.genClient->/[clientNamespace]/V1/OperatingHours/GetOperatingHours.get(startDate, endDate, orgUnitXRefCode);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK 
    resource isolated function post [string clientNamespace]/V1/OperatingHours/PostOperatingHoursException(true isValidateOnly, OperatingHoursExceptionPOST[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/OperatingHours/PostOperatingHoursException.post(isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK 
    resource isolated function patch [string clientNamespace]/V1/OperatingHours/PatchOperatingHoursException(true isValidateOnly, OperatingHoursExceptionPOST[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/OperatingHours/PatchOperatingHoursException.patch(isValidateOnly, payload);
    }
    # Get a list of OrgUnits
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of OrgUnit XRefCodes meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/OrgUnits() returns Payload_IEnumerable_Location|error {
        return self.genClient->/[clientNamespace]/V1/OrgUnits.get();
    }
    # POST (Add) an OrgUnit
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + calibrateOrg - This parameter accepts TRUE or FALSE values to determine whether the Org Recalculation process is to be triggered. The default value is TRUE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (orgunit add) and PATCH (orgunit update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Org Unit is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/OrgUnits(true isValidateOnly, Location payload, string? calibrateOrg = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/OrgUnits.post(isValidateOnly, payload, calibrateOrg);
    }
    # Get OrgUnit details
    #
    # + xrefCode - The unique identifier (external reference code) of the org unit. The value provided must be the exact match for an org unit; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which org unit data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2019-01-01T12:34:56
    # + expand - This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the orgunit master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document.
    # + includeChildOrgUnits - When a TRUE value is used in this parameter, the immediate child org units’ information under the org unit being retrieved will be returned as well.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Org Unit with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/OrgUnits/[string xrefCode](string? contextDate = (), string? expand = (), boolean? includeChildOrgUnits = ()) returns Payload_Location|error {
        return self.genClient->/[clientNamespace]/V1/OrgUnits/[xrefCode].get(contextDate, expand, includeChildOrgUnits);
    }
    # PATCH (Update) an OrgUnit
    #
    # + xRefCode - The unique identifier (external reference code) of the org unit. The value provided must be the exact match for an org unit; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + replaceExisting - This parameter accepts a comma-separated list of OrgUnit sub-entities where the respective data provided will replace all existing records. This currently applies to OrgUnitLocationTypes sub-entities, which are considered as a list and are not effective dated.
    # + calibrateOrg - This parameter accepts TRUE or FALSE values to determine whether the Org Recalculation process is to be triggered. The default value is TRUE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (orgunit add) and PATCH (orgunit update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Org Unit is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/OrgUnits/[string xRefCode](true isValidateOnly, Location payload, string? replaceExisting = (), string? calibrateOrg = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/OrgUnits/[xRefCode].patch(isValidateOnly, payload, replaceExisting, calibrateOrg);
    }
    # GET a List of PayClasses
    #
    # + contextDate - The Context Date value is an “as-of” date used to determine which PayClass data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of PayClass XRefCodes meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/PayClasses(string? contextDate = ()) returns Payload_IEnumerable_PayClass|error {
        return self.genClient->/[clientNamespace]/V1/PayClasses.get(contextDate);
    }
    # Get PayClass details
    #
    # + xrefCode - The unique identifier (external reference code) of the PayClass to be retrieved.  The value provided must be the exact match for a PayClass; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The PayClass with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/PayClasses/[string xrefCode]() returns Payload_PayClass|error {
        return self.genClient->/[clientNamespace]/V1/PayClasses/[xrefCode].get();
    }
    # GET List of Third Party Payees.
    #
    # + payeeStatus - &gt;Can be Active, InActive or All. The default value is Active.
    # + payeeXRefCodes - &gt;List of Payee Reference Codes with comma separator to filter the result.
    # + payeeCategoryXRefCodes - &gt;List of Payee Category Reference Codes with comma separator to filter the result.
    # + paymentMethodXRefCodes - &gt;List of Pay Method Reference Codes with comma separator to filter the result.
    # + operatingCountries - &gt;List of country codes with comma separator to filter the result base on country.
    # + earningPayee - &gt;Set to true to only get Earning Payees.
    # + deductionPayee - &gt;Set to true to only get Deduction Payees.
    # + systemPayee - &gt;Set to true to only get System Payees.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - List of payees. 
    resource isolated function get [string clientNamespace]/V1/Payee(string? payeeStatus = (), string? payeeXRefCodes = (), string? payeeCategoryXRefCodes = (), string? paymentMethodXRefCodes = (), string? operatingCountries = (), boolean? earningPayee = (), boolean? deductionPayee = (), boolean? systemPayee = ()) returns Payload_IEnumerable_Payee|error {
        return self.genClient->/[clientNamespace]/V1/Payee.get(payeeStatus, payeeXRefCodes, payeeCategoryXRefCodes, paymentMethodXRefCodes, operatingCountries, earningPayee, deductionPayee, systemPayee);
    }
    # POST Add Third Party Payees
    #
    # + isValidateOnly - If true, only validate the request. Otherwise, validate and save.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/Payee(true isValidateOnly, Payee[] payload) returns Payload_List_Payee|error {
        return self.genClient->/[clientNamespace]/V1/Payee.post(isValidateOnly, payload);
    }
    # PATCH Update Third Party Payees
    #
    # + isValidateOnly - If true, only validate the request. Otherwise, validate and save.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/V1/Payee(true isValidateOnly, Payee[] payload) returns Payload_List_Payee|error {
        return self.genClient->/[clientNamespace]/V1/Payee.patch(isValidateOnly, payload);
    }
    # GET List of Pay Group Calendars.
    #
    # + payGroupXRefCode - The pay group's reference code.
    # + payDateYear - The pay group calen xdar's pay date year.
    # + payDate - The pay group calendar's pay date.
    # + periodStartDate - The pay group calendar's period start date.
    # + periodEndDate - The pay group calendar's period end date.
    # + payPeriod - The pay group calendar's pay period number.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Pay Group Calendar. 
    resource isolated function get [string clientNamespace]/V1/PayGroupCalendar/[string payGroupXRefCode](boolean? payrollCommitted = (), int:Signed32? payDateYear = (), string? payDate = (), string? periodStartDate = (), string? periodEndDate = (), int:Signed32? payPeriod = ()) returns Payload_PayGroupCalendar|error {
        return self.genClient->/[clientNamespace]/V1/PayGroupCalendar/[payGroupXRefCode].get(payrollCommitted, payDateYear, payDate, periodStartDate, periodEndDate, payPeriod);
    }
    # GET List of Employee Elections.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Employee Payroll Election. 
    resource isolated function get [string clientNamespace]/V1/Payroll/PayrollElection(string? 'source = (), string? codeType = (), string? electionStatus = (), string? payGroupXRefCode = (), string? employeeXRefCodes = (), string? employmentStatusXRefCode = (), int:Signed32? pageSize = ()) returns PaginatedPayload_IEnumerable_EmployeePayrollElection|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/PayrollElection.get('source, codeType, electionStatus, payGroupXRefCode, employeeXRefCodes, employmentStatusXRefCode, pageSize);
    }
    # POST Employee Elections
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + autoUpdateExisting - If TRUE, all other elections of the same employee will be end-dated. The default value is FALSE.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - OK response 
    resource isolated function post [string clientNamespace]/v1/Payroll/PayrollElections(true isValidateOnly, EmployeePayrollElection[] payload, boolean? autoUpdateExisting = ()) returns Payload_IEnumerable_EmployeePayrollElection|error {
        return self.genClient->/[clientNamespace]/v1/Payroll/PayrollElections.post(isValidateOnly, payload, autoUpdateExisting);
    }
    # PATCH Employee Elections
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + autoUpdateExisting - If TRUE, all other elections of the same employee will be end-dated. The default value is FALSE.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/v1/Payroll/PayrollElections(true isValidateOnly, EmployeePayrollElection[] payload, boolean? autoUpdateExisting = ()) returns Payload_IEnumerable_EmployeePayrollElection|error {
        return self.genClient->/[clientNamespace]/v1/Payroll/PayrollElections.patch(isValidateOnly, payload, autoUpdateExisting);
    }
    # PATCH Employee Elections
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/v1/Payroll/DeletePayrollElections(true isValidateOnly, EmployeePayrollElectionDeletionModel[] payload) returns Payload_IEnumerable_EmployeePayrollElectionDeletionModel|error {
        return self.genClient->/[clientNamespace]/v1/Payroll/DeletePayrollElections.patch(isValidateOnly, payload);
    }
    # POST Import GL Result
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - GLResult Import was created successfully, no response body. 
    resource isolated function post [string clientNamespace]/V1/PayrollGL/Import(true isValidateOnly, record{} payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/PayrollGL/Import.post(isValidateOnly, payload);
    }
    # POST Import Time Data
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - Time Data Import was created successfully, no response body. 
    resource isolated function post [string clientNamespace]/V1/Payroll/Import/TimeData(true isValidateOnly, record{} payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/Import/TimeData.post(isValidateOnly, payload);
    }
    # DELETE Import Time Data
    #
    # + payGroupXRefCode - The pay group reference code.
    # + 'source - The source of the import.
    # + periodStartDate - The pay run period start date.
    # + periodEndDate - The pay run period end date.
    # + payDate - The pay run pay date.
    # + ppn - The pay run's pay period number (format: ##-##).
    # + orgUnitXRefCode - The user org unit reference code to load data entries from (in org unit hierarchy).
    # + offCyclePayRunXRefCode - Offcycle pay run XRef Code.
    # + isValidateOnly - If TRUE, DELETE operations validate the request and IDs. 
    # The default value is FALSE. Note, DELETE operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities ids for DELETE operation.
    # + return - Time Data Import was deleted successfully, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Payroll/TimeDataDelete/[string payGroupXRefCode](true isValidateOnly, ImportSetModel payload, string? 'source = (), string? periodStartDate = (), string? periodEndDate = (), string? payDate = (), string? ppn = (), string? orgUnitXRefCode = (), string? offCyclePayRunXRefCode = ()) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/TimeDataDelete/[payGroupXRefCode].patch(isValidateOnly, payload, 'source, periodStartDate, periodEndDate, payDate, ppn, orgUnitXRefCode, offCyclePayRunXRefCode);
    }
    # GET the list of Time Data Import Job History with Error info.
    #
    # + payGroupXRefCode - The pay group reference code.
    # + 'source - The time data import source name.
    # + importsFromDate - The time data import history from date.
    # + importsToDate - The time data import history to date.
    # + problemsOnly - If true, then return only time data which has errors. If false, then return both error and non error records.
    # + periodStartDate - The pay run period start date.
    # + periodEndDate - The pay run period end date.
    # + payDate - The pay run pay date.
    # + ppn - The pay run's pay period number (format: ##-##).
    # + offCyclePayRunXRefCode - The off cycle pay run reference code.
    # + importIdentifiers - The comma separated list of import identifiers.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Time data import jobs history. 
    resource isolated function get [string clientNamespace]/V1/Payroll/PayrollPayEntryImportHistory/[string payGroupXRefCode](string? 'source = (), string? importsFromDate = (), string? importsToDate = (), boolean? problemsOnly = (), string? periodStartDate = (), string? periodEndDate = (), string? payDate = (), string? ppn = (), string? offCyclePayRunXRefCode = (), string? importIdentifiers = ()) returns Payload_PayrollPayEntryImportHistory|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/PayrollPayEntryImportHistory/[payGroupXRefCode].get('source, importsFromDate, importsToDate, problemsOnly, periodStartDate, periodEndDate, payDate, ppn, offCyclePayRunXRefCode, importIdentifiers);
    }
    # POST Quick Entry Items
    #
    # + isValidateOnly - If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - Quick Entry Import was created successfully, no response body. 
    resource isolated function post [string clientNamespace]/V1/Payroll/Import/QuickEntry(true isValidateOnly, record{} payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/Import/QuickEntry.post(isValidateOnly, payload);
    }
    # PATCH Quick Entry Items
    #
    # + isValidateOnly - If TRUE, PATCH operations validate the request without updating the item. The default value is FALSE. Note, PATCH operation will only validate data structure.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Quick Entry Import was updated successfully, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Payroll/QuickEntry(true isValidateOnly, DataEntry[] payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Payroll/QuickEntry.patch(isValidateOnly, payload);
    }
    # GET List of IPS Tax Authority Instance Details.
    #
    # + countryCodes - List of three letter country codes with comma separator to filter the result.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The IPS Tax Authority Instance Details. 
    resource isolated function get [string clientNamespace]/V1/TaxAuthorityInstanceDetails(string? countryCodes = ()) returns Payload_IEnumerable_TaxAuthorityInstanceDetails|error {
        return self.genClient->/[clientNamespace]/V1/TaxAuthorityInstanceDetails.get(countryCodes);
    }
    # GET Pay Run Status.
    #
    # + payGroupXRefCode - The pay group's reference code.
    # + payDate - The pay run's pay date (format: yyyy-mm-dd).
    # + periodStartDate - The pay run's period start date (format: yyyy-mm-dd).
    # + periodEndDate - The pay run's period end date (format: yyyy-mm-dd).
    # + ppn - The PayPeriodNumber(format: ##-##).
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The pay run status. 
    resource isolated function get [string clientNamespace]/V1/PayRunStatus/[string payGroupXRefCode](string? payDate = (), string? periodStartDate = (), string? periodEndDate = (), string? ppn = ()) returns Payload_PayRunStatus|error {
        return self.genClient->/[clientNamespace]/V1/PayRunStatus/[payGroupXRefCode].get(payDate, periodStartDate, periodEndDate, ppn);
    }
    # GET a List of PayTypes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of PayType XRefCodes. 
    resource isolated function get [string clientNamespace]/V1/PayTypes() returns Payload_IEnumerable_PayType|error {
        return self.genClient->/[clientNamespace]/V1/PayTypes.get();
    }
    # GET a PayType with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The PayType with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/PayTypes/[string xrefCode]() returns Payload_PayType|error {
        return self.genClient->/[clientNamespace]/V1/PayTypes/[xrefCode].get();
    }
    # GET PersonAddress Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The PersonAddress with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Addresses(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_PersonAddress|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Addresses.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a PersonAddress
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A PersonAddress is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Addresses(true isValidateOnly, PersonAddress payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Addresses.post(isValidateOnly, payload);
    }
    # PATCH a PersonAddress
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The PersonAddress is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Addresses(true isValidateOnly, PersonAddress payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Addresses.patch(isValidateOnly, payload);
    }
    # GET PersonContact Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The PersonContact with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Contacts(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_PersonContact|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Contacts.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a PersonContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A PersonContact is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Contacts(true isValidateOnly, PersonContact payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Contacts.post(isValidateOnly, payload);
    }
    # PATCH a PersonContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The PersonContact is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Contacts(true isValidateOnly, PersonContact payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/Contacts.patch(isValidateOnly, payload);
    }
    # Get Plan Targets matching search criteria
    #
    # + planTargetXRefCode - filter by Plan Target Ref Code (optional)
    # + orgUnitXRefCode - filter by Org Unit Ref Code
    # + kpiXRefCode - filter by KPI Ref Code (optional)
    # + zoneXRefCode - filter by Zone Ref Code (optional)
    # + axisXRefCode - filter by Axis Ref Code (optional)
    # + isActive - filter only active Plan Targets
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Plan Target details which matches the supplied parameters (or all if none supplied) 
    resource isolated function get [string clientNamespace]/V1/PlanTargets(string? planTargetXRefCode = (), string? orgUnitXRefCode = (), string? kpiXRefCode = (), string? zoneXRefCode = (), string? axisXRefCode = (), boolean? isActive = ()) returns Payload_IEnumerable_PlanTarget|error {
        return self.genClient->/[clientNamespace]/V1/PlanTargets.get(planTargetXRefCode, orgUnitXRefCode, kpiXRefCode, zoneXRefCode, axisXRefCode, isActive);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed. 
    resource isolated function post [string clientNamespace]/V1/PlanTargets(true isValidateOnly, PlanTarget payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/PlanTargets.post(isValidateOnly, payload);
    }
    # Deletes a plan target matching the supplied XRefCode
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - All matching plan targets were deleted 
    resource isolated function delete [string clientNamespace]/V1/PlanTargets(string planTargetXRefCode) returns json|error {
        return self.genClient->/[clientNamespace]/V1/PlanTargets.delete(planTargetXRefCode);
    }
    # Amend a Plan Method Target record, plus any child table
    #     entries.
    #
    # + isValidateOnly - When a TRUE value is used in 
    # this parameter the PATCH operation validates the
    # request without applying the updates to the database.
    # The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The details of the 
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed. 
    resource isolated function patch [string clientNamespace]/V1/PlanTargets(string planTargetXRefCode, true isValidateOnly, PlanTarget payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/PlanTargets.patch(planTargetXRefCode, isValidateOnly, payload);
    }
    # Get a list of Positions
    #
    # + contextDate - The Context Date value is an “as-of” date used to determine which Position data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2019-01-01T12:34:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Position XRefCodes meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Positions(string? contextDate = ()) returns Payload_IEnumerable_Position|error {
        return self.genClient->/[clientNamespace]/V1/Positions.get(contextDate);
    }
    # POST (Add) a Position
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (position add) and PATCH (position update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A Position is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Positions(true isValidateOnly, Position payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Positions.post(isValidateOnly, payload);
    }
    # Get Position details
    #
    # + xrefCode - The unique identifier (external reference code) of the Position. The value provided must be the exact match for a Position; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which Position data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2019-01-01T12:34:56
    # + expand - This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the position master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Position with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Positions/[string xrefCode](string? contextDate = (), string? expand = ()) returns Payload_Position|error {
        return self.genClient->/[clientNamespace]/V1/Positions/[xrefCode].get(contextDate, expand);
    }
    # PATCH (Update) a Position
    #
    # + xRefCode - The unique identifier (external reference code) of the position. The value provided must be the exact match for a position; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (position add) and PATCH (position update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - A Position is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Positions/[string xRefCode](true isValidateOnly, Position payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Positions/[xRefCode].patch(isValidateOnly, payload);
    }
    # GET GLSplit Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The GLSplit with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/GLSplits(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_PRGLSplitSet|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/GLSplits.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # Get a list of client projects meeting the search criteria
    #
    # + shortName - Project Name
    # + longName - Project Description
    # + pageSize - The number of records returned per page in the paginated response
    # + projectClientXRefCode - This field identifies a unique Project Client
    # + projectTypeXRefCode - This field identifies a unique Project Type
    # + projectPhaseXRefCode - This field identifies a unique Project Phase
    # + productGroupXRefCode - This field identifies a unique Product Group
    # + productModuleXRefCode - This field identifies a unique Product Module
    # + creationOrgUnitXRefCode - Use to search for projects based on Organizational units' xrefcode
    # + lastModifedStartDate - The Start date used when searching for projects with updates in a specified timeframe
    # + lastModifedEndDate - The End date used when searching for projects with updates in a specified timeframe
    # + filterStartDateFrom - Use to search for projects with Start date values greater than or equal to the specified value
    # + filterStartDateTo - Use to search for projects with Start date values less than or equal to the specified value
    # + filterDueDateFrom - Use to search for projects with Due Date  values greater than or equal to the specified value
    # + filterDueDateTo - Use to search for projects with Due Date  values less than or equal to the specified value
    # + filterCompletedDateFrom - Use to search for projects with Completed Date values greater than or equal to the specified value
    # + filterCompletedDateTo - Use to search for Projects with Completed Date values less than or equal to the specified value
    # + certifiedPayrollProjectNumber - Use to search for projects with certifiedPayrollProjectNumber
    # + parentProjectXRefCode - Use to search for projects with immediate Parent Project
    # + isDeleted - This filters the projects based on those are deleted or not
    # + clockTransferCode - Use to search for Projects with Clock Code
    # + filterProjectPriorityFrom - Use to search for projects with Project Priority value greater than or equal to the specified value. When a value is provided for this parameter filterProjectPriorityTo value must also be provided.
    # + filterProjectPriorityTo - Use to search for Projects  with Project Priority values less than or equal to the specified value. When a value is provided for this parameter filterProjectPriorityFrom value must also be provided.
    # + filterBudgetHoursFrom - Use to search for projects with Budget Hours value greater than or equal to the specified value. When a value is provided for this parameter filterBudgetHoursTo value must also be provided.
    # + filterBudgetHoursTo - Use to search for Projects  with Budget Hours values less than or equal to the specified value. When a value is provided for this parameter filterBudgetHoursFrom value must also be provided.
    # + filterBudgetAmountFrom - Use to search for projects with Budget Amount value greater than or equal to the specified value. When a value is provided for this parameter filterBudgetAmountTo value must also be provided.
    # + filterBudgetAmountTo - Use to search for Projects  with Budget Amount values less than or equal to the specified value. When a value is provided for this parameter filterBudgetAmountFrom value must also be provided.
    # + filterPctCompleteFrom - Use to search for projects with Percent Complete value greater than or equal to the specified value. When a value is provided for this parameter filterPctCompleteTo value must also be provided.
    # + filterPctCompleteTo - Use to search for Projects  with Percent Complete values less than or equal to the specified value. When a value is provided for this parameter filterPctCompleteFrom value must also be provided.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of client project data meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Projects(string? shortName = (), string? longName = (), int:Signed32? pageSize = (), string? projectClientXRefCode = (), string? projectTypeXRefCode = (), string? projectPhaseXRefCode = (), string? productGroupXRefCode = (), string? productModuleXRefCode = (), string? creationOrgUnitXRefCode = (), string? lastModifedStartDate = (), string? lastModifedEndDate = (), string? filterStartDateFrom = (), string? filterStartDateTo = (), string? filterDueDateFrom = (), string? filterDueDateTo = (), string? filterCompletedDateFrom = (), string? filterCompletedDateTo = (), int:Signed32? certifiedPayrollProjectNumber = (), string? parentProjectXRefCode = (), boolean? isDeleted = (), string? ledgerCode = (), string? clockTransferCode = (), string? accountNum = (), boolean? iFRSClassification = (), int:Signed32? filterProjectPriorityFrom = (), int:Signed32? filterProjectPriorityTo = (), decimal? filterBudgetHoursFrom = (), decimal? filterBudgetHoursTo = (), decimal? filterBudgetAmountFrom = (), decimal? filterBudgetAmountTo = (), decimal? filterPctCompleteFrom = (), decimal? filterPctCompleteTo = ()) returns PaginatedPayload_IEnumerable_BaseProject|error {
        return self.genClient->/[clientNamespace]/V1/Projects.get(shortName, longName, pageSize, projectClientXRefCode, projectTypeXRefCode, projectPhaseXRefCode, productGroupXRefCode, productModuleXRefCode, creationOrgUnitXRefCode, lastModifedStartDate, lastModifedEndDate, filterStartDateFrom, filterStartDateTo, filterDueDateFrom, filterDueDateTo, filterCompletedDateFrom, filterCompletedDateTo, certifiedPayrollProjectNumber, parentProjectXRefCode, isDeleted, ledgerCode, clockTransferCode, accountNum, iFRSClassification, filterProjectPriorityFrom, filterProjectPriorityTo, filterBudgetHoursFrom, filterBudgetHoursTo, filterBudgetAmountFrom, filterBudgetAmountTo, filterPctCompleteFrom, filterPctCompleteTo);
    }
    # POST (Insert) new Projects data into Dayforce
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - New Projects data is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/Projects(true isValidateOnly, ProjectForSubmit payload) returns ProjectsPostResponse|error {
        return self.genClient->/[clientNamespace]/V1/Projects.post(isValidateOnly, payload);
    }
    # Patch (Update) a project
    #
    # + projectXRefCode - Project XRefCode
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - Project data is updated 
    resource isolated function patch [string clientNamespace]/V1/Projects(string projectXRefCode, true isValidateOnly, ProjectForSubmit payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Projects.patch(projectXRefCode, isValidateOnly, payload);
    }
    # Get project details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Project details which matches with the XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Projects/[string xRefCode]() returns Payload_Projects|error {
        return self.genClient->/[clientNamespace]/V1/Projects/[xRefCode].get();
    }
    # GET a List of Report Metadata
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Metadata for all Reports 
    resource isolated function get [string clientNamespace]/V1/ReportMetadata() returns Payload_IEnumerable_ReportMetadata|error {
        return self.genClient->/[clientNamespace]/V1/ReportMetadata.get();
    }
    # GET Report Metadata for the given XRefCode
    #
    # + xRefCode - The unique identifier (external reference code) of the report to be retrieved.  The value provided must be the exact match for an report; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The Metadata for the Report matching the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/ReportMetadata/[string xRefCode]() returns Payload_IEnumerable_ReportMetadata|error {
        return self.genClient->/[clientNamespace]/V1/ReportMetadata/[xRefCode].get();
    }
    # GET Report
    #
    # + xRefCode - The unique identifier (external reference code) of the report to be retrieved.  The value provided must be the exact match for an report; otherwise, a bad request (400) error will be returned.
    # + pageSize - The number of records returned per page in the paginated response
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + reportParameters - A list of key value pairs for those reports which take as input user supplied parameter values.
    # + return - report that match the given request 
    resource isolated function get [string clientNamespace]/V1/Reports/[string xRefCode](int:Signed32? pageSize = (), record {}? reportParameters = ()) returns PaginatedPayload_Report|error {
        return self.genClient->/[clientNamespace]/V1/Reports/[xRefCode].get(pageSize, reportParameters);
    }
    # Get List of Unfilled Shift Bids for Employee
    #
    # + orgUnitXRefCode - The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + scheduleStartDate - Date to represent the start of the schedule period for which Shift Bids should be retrieved
    # + scheduleEndDate - Date to represent the end of the schedule period for which Shift Bids should be retrieved
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A Collection of Open Shift Bids. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string employeeXRefCode]/UnfilledShiftBids(string orgUnitXRefCode, string scheduleStartDate, string scheduleEndDate) returns Payload_IEnumerable_EmployeeSchedule|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[employeeXRefCode]/UnfilledShiftBids.get(orgUnitXRefCode, scheduleStartDate, scheduleEndDate);
    }
    # POST (Create) Employee Shift Bids. Employee Request or Revoke Shift Bid Request.
    #
    # + orgUnitXRefCode - The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Specifies an employee bid request/revocation was successful. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string employeeXRefCode]/UnfilledShiftBids(string orgUnitXRefCode, true isValidateOnly, EmployeeShiftBidDTO payload) returns Payload_IEnumerable_ProcessResult|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[employeeXRefCode]/UnfilledShiftBids.post(orgUnitXRefCode, isValidateOnly, payload);
    }
    # Get List of Shift Bids
    #
    # + orgUnitXRefCode - The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    # + scheduleStartDate - Date to represent the start of the schedule period for which Shift Bids should be retrieved
    # + scheduleEndDate - Date to represent the end of the schedule period for which Shift Bids should be retrieved
    # + activeBids - Specifies whether to return bids with or without active employee bid requests. When no value is supplied, all shift bids will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A Collection of Shift Bids 
    resource isolated function get [string clientNamespace]/V1/Organization/[string orgUnitXRefCode]/UnfilledShiftBids(string scheduleStartDate, string scheduleEndDate, boolean? activeBids = ()) returns Payload_IEnumerable_ManagerShiftBid|error {
        return self.genClient->/[clientNamespace]/V1/Organization/[orgUnitXRefCode]/UnfilledShiftBids.get(scheduleStartDate, scheduleEndDate, activeBids);
    }
    # Manager assignment of shift to an employee who has bid for a specific group schedule.
    # Notifies awarded bidder.
    # Notifies rejected bidder.
    #
    # + orgUnitXRefCode - The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - Assigns shift bid to bidding employee 
    resource isolated function post [string clientNamespace]/V1/Organization/[string orgUnitXRefCode]/UnfilledShiftBid(true isValidateOnly, ManagerAssignShiftBidDTO[] payload, 0|1|2|3|4? violationLevel = ()) returns Payload_IEnumerable_EmployeeSchedule|error {
        return self.genClient->/[clientNamespace]/V1/Organization/[orgUnitXRefCode]/UnfilledShiftBid.post(isValidateOnly, payload, violationLevel);
    }
    # GET the list of all skills
    #
    # + pageSize - The page size for the pagination (Default is 1000)
    # + xRefCode - The xrefcode filter for the skill
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of skills 
    resource isolated function get [string clientNamespace]/V1/Skills(int:Signed32? pageSize = (), string? xRefCode = ()) returns PaginatedPayload_IEnumerable_Skill|error {
        return self.genClient->/[clientNamespace]/V1/Skills.get(pageSize, xRefCode);
    }
    # POST one skill
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The skill payload used for skill creation
    # + return - The skill created 
    resource isolated function post [string clientNamespace]/V1/Skills(true isValidateOnly, Skill payload) returns Payload_IEnumerable_Skill|error {
        return self.genClient->/[clientNamespace]/V1/Skills.post(isValidateOnly, payload);
    }
    # PATCH one skill
    #
    # + xRefCode - The xRefCode of the skill to be updated
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The skill payload used for skill modification
    # + return - The skill updated 
    resource isolated function patch [string clientNamespace]/V1/Skills(string xRefCode, true isValidateOnly, Skill payload) returns Payload_IEnumerable_Skill|error {
        return self.genClient->/[clientNamespace]/V1/Skills.patch(xRefCode, isValidateOnly, payload);
    }
    # GET List of Employee Time Away From Work
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + filterTAFWStartDate - Inclusive period start date to determine which employee time away from work data to retrieve. Format: YYYY-MM-DD
    # + filterTAFWEndDate - Inclusive period end date to determine which employee time away from work data to retrieve. Format: YYYY-MM-DD
    # + status - A case-sensitive field containing status for time away from work values. Examples: [APPROVED,PENDING,CANCELED,DENIED,CANCELPENDING]
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of employee time away from work meeting the search criteria. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/TimeAwayFromWork(string filterTAFWStartDate, string filterTAFWEndDate, string status) returns Payload_IEnumerable_EmployeeTimeAwayFromWork|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/TimeAwayFromWork.get(filterTAFWStartDate, filterTAFWEndDate, status);
    }
    # POST (Create) Employee Time Away From Work
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Time Away From Work is created. 
    resource isolated function post [string clientNamespace]/V1/TimeOff(true isValidateOnly, EmployeeTimeAwayFromWorkForSubmit payload) returns Payload_EmployeeTimeAwayFromWorkForSubmit|error {
        return self.genClient->/[clientNamespace]/V1/TimeOff.post(isValidateOnly, payload);
    }
    # PATCH (Update) Employee Time Away From Work
    #
    # + xRefCode - The unique identifier (external reference code) of the time away from work to be retrieved. The value provided must be the exact match for a time away from work; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An Employee Time Away From Work is updated. 
    resource isolated function patch [string clientNamespace]/V1/TimeOff/[string xRefCode](true isValidateOnly, EmployeeTimeAwayFromWorkForSubmit payload) returns Payload_IEnumerable_EmployeeTimeAwayFromWorkForSubmit|error {
        return self.genClient->/[clientNamespace]/V1/TimeOff/[xRefCode].patch(isValidateOnly, payload);
    }
    # Get a list of or one Training Program detail
    #
    # + pageSize - The page size for the pagination (Default is 1000)
    # + xRefCode - The xrefcode filter for the Training Program
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - A collection of Training Program 
    resource isolated function get [string clientNamespace]/V1/TrainingPrograms(int:Signed32? pageSize = (), string? xRefCode = ()) returns PaginatedPayload_IEnumerable_TrainingProgram|error {
        return self.genClient->/[clientNamespace]/V1/TrainingPrograms.get(pageSize, xRefCode);
    }
    # POST one training program
    #
    # + isValidateOnly - When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The training program payload that will be used for training program creation
    # + return - A training program is created, no response body 
    resource isolated function post [string clientNamespace]/V1/TrainingPrograms(true isValidateOnly, TrainingProgram payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/TrainingPrograms.post(isValidateOnly, payload);
    }
    # PATCH one training program
    #
    # + xRefCode - The course xRefCode to be updated
    # + isValidateOnly - When a TRUE value is used in this parameter, PATCH operation validate the request without applying the changes to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The training program payload that will be used for training program creation
    # + return - A training program is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/TrainingPrograms(string xRefCode, true isValidateOnly, TrainingProgram payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/TrainingPrograms.patch(xRefCode, isValidateOnly, payload);
    }
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - OK 
    resource isolated function post [string clientNamespace]/V1/TransmissionService() returns json|error {
        return self.genClient->/[clientNamespace]/V1/TransmissionService.post();
    }
    # GET UserPayAdjCodeGroup Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The UserPayAdjCodeGroup with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UserPayAdjustCodeGroups() returns Payload_IEnumerable_UserPayAdjustCodeGroup|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UserPayAdjustCodeGroups.get();
    }
    # POST a UserPayAdjCodeGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The UserPayAdjCodeGroup is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UserPayAdjustCodeGroups(true isValidateOnly, UserPayAdjustCodeGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UserPayAdjustCodeGroups.post(isValidateOnly, payload);
    }
    # PATCH a UserPayAdjCodeGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The UserPayAdjCodeGroup is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UserPayAdjustCodeGroups(true isValidateOnly, UserPayAdjustCodeGroup payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/UserPayAdjustCodeGroups.patch(isValidateOnly, payload);
    }
    # GET EmployeeWorkContract Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + contextDate - The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeFrom - The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + contextDateRangeTo - The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + return - The EmployeeWorkContract with the requested XRefCode. 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/WorkContracts(string? contextDate = (), string? contextDateRangeFrom = (), string? contextDateRangeTo = ()) returns Payload_IEnumerable_EmployeeWorkContract|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/WorkContracts.get(contextDate, contextDateRangeFrom, contextDateRangeTo);
    }
    # POST a EmployeeWorkContract
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - An EmployeeWorkContract is created, no response body. 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/WorkContracts(true isValidateOnly, EmployeeWorkContract payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/WorkContracts.post(isValidateOnly, payload);
    }
    # PATCH a EmployeeWorkContract
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned.
    # + isValidateOnly - When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database.
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login.
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide.
    # + return - The EmployeeWorkContract is updated, no response body. 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/WorkContracts(true isValidateOnly, EmployeeWorkContract payload) returns json|error {
        return self.genClient->/[clientNamespace]/V1/Employees/[xRefCode]/WorkContracts.patch(isValidateOnly, payload);
    }
}
