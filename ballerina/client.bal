// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).
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

import ballerina/data.jsondata;
import ballerina/http;

public isolated client class Client {
    final http:Client clientEp;
    # Gets invoked to initialize the `connector`.
    #
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ConnectionConfig config, string serviceUrl = "https://ustest241-services.dayforcehcm.com/Api") returns error? {
        http:ClientConfiguration httpClientConfig = {auth: config.auth, httpVersion: config.httpVersion, http1Settings: config.http1Settings, http2Settings: config.http2Settings, timeout: config.timeout, forwarded: config.forwarded, followRedirects: config.followRedirects, poolConfig: config.poolConfig, cache: config.cache, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, cookieConfig: config.cookieConfig, responseLimits: config.responseLimits, secureSocket: config.secureSocket, proxy: config.proxy, socketConfig: config.socketConfig, validation: config.validation, laxDataBinding: config.laxDataBinding};
        self.clientEp = check new (serviceUrl, httpClientConfig);
    }

    # Add new HR Bulk Export details into Job Queue tables.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A HR Bulk Export is created with an empty response body 
    resource isolated function post [string clientNamespace]/v1/GetEmployeeBulkAPI(EmployeeExportParams payload, map<string|string[]> headers = {}, *AmfBulkAPIPostByExportIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/GetEmployeeBulkAPI`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Get the status of Job Queue tables.
    #
    # + backgroundJobQueueItemId - To find a status of employee export background job
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Job Status and Access API URL 
    resource isolated function get [string clientNamespace]/v1/GetEmployeeBulkAPI/Status/[int:Signed32 backgroundJobQueueItemId](map<string|string[]> headers = {}) returns PayloadObject|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/GetEmployeeBulkAPI/Status/${getEncodedUri(backgroundJobQueueItemId)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Get bulk employee of data as a string in json format
    #
    # + jobId - To get background job processed data for employee export
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Returns a page of employee data 
    resource isolated function get [string clientNamespace]/v1/GetEmployeeBulkAPI/Data/[string jobId](map<string|string[]> headers = {}) returns PaginatedPayloadIEnumerableEmployee|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/GetEmployeeBulkAPI/Data/${getEncodedUri(jobId)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Get Reports
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of Reports 
    resource isolated function get [string clientNamespace]/V1/Analytics/Reports(map<string|string[]> headers = {}) returns PayloadIEnumerableAnalyticsReportDefinitions|PayloadIEnumerableObject|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Analytics/Reports`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Get Dataset
    #
    # + datasetId - Uniquely identifies a dataset
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Contents of a dataset 
    resource isolated function get [string clientNamespace]/V1/Analytics/Datasets/[string datasetId](map<string|string[]> headers = {}, *AnalyticsReportsGetDatasetAsyncByDatasetIdPageDatasetPageSizeClientNamespaceQueries queries) returns PayloadAnalyticsReportDataset|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Analytics/Datasets/${getEncodedUri(datasetId)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Refresh Dataset
    #
    # + datasetId - Uniquely identifies a dataset
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Status of a dataset refresh and its metadata 
    resource isolated function post [string clientNamespace]/V1/Analytics/Datasets/[string datasetId](AnalyticsReportMetadata payload, map<string|string[]> headers = {}, *AnalyticsReportsRefreshDatasetAsyncByReqBodyDatasetIdIsValidateOnlyClientNamespaceQueries queries) returns PayloadAnalyticsDatasetMetadataResponse|json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Analytics/Datasets/${getEncodedUri(datasetId)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Create Dataset
    #
    # + reportId - Uniquely identifies a report
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Metadata of a dataset 
    resource isolated function post [string clientNamespace]/V1/Analytics/Reports/[int:Signed32 reportId](AnalyticsReportMetadata payload, map<string|string[]> headers = {}, *AnalyticsReportsCreateReportAsyncByReqBodyReportIdIsValidateOnlyClientNamespaceQueries queries) returns PayloadAnalyticsDatasetMetadata|PayloadObject|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Analytics/Reports/${getEncodedUri(reportId)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Get Dataset Metadata
    #
    # + datasetId - Uniquely identifies a dataset
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Metadata of a dataset 
    resource isolated function get [string clientNamespace]/V1/Analytics/Datasets/[string datasetId]/Metadata(map<string|string[]> headers = {}) returns PayloadAnalyticsDatasetMetadata|PayloadObject|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Analytics/Datasets/${getEncodedUri(datasetId)}/Metadata`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Get Report Metadata
    #
    # + reportId - Uniquely identifies a report
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Metadata of the report 
    resource isolated function get [string clientNamespace]/V1/Analytics/Reports/[int:Signed32 reportId]/Metadata(map<string|string[]> headers = {}) returns PayloadIEnumerableAnalyticsReportMetadata|PayloadAnalyticsReportMetadata|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Analytics/Reports/${getEncodedUri(reportId)}/Metadata`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET AppUserSSO Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The AppUserSSO with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/SSOAccounts(map<string|string[]> headers = {}, *AppUserSSOGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeSSOAccount|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/SSOAccounts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a AppUserSSO
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/SSOAccounts(EmployeeSSOAccount payload, map<string|string[]> headers = {}, *AppUserSSOPostBySsoInfoXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/SSOAccounts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a AppUserSSO
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The AppUserSSO is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/SSOAccounts(EmployeeSSOAccount payload, map<string|string[]> headers = {}, *AppUserSSOPatchBySsoInfoXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/SSOAccounts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Delete an SSOAccount entry that has matching {loginName}
    #
    # + employeeXRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be deleted.
    # The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + loginName - The loginName of the SSOAccount to be deleted from this Employee
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An SSO Account is deleted for this Employee 
    resource isolated function delete [string clientNamespace]/V1/Employees/[string employeeXRefCode]/SSOAccounts/[string loginName](map<string|string[]> headers = {}, *AppUserSSODeleteByEmployeeXRefCodeLoginNameIsValidateOnlyClientNamespaceQueries queries) returns PayloadSubordinateEntityReferences|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(employeeXRefCode)}/SSOAccounts/${getEncodedUri(loginName)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # GET List of Employee Availability
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of employee availability meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Availability(map<string|string[]> headers = {}, *AvailabilityGetByXRefCodeFilterAvailabilityStartDateFilterAvailabilityEndDateClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeAvailability|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Availability`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Post Employee Availablity
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/[string employeeXRefCode]/EmployeeAvailability(EmployeeAvailabilityPostAPIRequestDTO payload, map<string|string[]> headers = {}, *AvailabilityPostByEmployeeXRefCodeEmployeeAvailabilityIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableProcessResult|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/${getEncodedUri(employeeXRefCode)}/EmployeeAvailability`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET List of Background Job Logs
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of background job logs meeting the search criteria. Parameters, JobInformation, ErrorInformation, DebugInformation and FileList fields are not retrieved with this call 
    resource isolated function get [string clientNamespace]/V1/BackgroundJobLogs(map<string|string[]> headers = {}, *BackgroundJobLogGetByPageSizeCodeNameStatusHasItemLevelErrorsQueueTimeUtcStartQueueTimeUtcEndWasScheduledSubmittedByFilterUpdateTimeUtcStartFilterUpdateTimeUtcEndIncludeSuppressedTaskTypesClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableBackgroundJobLog|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundJobLogs`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Details of a Background Job Log based on backgroundLogId
    #
    # + backgroundJobLogId - The identifier of the background job log to retrieve further information
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A background job log that meets the search criteria 
    resource isolated function get [string clientNamespace]/V1/BackgroundJobLogs/[string backgroundJobLogId](map<string|string[]> headers = {}) returns PayloadBackgroundJobLog|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundJobLogs/${getEncodedUri(backgroundJobLogId)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # PATCH (Update) a Background Screening Status for a specific candidate.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The Json payload containing an event and the new status 
    # + return - The Background Screening request is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening/Status(BackgroundScreeningStatus payload, map<string|string[]> headers = {}, *BackgroundScreeningPatchStatusByBackgroundScreeningStatusIsValidateOnlyClientNamespaceQueries queries) returns BackgroundScreeningStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundScreening/Status`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # PATCH (Update) a Background Screening Adjudication Status for a specific candidate.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The Json payload containing an event and the new adjudication status 
    # + return - The Background Screening request is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening/AdjudicationStatus(BackgroundScreeningAdjudicationStatus payload, map<string|string[]> headers = {}, *BackgroundScreeningPatchAdjudicationStatusByBackgroundScreeningAdjudicationStatusIsValidateOnlyClientNamespaceQueries queries) returns BackgroundScreeningAdjudicationStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundScreening/AdjudicationStatus`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # POST Background Screening Packages.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Background Screening Packages are added, no response body 
    resource isolated function post [string clientNamespace]/V1/BackgroundScreening/Package(BackgroundScreeningPackage payload, map<string|string[]> headers = {}, *BackgroundScreeningPostPackageByBackgroundScreeningPackageIsValidateOnlyClientNamespaceQueries queries) returns BackgroundScreeningPackage[]|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundScreening/Package`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # POST Background Screening Billing Codes.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Background Screening Billing Codes are added, no response body 
    resource isolated function post [string clientNamespace]/V1/BackgroundScreening/BillingCode(BackgroundScreeningBillingCode payload, map<string|string[]> headers = {}, *BackgroundScreeningPostBillingCodeByBackgroundScreeningBillingCodeIsValidateOnlyClientNamespaceQueries queries) returns BackgroundScreeningBillingCode[]|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundScreening/BillingCode`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # POST Background Screening Provider Statuses.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Custom Provider Statuses are added, no response body 
    resource isolated function post [string clientNamespace]/V1/BackgroundScreening/ProviderStatuses(BackgroundScreeningProviderStatuses payload, map<string|string[]> headers = {}, *BackgroundScreeningPostScreeningStatusesByStatusListIsValidateOnlyClientNamespaceQueries queries) returns BackgroundScreeningProviderStatuses|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundScreening/ProviderStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Background Screening Status, URL and Report containing PII
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The Json payload containing Status, Url and Report containing PII 
    # + return - The Background Screening Status, Url and Report containing PII are added, no response body 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening(BackgroundScreeningStatusUrlReport payload, map<string|string[]> headers = {}, *BackgroundScreeningPatchByBackgroundScreeningStatusUrlReportIsValidateOnlyClientNamespaceQueries queries) returns BackgroundScreeningStatusUrlReport[]|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundScreening`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # PATCH Background Screening Report containing Personal Identifiable Informations
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The Json payload with a Report containing Personal Identifiable Informations 
    # + return - The Background Screening Report containing Personal Identifiable Informations are added, no response body 
    resource isolated function patch [string clientNamespace]/V1/BackgroundScreening/PersonalIdentifiableInformation(BackgroundScreeningReport payload, map<string|string[]> headers = {}, *BackgroundScreeningPatchPIIByBackgroundScreeningReportIsValidateOnlyClientNamespaceQueries queries) returns BackgroundScreeningReport[]|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BackgroundScreening/PersonalIdentifiableInformation`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Benefits ongoing carrier feed export in JSON format
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The CarrierFeeds model in json format 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedOngoingExports(map<string|string[]> headers = {}, *BenefitsDFLinkExportsGetBenefitsDFLinkOngoingExportByCarrierXRefCodePlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesBlackoutPeriodStartDateLookBackDaysLookForwardDaysClientNamespaceQueries queries) returns PayloadCarrierFeeds|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BenefitsCarrierFeedOngoingExports`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Benefits open enrollment carrier feed export in JSON format
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The CarrierFeeds model in json format 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedOpenEnrollmentExports(map<string|string[]> headers = {}, *BenefitsDFLinkExportsGetBenefitsDFLinkOpenEnrollmentExportByCarrierXRefCodePlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesClientNamespaceQueries queries) returns PayloadCarrierFeeds|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BenefitsCarrierFeedOpenEnrollmentExports`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Benefits multi carrier ongoing carrier feed export in JSON format
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The CarrierFeeds model in json format 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedMultiCarrierOngoingExports(map<string|string[]> headers = {}, *BenefitsDFLinkMultiCarrierExportsGetBenefitsDFLinkMultiCarrierOngoingExportByCarrierXRefCodesPlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesBlackoutPeriodStartDateLookBackDaysLookForwardDaysClientNamespaceQueries queries) returns PayloadCarrierFeeds|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BenefitsCarrierFeedMultiCarrierOngoingExports`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Benefits multi carrier open enrollment carrier feed export in JSON format
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The CarrierFeeds model in json format 
    resource isolated function get [string clientNamespace]/V1/BenefitsCarrierFeedMultiCarrierOpenEnrollmentExports(map<string|string[]> headers = {}, *BenefitsDFLinkMultiCarrierExportsGetBenefitsDFLinkMultiCarrierOpenEnrollmentExportByCarrierXRefCodesPlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesClientNamespaceQueries queries) returns PayloadCarrierFeeds|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/BenefitsCarrierFeedMultiCarrierOpenEnrollmentExports`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a Candidate Application and/or a Candidate Profile
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The Json payload containing candidate and application details 
    # + return - Candidate profile/application have been accepted 
    resource isolated function post [string clientNamespace]/V1/CandidateSourcing(JobPostingApplicantModel payload, map<string|string[]> headers = {}, *CandidateSourcingPostByModelIsValidateOnlyClientNamespaceQueries queries) returns Response|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/CandidateSourcing`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET Job Posting Questionnaires
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of questionnaires for a particular job posting. Each questionnaire section is separated by a page break object 
    resource isolated function get [string clientNamespace]/V1/JobPostingQuestionnaires(map<string|string[]> headers = {}, *CandidateSourcingGetByJobPostingIdCultureIdClientNamespaceQueries queries) returns PayloadIEnumerableQuestionModel|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/JobPostingQuestionnaires`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Candidate Application Statuses
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of candidate application statuses for all job applications sent by the provider calling this endpoint. Once the latest unsent application statuses are provided via this endpoint, no further data will be provided on subsequent calls unless further application status updates have been made. This endpoint will return application statuses in tranches of up to 1000 statuses per call and will continue to do so for subsequent calls until all unsent statuses have been provided 
    resource isolated function get [string clientNamespace]/V1/CandidateApplicationStatuses(map<string|string[]> headers = {}) returns PayloadCandidateApplicationStatusUpdatesPaginationModel|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/CandidateApplicationStatuses`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Job Postings
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of all active external job postings (i.e. public facing job postings) based on specified filter parameters. Each job posting included in the response also includes URLs for Candidate Sourcing and Apply endpoints. Users with access to the Candidate Sourcing and Apply feature should use this endpoint for obtaining job postings rather than GET JobFeeds 
    resource isolated function get [string clientNamespace]/V1/JobPostings(map<string|string[]> headers = {}, *CandidateSourcingGetByCompanyNameParentCompanyNameInternalJobBoardCodeIncludeActivePostingOnlyLastUpdateTimeFromLastUpdateTimeToDatePostedFromDatePostedToHtmlDescriptionClientNamespaceQueries queries) returns PayloadIEnumerableJobFeed|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/JobPostings`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET the list of all certifications
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of certifications 
    resource isolated function get [string clientNamespace]/V1/Certifications(map<string|string[]> headers = {}, *CertificationGetByPageSizeXRefCodeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableLMSCertification|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Certifications`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST one certification
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The certification payload that will be used for certification creation 
    # + return - A certification is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Certifications(LMSCertification payload, map<string|string[]> headers = {}, *CertificationPostByCertificationIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Certifications`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH one certification
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The certification payload that will be used for certification modification 
    # + return - A certification is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Certifications(LMSCertification payload, map<string|string[]> headers = {}, *CertificationPatchByCertificationXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Certifications`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Client Metadata
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Returns client metadata 
    resource isolated function get [string clientNamespace]/V1/ClientMetadata(map<string|string[]> headers = {}) returns ClientMetadata|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ClientMetadata`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET client payroll countries.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Client Payroll Countries 
    resource isolated function get [string clientNamespace]/V1/ClientPayrollCountry(map<string|string[]> headers = {}, *ClientPayrollCountryGetByCountryCodesHcmPayrollConnectedPayPayGroupClientNamespaceQueries queries) returns PayloadClientPayrollCountry|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ClientPayrollCountry`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Client Payroll Country.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The ClientPayrollCountry has been added successfully, no response body 
    resource isolated function post [string clientNamespace]/V1/ClientPayrollCountry(ClientPayrollCountryUpdate[] payload, map<string|string[]> headers = {}, *ClientPayrollCountryPostByClientPayrollCountriesIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ClientPayrollCountry`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Client Payroll Country.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - ClientPayrollCountry has been updated successfully, no response body 
    resource isolated function patch [string clientNamespace]/V1/ClientPayrollCountry(ClientPayrollCountryUpdate[] payload, map<string|string[]> headers = {}, *ClientPayrollCountryPatchByClientPayrollCountryUpdateIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ClientPayrollCountry`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET a List of ContactInformationTypes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of ContactInformationType XRefCodes 
    resource isolated function get [string clientNamespace]/V1/ContactInformationTypes(map<string|string[]> headers = {}) returns PayloadIEnumerableContactInformationType|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ContactInformationTypes`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a ContactInformationType with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The ContactInformationType with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/ContactInformationTypes/[string xrefCode](map<string|string[]> headers = {}) returns PayloadContactInformationType|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ContactInformationTypes/${getEncodedUri(xrefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET the list of all courses
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of courses 
    resource isolated function get [string clientNamespace]/V1/Courses(map<string|string[]> headers = {}, *CoursesGetByPageSizeCourseTypeCourseProviderXRefCodeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableCourse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Courses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST one course
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The course payload that will be used for course creation 
    # + return - A course is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Courses(Course payload, map<string|string[]> headers = {}, *CoursesPostByCourseIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Courses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH one course
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The course payload that will be used for course creation 
    # + return - A course is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Courses(Course payload, map<string|string[]> headers = {}, *CoursesPatchByCourseXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Courses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List of Data Entries.
    #
    # + payGroupXRefCode - The pay group reference code
    # + entryType - The type of the data entry
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Payroll data entries 
    resource isolated function get [string clientNamespace]/V1/Payroll/DataEntry/[string payGroupXRefCode]/[string entryType](map<string|string[]> headers = {}, *DataEntryGetByPayGroupXRefCodeEntryTypePeriodStartDatePeriodEndDatePayDatePpnOrgUnitXRefCodeCodeTypeCodeXRefCodeEmployeeXRefCodeProjectXRefCodesSinceLastModifiedTimestampSourcePageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableDataEntry|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/DataEntry/${getEncodedUri(payGroupXRefCode)}/${getEncodedUri(entryType)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get a list of Person Management History
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Person Management History 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PersonManagementHistory(map<string|string[]> headers = {}, *DataPrivacyPersonManagementHistoryByPageSizePolicyPersonTypeContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PaginatedPayloadPersonManagementHistory|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/DataPrivacy/PersonManagementHistory`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get a list of Person Management Exemption
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Person Management Exemption 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PersonManagementExemptions(map<string|string[]> headers = {}, *DataPrivacyPersonManagementExemptionsByPageSizeNumberPersonTypeClientNamespaceQueries queries) returns PaginatedPayloadPersonManagementExemption|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/DataPrivacy/PersonManagementExemptions`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get a list of Person Management Erase History
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Person Management Erase History 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PersonManagementEraseHistory(map<string|string[]> headers = {}, *DataPrivacyPersonManagementEraseHistoryByPageSizePersonTypeContextDateRangeFromContextDateRangeToRequestIdClientNamespaceQueries queries) returns PaginatedPayloadPersonManagementEraseHistory|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/DataPrivacy/PersonManagementEraseHistory`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get a List of Policy Associations
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of PolicyAssociation data meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/DataPrivacy/PolicyAssociations(map<string|string[]> headers = {}, *DataPrivacyPolicyAssociationsByCountryCodesPageSizePersonTypeXRefCodeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerablePolicyAssociation|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/DataPrivacy/PolicyAssociations`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get List of Deduction Definitions.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - List of Deduction Definitions and associated payees 
    resource isolated function get [string clientNamespace]/V1/DeductionDefinition(map<string|string[]> headers = {}, *DeductionDefinitionGetByCountryCodesDeductionXRefCodesTaxComplianceXRefCodesTaxTypeCodesSystemDeductionClientNamespaceQueries queries) returns PayloadIEnumerableDeductionDefinition|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/DeductionDefinition`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of Department XRefCodes 
    resource isolated function get [string clientNamespace]/V1/Departments(map<string|string[]> headers = {}) returns PayloadIEnumerableDepartment|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Departments`;
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A Department is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Departments(Department payload, map<string|string[]> headers = {}, *DepartmentsPostByDepartmentIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Departments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A Department XRefCode meets the search criteria 
    resource isolated function get [string clientNamespace]/V1/Departments/[string xRefCode](map<string|string[]> headers = {}, *DepartmentsGetByXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns PayloadDepartment|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Departments/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A Department is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Departments/[string xRefCode](Department payload, map<string|string[]> headers = {}, *DepartmentsPatchByDepartmentXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Departments/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET DocMgmtSecurityGroupUserMap Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The DocMgmtSecurityGroupUserMap with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DocumentManagementSecurityGroups(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeDocumentManagementSecurityGroup|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DocumentManagementSecurityGroups`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a DocMgmtSecurityGroupUserMap
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The DocMgmtSecurityGroupUserMap is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/DocumentManagementSecurityGroups(EmployeeDocumentManagementSecurityGroup payload, map<string|string[]> headers = {}, *DocMgmtSecurityGroupPostByDocMgmtSecurityGroupUserMapXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DocumentManagementSecurityGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a DocMgmtSecurityGroupUserMap
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The DocMgmtSecurityGroupUserMap is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/DocumentManagementSecurityGroups(EmployeeDocumentManagementSecurityGroup payload, map<string|string[]> headers = {}, *DocMgmtSecurityGroupPatchByDocMgmtSecurityGroupUserMapXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DocumentManagementSecurityGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET a List of Documents
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Returns documents associated with the given criteria 
    resource isolated function get [string clientNamespace]/V1/Documents(map<string|string[]> headers = {}, *DocumentsGetByEmployeeXRefCodeLastModifiedTimestampStartLastModifiedTimestampEndEntityEntityTypeXRefCodeDocumentTypeXRefCodeClientNamespaceQueries queries) returns PayloadIEnumerableDocument|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Documents`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Document Details
    #
    # + documentGuid - Uniquely identifies the document you want to retrieve. Partial search is not supported, so provide the full value. Otherwise, a 400 error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Returns the document identified by the documentGuid 
    resource isolated function get [string clientNamespace]/V1/documents/[string documentGuid](map<string|string[]> headers = {}) returns PayloadArchiveDocument|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/documents/${getEncodedUri(documentGuid)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Queue Document Import task
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the metadata entities and elements of document import to be processed in POST (queue task) operation 
    # + return - Document import queued 
    resource isolated function post [string clientNamespace]/V1/Documents/Import/Queue(DocumentImportQueueRequest[] payload, map<string|string[]> headers = {}, *DocumentsImportByDocumentsIsValidateOnlyClientNamespaceQueries queries) returns PayloadDocumentImportQueueResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Documents/Import/Queue`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Upload one or more documents using a multipart request.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Document(s) processed 
    resource isolated function post [string clientNamespace]/V1/Documents/Upload(map<string|string[]> headers = {}, *DocumentsUploadByIsValidateOnlyClientNamespaceQueries queries) returns DocMgmtUploadResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Documents/Upload`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET List of Earning Definitions.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - List of Earning Definitions and associated payees 
    resource isolated function get [string clientNamespace]/V1/EarningDefinition(map<string|string[]> headers = {}, *EarningDefinitionGetByCountryCodesEarningXRefCodesTaxComplianceXRefCodesEarningTypeXRefCodesClientNamespaceQueries queries) returns PayloadIEnumerableEarningDefinition|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EarningDefinition`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Earning Statement Headers
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An encrypted string which contains list of earning statement headers 
    resource isolated function get [string clientNamespace]/V1/EarningStatementHeader(map<string|string[]> headers = {}, *EarningStatementGetByPageSizePayGroupXRefCodePayDatePayPeriodStartDatePayPeriodEndDatePpnEmployeeXRefCodesEmployeeLastNamesEmployeePayDateBeginEmployeePayDateEndClientNamespaceQueries queries) returns PaginatedPayloadEarningStatementHeader|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EarningStatementHeader`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Earning Statement Pdf
    #
    # + earningStatementXRefCode - Unique identifier for the Earning Statement
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Earning statement document 
    resource isolated function get [string clientNamespace]/V1/EarningStatement/[string earningStatementXRefCode](map<string|string[]> headers = {}, *EarningStatementGetByEmployeeXRefCodeEarningStatementXRefCodeClientNamespaceQueries queries) returns PayloadListEarningStatementDocument|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EarningStatement/${getEncodedUri(earningStatementXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmergencyContact Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The emergency contacts of employee with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmergencyContacts(map<string|string[]> headers = {}, *EmergencyContactGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeEmergencyContact|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmergencyContacts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmergencyContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmergencyContact is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmergencyContacts(EmployeeEmergencyContact payload, map<string|string[]> headers = {}, *EmergencyContactPostByEmergencyContactXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmergencyContacts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmergencyContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmergencyContact is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmergencyContacts(EmployeeEmergencyContact payload, map<string|string[]> headers = {}, *EmergencyContactPatchByEmergencyContactXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmergencyContacts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET DEUEmployeeAccidentInsurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The DEUEmployeeAccidentInsurance with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAccidentInsurance/AccidentInsurance(map<string|string[]> headers = {}) returns PayloadIEnumerableDEUEmployeeAccidentInsurance|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeAccidentInsurance/AccidentInsurance`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST A dEUEmployeeAccidentInsurance
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A DEUEmployeeAccidentInsurance is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAccidentInsurance/AccidentInsurance(DEUEmployeeAccidentInsurance payload, map<string|string[]> headers = {}, *EmployeeAccidentInsurancePostByDEUEmployeeAccidentInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeAccidentInsurance/AccidentInsurance`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an DEUEmployeeAccidentInsurance
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The dEUEmployeeAccidentInsurance is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAccidentInsurance/AccidentInsurance(DEUEmployeeAccidentInsurance payload, map<string|string[]> headers = {}, *EmployeeAccidentInsurancePatchByDEUEmployeeAccidentInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeAccidentInsurance/AccidentInsurance`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeAssignedSexAndGenderIdentity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeAssignedSexAndGenderIdentity with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAssignedSexAndGenderIdentity(map<string|string[]> headers = {}, *EmployeeAssignedSexAndGenderIdentityGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeAssignedSexAndGenderIdentity|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeAssignedSexAndGenderIdentity`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeAssignedSexAndGenderIdentity
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeAssignedSexAndGenderIdentity is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAssignedSexAndGenderIdentity(EmployeeAssignedSexAndGenderIdentity payload, map<string|string[]> headers = {}, *EmployeeAssignedSexAndGenderIdentityPostByEmployeeAssignedSexAndGenderIdentityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeAssignedSexAndGenderIdentity`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeAssignedSexAndGenderIdentity
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeAssignedSexAndGenderIdentity is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeAssignedSexAndGenderIdentity(EmployeeAssignedSexAndGenderIdentity payload, map<string|string[]> headers = {}, *EmployeeAssignedSexAndGenderIdentityPatchByEmployeeAssignedSexAndGenderIdentityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeAssignedSexAndGenderIdentity`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeAUSFederalTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeAUSFederalTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AUSFederalTaxes(map<string|string[]> headers = {}, *EmployeeAUSFederalTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeAUSFederalTax|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AUSFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeAUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeAUSFederalTax is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/AUSFederalTaxes(EmployeeAUSFederalTax payload, map<string|string[]> headers = {}, *EmployeeAUSFederalTaxPostByEmployeeAUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AUSFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeAUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeAUSFederalTax is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/AUSFederalTaxes(EmployeeAUSFederalTax payload, map<string|string[]> headers = {}, *EmployeeAUSFederalTaxPatchByEmployeeAUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AUSFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Employee superannuation details for Australia
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The employee superannuation details for Australia by requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AUSSuperannuation(map<string|string[]> headers = {}, *EmployeeAUSSuperannuationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeAUSSuperannuation|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AUSSuperannuation`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Employee superannuation rules for Australia
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The employee superannuation rules for Australia by requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AUSSuperannuationRules(map<string|string[]> headers = {}, *EmployeeAUSSuperannuationRulesGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeAUSSuperannuationRules|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AUSSuperannuationRules`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Employee's Authorization Assignment Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeAuthorizationAssignments with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/AuthorizationAssignments(map<string|string[]> headers = {}, *EmployeeAuthorizationAssignmentGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableAuthorizationAssignment|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AuthorizationAssignments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an AuthorizationAssignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An AuthorizationAssignment is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/AuthorizationAssignments(AuthorizationAssignment payload, map<string|string[]> headers = {}, *EmployeeAuthorizationAssignmentPostByEmployeeAuthorityTypeAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AuthorizationAssignments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an AuthorizationAssignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The AuthorizationAssignment is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/AuthorizationAssignments(AuthorizationAssignment payload, map<string|string[]> headers = {}, *EmployeeAuthorizationAssignmentPatchByEmployeeAuthorityTypeAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/AuthorizationAssignments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeBadge Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeBadge with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Badges(map<string|string[]> headers = {}, *EmployeeBadgeGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeBadge|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Badges`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeBadge
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeBadge is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Badges(EmployeeBadge payload, map<string|string[]> headers = {}, *EmployeeBadgePostByEmployeeBadgeXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Badges`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeBadge
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeBadge is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Badges(EmployeeBadge payload, map<string|string[]> headers = {}, *EmployeeBadgePatchByEmployeeBadgeXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Badges`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get a list of Employee Balance Periods
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of employee balance periods meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeeBalancePeriods(map<string|string[]> headers = {}, *EmployeeBalancePeriodsGetByEmployeeXRefCodeAsOfDateStartDateEndDateClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeBalancePeriod|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeBalancePeriods`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get a list of Employee Balance Transactions grouped by their employee balance periods
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of employee balance transactions grouped by their employee balance periods meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeeBalanceTransactions(map<string|string[]> headers = {}, *EmployeeBalanceTransactionsGetByEmployeeXRefCodeBalanceXRefCodeStartDateEndDateClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeBalanceTransactions|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeBalanceTransactions`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Employee Balance Transaction
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An employee balance transaction is created 
    resource isolated function post [string clientNamespace]/V1/EmployeeBalanceTransactions(EmployeeBalanceTransactionForSubmit payload, map<string|string[]> headers = {}, *EmployeeBalanceTransactionsPostByEmployeeBalanceTransactionIsValidateOnlyClientNamespaceQueries queries) returns EmployeeBalanceTransactionPostResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeBalanceTransactions`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Modify) Employee Balance Transaction
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An employee balance transaction is modified 
    resource isolated function patch [string clientNamespace]/V1/EmployeeBalanceTransactions(EmployeeBalanceTransactionForPatch payload, map<string|string[]> headers = {}, *EmployeeBalanceTransactionsPatchByEmployeeBalanceTransactionEmployeeBalanceTransactionIdIsValidateOnlyClientNamespaceQueries queries) returns EmployeeBalanceTransactionPatchResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeBalanceTransactions`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeCANFederalTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeCANFederalTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CANFederalTaxes(map<string|string[]> headers = {}, *EmployeeCANFederalTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeCANFederalTax|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeCANFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeCANFederalTax is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/CANFederalTaxes(EmployeeCANFederalTax payload, map<string|string[]> headers = {}, *EmployeeCANFederalTaxPostByEmployeeCANFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeCANFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeCANFederalTax is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/CANFederalTaxes(EmployeeCANFederalTax payload, map<string|string[]> headers = {}, *EmployeeCANFederalTaxPatchByEmployeeCANFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeCANStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeCANStateTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CANStateTaxes(map<string|string[]> headers = {}, *EmployeeCANStateTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeCANStateTax|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANStateTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeCANStateTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A CANStateTaxes is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/CANStateTaxes(EmployeeCANStateTax payload, map<string|string[]> headers = {}, *EmployeeCANStateTaxPostByEmployeeCANStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANStateTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeCANStateTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The CANStateTaxes is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/CANStateTaxes(EmployeeCANStateTax payload, map<string|string[]> headers = {}, *EmployeeCANStateTaxPatchByEmployeeCANStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANStateTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeCANTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeCANTaxStatus with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CANTaxStatuses(map<string|string[]> headers = {}, *EmployeeCANTaxStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeCANTaxStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANTaxStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST EmployeeCANTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeCANTaxStatus Detail is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/CANTaxStatuses(EmployeeCANTaxStatus payload, map<string|string[]> headers = {}, *EmployeeCANTaxStatusPostByEmployeeCANTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANTaxStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH EmployeeCANTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeCANTaxStatus Detail is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/CANTaxStatuses(EmployeeCANTaxStatus payload, map<string|string[]> headers = {}, *EmployeeCANTaxStatusPatchByEmployeeCANTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CANTaxStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeCertification Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeCertification with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeCertifications(map<string|string[]> headers = {}, *EmployeeCertificationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableLMSEmployeeCertification|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeCertifications`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an Employee Certification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Certification is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeCertifications(LMSEmployeeCertification payload, map<string|string[]> headers = {}, *EmployeeCertificationPostByEmployeeCertificationXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeCertifications`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) an Employee Certification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Certification is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeCertifications(LMSEmployeeCertification payload, map<string|string[]> headers = {}, *EmployeeCertificationPatchByEmployeeCertificationXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeCertifications`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeClockDeviceGroup Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeClockDeviceGroup with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/ClockDeviceGroups(map<string|string[]> headers = {}, *EmployeeClockDeviceGroupGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeClockDeviceGroup|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/ClockDeviceGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeClockDeviceGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeClockDeviceGroup is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/ClockDeviceGroups(EmployeeClockDeviceGroup payload, map<string|string[]> headers = {}, *EmployeeClockDeviceGroupPostByClockDeviceGroupXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/ClockDeviceGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeClockDeviceGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeClockDeviceGroup is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/ClockDeviceGroups(EmployeeClockDeviceGroup payload, map<string|string[]> headers = {}, *EmployeeClockDeviceGroupPatchByClockDeviceGroupXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/ClockDeviceGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeCompensation Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeCompensation with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/CompensationSummary(map<string|string[]> headers = {}, *EmployeeCompensationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeCompensation|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/CompensationSummary`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeConfidentialIdentification Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeConfidentialIdentification with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/ConfidentialIdentification(map<string|string[]> headers = {}, *EmployeeConfidentialIdentificationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeConfidentialIdentification|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/ConfidentialIdentification`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeConfidentialIdentification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeConfidentialIdentification is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/ConfidentialIdentification(EmployeeConfidentialIdentification payload, map<string|string[]> headers = {}, *EmployeeConfidentialIdentificationPostByEmployeeConfidentialIdentificationXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/ConfidentialIdentification`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeConfidentialIdentification
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeConfidentialIdentification is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/ConfidentialIdentification(EmployeeConfidentialIdentification payload, map<string|string[]> headers = {}, *EmployeeConfidentialIdentificationPatchByEmployeeConfidentialIdentificationXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/ConfidentialIdentification`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeCourse Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeCourse with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Courses(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeCourse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Courses`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an Employee Course Enrollment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be created.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Course Enrollment is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Courses(EmployeeCourse payload, map<string|string[]> headers = {}, *EmployeeCoursePostByEmployeeCourseXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Courses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) an Employee Course Enrollment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be created.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Course Enrollment is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Courses(EmployeeCourse payload, map<string|string[]> headers = {}, *EmployeeCoursePatchByEmployeeCourseXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Courses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeDefaultLabor Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeDefaultLabor with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/LaborDefaults(map<string|string[]> headers = {}, *EmployeeDefaultLaborGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeDefaultLabor|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/LaborDefaults`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeDefaultLabor
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An EmployeeDefaultLabor is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/LaborDefaults(EmployeeDefaultLabor payload, map<string|string[]> headers = {}, *EmployeeDefaultLaborPostByEmployeeDefaultLaborXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/LaborDefaults`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeDefaultLabor
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeDefaultLabor is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/LaborDefaults(EmployeeDefaultLabor payload, map<string|string[]> headers = {}, *EmployeeDefaultLaborPatchByEmployeeDefaultLaborXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/LaborDefaults`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeDependentsBeneficiaries Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeDependentsBeneficiaries with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DependentsBeneficiaries(map<string|string[]> headers = {}, *EmployeeDependentsBeneficiariesGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeDependentBeneficiary|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DependentsBeneficiaries`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeWageTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeWageTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/DEUEmployeeWageTax(map<string|string[]> headers = {}, *EmployeeDEUTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableDEUEmployeeWageTax|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DEUTax/DEUEmployeeWageTax`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an Employee Wage Tax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An Employee Wage Tax is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/DEUEmployeeWageTax(DEUEmployeeWageTax payload, map<string|string[]> headers = {}, *EmployeeDEUTaxPostByDeuEmployeeWageTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DEUTax/DEUEmployeeWageTax`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) an Employee Wage Tax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An Employee Wage Tax is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/DEUEmployeeWageTax(DEUEmployeeWageTax payload, map<string|string[]> headers = {}, *EmployeeDEUTaxPatchByDeuEmployeeWageTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DEUTax/DEUEmployeeWageTax`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Employee Social Insurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Employee Social Insurance details with the requested Employee XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/SocialInsurance(map<string|string[]> headers = {}, *EmployeeDEUTaxSocialInsuranceGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableDEUTaxSocialInsurance|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DEUTax/SocialInsurance`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Employee Social Insurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An Employee Social Insurance is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/SocialInsurance(DEUTaxSocialInsurance payload, map<string|string[]> headers = {}, *EmployeeDEUTaxSocialInsurancePostByDeuEmployeeSocialInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DEUTax/SocialInsurance`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) aEmployee Social Insurance Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An Employee Social Insurance is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/DEUTax/SocialInsurance(DEUTaxSocialInsurance payload, map<string|string[]> headers = {}, *EmployeeDEUTaxSocialInsurancePatchByDeuEmployeeSocialInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DEUTax/SocialInsurance`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeDirectDeposit Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeDirectDeposit with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/DirectDeposits(map<string|string[]> headers = {}, *EmployeeDirectDepositGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeDirectDeposit|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/DirectDeposits`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeDisability Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeDisabilityController with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Disabilities(map<string|string[]> headers = {}, *EmployeeDisabilityGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeDisability|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Disabilities`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeDisability
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A EmployeeDisability is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Disabilities(EmployeeDisability payload, map<string|string[]> headers = {}, *EmployeeDisabilityPostByEmployeeDisabilityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Disabilities`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeDisability
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeDisability is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Disabilities(EmployeeDisability payload, map<string|string[]> headers = {}, *EmployeeDisabilityPatchByEmployeeDisabilityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Disabilities`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeEIRate Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeEIRate with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EIRates(map<string|string[]> headers = {}, *EmployeeEIRateGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeCANEmploymentInsuranceRate|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EIRates`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeEmploymentAgreement Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeEmploymentAgreement with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentAgreements(map<string|string[]> headers = {}, *EmployeeEmploymentAgreementGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeEmploymentAgreement|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentAgreements`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeEmploymentAgreement
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentAgreements(EmployeeEmploymentAgreement payload, map<string|string[]> headers = {}, *EmployeeEmploymentAgreementPostByEmployeeEmploymentAgreementXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentAgreements`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeEmploymentAgreement
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeEmploymentAgreement is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentAgreements(EmployeeEmploymentAgreement payload, map<string|string[]> headers = {}, *EmployeeEmploymentAgreementPatchByEmployeeEmploymentAgreementXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentAgreements`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmploymentStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Employment Statuses of employee with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses(map<string|string[]> headers = {}, *EmployeeEmploymentStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeEmploymentStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmploymentStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmploymentStatus is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses(EmployeeEmploymentStatus payload, map<string|string[]> headers = {}, *EmployeeEmploymentStatusPostByEmploymentStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmploymentStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmploymentStatus is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses(EmployeeEmploymentStatus payload, map<string|string[]> headers = {}, *EmployeeEmploymentStatusPatchByEmploymentStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Replace EmploymentStatuses
    #
    # + xRefCode - The unique identifier (external reference code) of the Employee for whom the subordinate data will be replaced.
    # The value provided must be the exact match for an Employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The new JSON-formatted EmploymentStatus with which to replace the deleted ones 
    # + return - The Employee's Employment Statuses are replaced within the given date range; no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentStatuses/Replacement(EmployeeEmploymentStatus payload, map<string|string[]> headers = {}, *EmployeeEmploymentStatusReplaceByEmploymentStatusXRefCodeReplaceFromReplaceToIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentStatuses/Replacement`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeEmploymentType Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeEmploymentType with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentTypes(map<string|string[]> headers = {}, *EmployeeEmploymentTypeGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeEmploymentType|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentTypes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeEmploymentType
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeEmploymentType is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentTypes(EmployeeEmploymentType payload, map<string|string[]> headers = {}, *EmployeeEmploymentTypePostByEmployeeEmploymentTypeXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentTypes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeEmploymentType
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeEmploymentType is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmploymentTypes(EmployeeEmploymentType payload, map<string|string[]> headers = {}, *EmployeeEmploymentTypePatchByEmployeeEmploymentTypeXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmploymentTypes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeEthnicity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeEthnicity with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Ethnicities(map<string|string[]> headers = {}, *EmployeeEthnicityGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeEthnicity|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Ethnicities`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST EmployeeEthnicity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeEthnicity Detail is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Ethnicities(EmployeeEthnicity payload, map<string|string[]> headers = {}, *EmployeeEthnicityPostByEmployeeEthnicityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Ethnicities`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH EmployeeEthnicity Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeEthnicity Detail is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Ethnicities(EmployeeEthnicity payload, map<string|string[]> headers = {}, *EmployeeEthnicityPatchByEmployeeEthnicityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Ethnicities`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get the status of Job Queue tables.
    #
    # + backgroundJobQueueItemId - To find a status of employee export background job
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Job Status and Access API URL 
    resource isolated function get [string clientNamespace]/v1/EmployeeExportJobs/Status/[int:Signed32 backgroundJobQueueItemId](map<string|string[]> headers = {}) returns PayloadObject|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/EmployeeExportJobs/Status/${getEncodedUri(backgroundJobQueueItemId)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Get bulk employee of data as a string in json format
    #
    # + jobId - To get background job processed data for employee export
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Returns a page of employee data 
    resource isolated function get [string clientNamespace]/v1/EmployeeExportJobs/Data/[string jobId](map<string|string[]> headers = {}) returns PaginatedPayloadIEnumerableEmployee|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/EmployeeExportJobs/Data/${getEncodedUri(jobId)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Add new HR Bulk Export details into Job Queue tables.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A HR Bulk Export is created with an empty response body 
    resource isolated function post [string clientNamespace]/V1/EmployeeExportJobs(EmployeeExportParams payload, map<string|string[]> headers = {}, *EmployeeExportJobsPostByExportIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeExportJobs`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET EmployeeGlobalPropertyValue Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeGlobalPropertyValue with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeGlobalProperties(map<string|string[]> headers = {}, *EmployeeGlobalPropertyValueGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeGlobalPropertyValue|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeGlobalProperties`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeGlobalPropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Global Property is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeGlobalProperties(EmployeeGlobalPropertyValue payload, map<string|string[]> headers = {}, *EmployeeGlobalPropertyValuePostByEmployeeGlobalPropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeGlobalProperties`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeGlobalPropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeGlobalPropertyValue is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeGlobalProperties(EmployeeGlobalPropertyValue payload, map<string|string[]> headers = {}, *EmployeeGlobalPropertyValuePatchByEmployeeGlobalPropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeGlobalProperties`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET the list of employee gl splits.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Employee GL Splits 
    resource isolated function get [string clientNamespace]/V1/Payroll/EmployeeGLSplits(map<string|string[]> headers = {}, *EmployeeGLSplitsGetByPayGroupXRefCodeEmployeeXRefCodesSplitStatusPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeeGLSplits|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/EmployeeGLSplits`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a list of employee GLSplitSets.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/Payroll/EmployeeGLSplits(EmployeeGLSplitUpsert[] payload, map<string|string[]> headers = {}, *EmployeeGLSplitsPostByGlSplitsIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/EmployeeGLSplits`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a list of employee GLSplitSets.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/V1/Payroll/EmployeeGLSplits(EmployeeGLSplitUpsert[] payload, map<string|string[]> headers = {}, *EmployeeGLSplitsPatchByGlSplitsIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/EmployeeGLSplits`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET HighlyCompensatedEmployee Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The HighlyCompensatedEmployee with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HighlyCompensatedEmployees(map<string|string[]> headers = {}, *EmployeeHCEGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeHighlyCompensatedEmployeeIndicator|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HighlyCompensatedEmployees`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a HighlyCompensatedEmployee
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A HighlyCompensatedEmployee is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HighlyCompensatedEmployees(EmployeeHighlyCompensatedEmployeeIndicator payload, map<string|string[]> headers = {}, *EmployeeHCEPostByHighlyCompensatedEmpoyeeXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HighlyCompensatedEmployees`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a HighlyCompensatedEmployee
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The HighlyCompensatedEmployee is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/HighlyCompensatedEmployees(EmployeeHighlyCompensatedEmployeeIndicator payload, map<string|string[]> headers = {}, *EmployeeHCEPatchByHighlyCompensatedEmpoyeeXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HighlyCompensatedEmployees`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeHealthWellness Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeHealthWellness with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HealthWellnessDetails(map<string|string[]> headers = {}, *EmployeeHealthWellnessGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeHealthWellness|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HealthWellnessDetails`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeHealthWellness
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeHealthWellness is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HealthWellnessDetails(EmployeeHealthWellness payload, map<string|string[]> headers = {}, *EmployeeHealthWellnessPostByEmployeeHealthWellnessXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HealthWellnessDetails`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeHealthWellness
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeHealthWellness is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/HealthWellnessDetails(EmployeeHealthWellness payload, map<string|string[]> headers = {}, *EmployeeHealthWellnessPatchByEmployeeHealthWellnessXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HealthWellnessDetails`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeHRIncident Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeHRIncident with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HRIncidents(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeHRIncident|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HRIncidents`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeHRIncident
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An EmployeeHRIncident is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HRIncidents(EmployeeHRIncident payload, map<string|string[]> headers = {}, *EmployeeHRIncidentPostByIncidentXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HRIncidents`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET EmployeeHRPolicy Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The Employee HRPolicy with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/HRPolicies(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeHRPolicy|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HRPolicies`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeHRPolicy
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee HRPolicy is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/HRPolicies(EmployeeHRPolicy payload, map<string|string[]> headers = {}, *EmployeeHRPolicyPostByEmployeeHRPolicyXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/HRPolicies`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeIRLTaxEWSS with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/EWSS(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeIRLTaxEWSS|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/EWSS`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeIRLTaxEWSS is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/EWSS(EmployeeIRLTaxEWSS payload, map<string|string[]> headers = {}, *EmployeeIRLTaxEWSSPostByEmployeeIRLTaxEWSSXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/EWSS`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeIRLTaxEWSS is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/EWSS(EmployeeIRLTaxEWSS payload, map<string|string[]> headers = {}, *EmployeeIRLTaxEWSSPatchByEmployeeIRLTaxEWSSXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/EWSS`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeIRLTaxPAYEExclusion Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeIRLTaxPAYEExclusion with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PAYEExclusion(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeIRLTaxPAYEExclusion|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/PAYEExclusion`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeIRLTaxPAYEExclusion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An EmployeeIRLTaxPAYEExclusion is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PAYEExclusion(EmployeeIRLTaxPAYEExclusion payload, map<string|string[]> headers = {}, *EmployeeIRLTaxPAYEExclusionPostByEmployeeIRLTaxPAYEExclusionXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/PAYEExclusion`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeIRLTaxPAYEExclusion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeIRLTaxPAYEExclusion is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PAYEExclusion(EmployeeIRLTaxPAYEExclusion payload, map<string|string[]> headers = {}, *EmployeeIRLTaxPAYEExclusionPatchByEmployeeIRLTaxPAYEExclusionXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/PAYEExclusion`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeIRLTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeIRLTaxPRSI with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PRSI(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeIRLTaxPRSI|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/PRSI`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeIRLTaxPRSI is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PRSI(EmployeeIRLTaxPRSI payload, map<string|string[]> headers = {}, *EmployeeIRLTaxPRSIPostByEmployeeIRLTaxPRSIXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/PRSI`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeIRLTaxPRSI is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/PRSI(EmployeeIRLTaxPRSI payload, map<string|string[]> headers = {}, *EmployeeIRLTaxPRSIPatchByEmployeeIRLTaxPRSIXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/PRSI`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeIRLTaxRPN with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/RPN(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeIRLTaxRPN|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/RPN`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeIRLTaxRPN is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/RPN(EmployeeIRLTaxRPN payload, map<string|string[]> headers = {}, *EmployeeIRLTaxRPNPostByEmployeeIRLTaxRPNXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/RPN`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeIRLTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeIRLTaxRPN is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/IRLTax/RPN(EmployeeIRLTaxRPN payload, map<string|string[]> headers = {}, *EmployeeIRLTaxRPNPatchByEmployeeRPNXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/IRLTax/RPN`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeLocation Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeLocation with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Locations(map<string|string[]> headers = {}, *EmployeeLocationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeLocation|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Locations`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeLocation
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeLocation is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Locations(EmployeeLocation payload, map<string|string[]> headers = {}, *EmployeeLocationPostByLocationXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Locations`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeLocation
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeLocation is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Locations(EmployeeLocation payload, map<string|string[]> headers = {}, *EmployeeLocationPatchByLocationXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Locations`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeManager Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeManager with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeManagers(map<string|string[]> headers = {}, *EmployeeManagersGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeManager|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeManagers`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeOnboardingPolicy Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeOnboardingPolicy with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/OnboardingPolicies(map<string|string[]> headers = {}, *EmployeeOnboardingPoliciesGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeOnboardingPolicy|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/OnboardingPolicies`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeOnboardingPolicy
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/OnboardingPolicies(EmployeeOnboardingPolicy payload, map<string|string[]> headers = {}, *EmployeeOnboardingPoliciesPostByEmployeeOnboardingPolicyXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/OnboardingPolicies`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeOnboardingPolicy
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeOnboardingPolicy is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/OnboardingPolicies(EmployeeOnboardingPolicy payload, map<string|string[]> headers = {}, *EmployeeOnboardingPoliciesPatchByEmployeeOnboardingPolicyXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/OnboardingPolicies`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeOrgUnitInfo Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeOrgUnitInfo with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/OrgUnitInfos(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeOrgUnitInformation|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/OrgUnitInfos`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeePayAdjCodeGroupList Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeePayAdjCodeGroupList with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayAdjustCodeGroups(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeePayAdjustCodeGroup|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayAdjustCodeGroups`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeePayAdjCodeGroupList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeePayAdjCodeGroupList is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayAdjustCodeGroups(EmployeePayAdjustCodeGroup payload, map<string|string[]> headers = {}, *EmployeePayAdjustCodeGroupPostByEmployeePayAdjCodeGroupListXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayAdjustCodeGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeePayAdjCodeGroupList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeePayAdjCodeGroupList is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayAdjustCodeGroups(EmployeePayAdjustCodeGroup payload, map<string|string[]> headers = {}, *EmployeePayAdjustCodeGroupPatchByEmployeePayAdjCodeGroupListXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayAdjustCodeGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get a list of Employee Pay Adjustments
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of EmployeePayAdjustment data meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeePayAdjustments(map<string|string[]> headers = {}, *EmployeePayAdjustmentsGetEmployeePayAdjustmentsByFilterPayAdjustmentStartDateFilterPayAdjustmentEndDateFilterLastModifiedStartDateUTCFilterLastModifiedEndDateUTCOrgUnitXRefCodeEmployeeXRefCodePayAdjustmentCodeXRefCodeProjectXRefCodeDepartmentXRefCodeJobXRefCodeDocketXRefCodeReferenceDateManagerAuthorizedEmployeeAuthorizedIsDeletedPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeePayAdjustment|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeePayAdjustments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Employee Pay Adjustment
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An employee pay adjustment is created 
    resource isolated function post [string clientNamespace]/V1/EmployeePayAdjustments(EmployeePayAdjustmentForSubmit payload, map<string|string[]> headers = {}, *EmployeePayAdjustmentsPostByPayAdjustmentIsValidateOnlyIsValidateLaborClientNamespaceQueries queries) returns EmployeePayAdjustmentPostResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeePayAdjustments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) Employee Pay Adjustment
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An employee pay adjustment is updated 
    resource isolated function patch [string clientNamespace]/V1/EmployeePayAdjustments/[string xRefCode](EmployeePayAdjustmentForSubmit payload, map<string|string[]> headers = {}, *EmployeePayAdjustmentsPatchByPayAdjustmentXRefCodeIsValidateOnlyIsValidateLaborClientNamespaceQueries queries) returns EmployeePayAdjustmentPostResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeePayAdjustments/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeePayGradeRate Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeePayGradeRate with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/PayGradeRates(map<string|string[]> headers = {}, *EmployeePayGradeRateGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeePayGradeRate|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/PayGradeRates`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET List of Taxes for a specific employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved. The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeePayrollTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxes(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeePayrollTax|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayrollTaxes`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET List of Tax Parameters for a specific employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved. The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeePayrollTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParameters(map<string|string[]> headers = {}, *EmployeePayrollTaxParameterGetByXRefCodeContextDateRangeFromContextDateRangeToTaxAuthorityInstanceLegalEntityXRefCodeClientNamespaceQueries queries) returns PayloadIEnumerableEmployeePayrollTaxParameter|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayrollTaxParameters`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeePayrollTaxParameter is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParameters(EmployeePayrollTaxParameter payload, map<string|string[]> headers = {}, *EmployeePayrollTaxParameterPostByEmployeePayrollTaxParameterXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayrollTaxParameters`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeePayrollTaxParameter is created, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParameters(EmployeePayrollTaxParameter payload, map<string|string[]> headers = {}, *EmployeePayrollTaxParameterPatchByEmployeePayrollTaxParameterXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayrollTaxParameters`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # POST Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - EmployeePayrollTaxParameter is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParametersList(EmployeePayrollTaxParameter[] payload, map<string|string[]> headers = {}, *EmployeePayrollTaxParameterPostByEmployeePayrollTaxParametersXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayrollTaxParametersList`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Tax Parameter for an employee.
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - EmployeePayrollTaxParameter is created, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeePayrollTaxParametersList(EmployeePayrollTaxParameter[] payload, map<string|string[]> headers = {}, *EmployeePayrollTaxParameterPatchByEmployeePayrollTaxParametersXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeePayrollTaxParametersList`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET a List of Employee pay summaries
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of EmployeePaySummary data meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeePaySummaries(map<string|string[]> headers = {}, *EmployeePaySummariesGetEmployeePaySummariesByFilterPaySummaryStartDateFilterPaySummaryEndDateEmployeeXRefCodeLocationXRefCodePayGroupXRefCodePayCategoryXRefCodeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeePaySummary|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeePaySummaries`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a List of Employee pay summaries retro
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of EmployeePaySummary retro data meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeePaySummariesRetro(map<string|string[]> headers = {}, *EmployeePaySummariesRetroGetEmployeePaySummariesByPayGroupXRefCodePeriodStartDatePeriodEndDatePayDateEmployeeXRefCodeLocationXRefCodePayCategoryXRefCodeOnlyRetrosPayExportIdPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeePaySummaryRetro|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeePaySummariesRetro`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeePerformanceRating Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeePerformanceRating with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/PerformanceRatings(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeePerformanceRating|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/PerformanceRatings`;
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An Employee Performance Rating is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/PerformanceRatings(EmployeePerformanceRating payload, map<string|string[]> headers = {}, *EmployeePerformanceRatingPostByEmployeePerformanceRatingXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/PerformanceRatings`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An Employee Performance Rating is created, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/PerformanceRatings(EmployeePerformanceRating payload, map<string|string[]> headers = {}, *EmployeePerformanceRatingPatchByEmployeePerformanceRatingXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/PerformanceRatings`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeePropertyValue Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeePropertyValue with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeProperties(map<string|string[]> headers = {}, *EmployeePropertyValueGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeePropertyValue|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeProperties`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeePropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeProperties(EmployeePropertyValue payload, map<string|string[]> headers = {}, *EmployeePropertyValuePostByEmployeePropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeProperties`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeePropertyValue
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeePropertyValue is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeProperties(EmployeePropertyValue payload, map<string|string[]> headers = {}, *EmployeePropertyValuePatchByEmployeePropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeProperties`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET a List of Employee Punches
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of EmployeePunch data meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeePunches(map<string|string[]> headers = {}, *EmployeePunchesGetEmployeePunchesByFilterTransactionStartTimeUTCFilterTransactionEndTimeUTCEmployeeXRefCodeLocationXRefCodePositionXRefCodeDepartmentXRefCodeJobXRefCodeDocketXRefCodeProjectXRefCodePayAdjustmentXRefCodeShiftStatusFilterShiftTimeStartFilterShiftTimeEndBusinessDatePageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeePunch|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeePunches`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - EmployeePunch details which matches XRefCode were Deleted 
    resource isolated function delete [string clientNamespace]/V1/EmployeePunches(map<string|string[]> headers = {}, *EmployeePunchesDeleteEmployeePunchByEmployeePunchXRefCodeClientNamespaceQueries queries) returns PayloadEmployeePunchPatchPostDeleteResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeePunches`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # GET a List of Employee Raw Punches
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of EmployeePunch data meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeeRawPunches(map<string|string[]> headers = {}, *EmployeeRawPunchesGetEmployeeRawPunchesByFilterTransactionStartTimeUTCFilterTransactionEndTimeUTCEmployeeXRefCodeEmployeeBadgePunchStatePunchTypesPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeeRawPunch|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeRawPunches`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Employee Raw Punch
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A raw punch is created 
    resource isolated function post [string clientNamespace]/V1/EmployeeRawPunches(EmployeeRawPunchForSubmit payload, map<string|string[]> headers = {}, *EmployeeRawPunchesPostByPunchIsValidateOnlyClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeeRawPunch|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeRawPunches`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET EmployeeRole Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeRole with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Roles(map<string|string[]> headers = {}, *EmployeeRoleGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeRole|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Roles`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeRole
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Roles(EmployeeRole payload, map<string|string[]> headers = {}, *EmployeeRolePostByEmployeeRoleXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Roles`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeRole
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeRole is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Roles(EmployeeRole payload, map<string|string[]> headers = {}, *EmployeeRolePatchByEmployeeRoleXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Roles`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET a List of Employees
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Employees XRefCodes meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/Employees(map<string|string[]> headers = {}, *EmployeesGetByEmployeeNumberDisplayNameSocialSecurityNumberEmploymentStatusXRefCodeOrgUnitXRefCodeDepartmentXRefCodeJobXRefCodePositionXRefCodePayClassXRefCodePayGroupXRefCodePayPolicyXRefCodePayTypeXRefCodePayrollPolicyXRefCodeFilterHireStartDateFilterHireEndDateFilterTerminationStartDateFilterTerminationEndDateFilterUpdatedStartDateFilterUpdatedEndDateFilterUpdatedEntitiesFilterOriginalHireStartDateFilterOriginalHireEndDateFilterSeniorityStartDateFilterSeniorityEndDateFilterBaseSalaryFromFilterBaseSalaryToFilterBaseRateFromFilterBaseRateToContextDateClientNamespaceQueries queries) returns PayloadIEnumerableEmployee|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Hire) an Employee
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (hire and rehire ) and PATCH (employee update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees(Employee payload, map<string|string[]> headers = {}, *EmployeesPostByEmployeeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET Employee Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Employee with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode](map<string|string[]> headers = {}, *EmployeesGetByXRefCodeContextDateExpandContextDateRangeFromContextDateRangeToAmfEntityAmfLevelAmfLevelValueClientNamespaceQueries queries) returns PayloadEmployee|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # PATCH (Update) an Employee
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (hire and rehire ) and PATCH (employee update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The Employee is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode](Employee payload, map<string|string[]> headers = {}, *EmployeesPatchByEmployeeXRefCodeIsValidateOnlyReplaceExistingClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List Employee Schedules
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of employee schedule meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Schedules(map<string|string[]> headers = {}, *EmployeeSchedulesGetByXRefCodeFilterScheduleStartDateFilterScheduleEndDateIsPostedExpandClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeSchedule|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Schedules`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET List of Employee Schedules
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of employee schedule meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeeSchedules(map<string|string[]> headers = {}, *EmployeeSchedulesGetByFilterScheduleStartDateFilterScheduleEndDateEmployeeXRefCodeDepartmentXRefCodeJobXRefCodePositionXRefCodeOrgUnitXRefCodeUnfillExpandPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeeSchedule|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeSchedules`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Employee schedule
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/EmployeeSchedules(EmployeeSchedulePostAPIRequestDTO[] payload, map<string|string[]> headers = {}, *EmployeeSchedulesPostByOrgUnitXRefCodeEmployeeSchedulesIsValidateOnlyViolationLevelClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeSchedulePostAPIResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeSchedules`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) Employee schedule
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/V1/EmployeeSchedules(EmployeeSchedulePatchAPIRequestDTO[] payload, map<string|string[]> headers = {}, *EmployeeSchedulesPatchByOrgUnitXRefCodeEmployeeSchedulesIsValidateOnlyViolationLevelClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeSchedulePostAPIResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeSchedules`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List of Employee Schedules that have been changed since a given date (or between a date range)
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of employee schedules meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/EmployeeSchedulesDelta(map<string|string[]> headers = {}, *EmployeeSchedulesDeltaGetByOrgUnitXRefCodeScheduleChangesFromDateScheduleChangesToDateUnscheduledEmployeeDaysUnscheduledEmployeeOptionSchedulePostedOptionExcludeNonProductiveShiftsPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeeScheduleExtended|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeSchedulesDelta`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeShortTimeWork Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeShortTimeWorkController with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeShortTimeWorks(map<string|string[]> headers = {}, *EmployeeShortTimeWorkGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeShortTimeWork|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeShortTimeWorks`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeSkill Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeSkill with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Skills(map<string|string[]> headers = {}, *EmployeeSkillGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeSkill|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Skills`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an Employee Skill
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Skill is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Skills(EmployeeSkill payload, map<string|string[]> headers = {}, *EmployeeSkillPostByEmployeeSkillXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Skills`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) an Employee Skill
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Skill is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Skills(EmployeeSkill payload, map<string|string[]> headers = {}, *EmployeeSkillPatchByEmployeeSkillXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Skills`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeTrainingProgram Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeTrainingProgram with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/TrainingPrograms(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeTrainingProgram|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/TrainingPrograms`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeTrainingProgram
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeTrainingProgram is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/TrainingPrograms(EmployeeTrainingProgram payload, map<string|string[]> headers = {}, *EmployeeTrainingProgramPostByEmployeeTrainingProgramXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/TrainingPrograms`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET an EmployeeUKIrregularPaymentDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeUKIrregularPaymentDetail with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/Irregular(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeUKIrregularPaymentDetails|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/Irregular`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeUKIrregularPaymentDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeUKIrregularPaymentDetails is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/Irregular(EmployeeUKIrregularPaymentDetails payload, map<string|string[]> headers = {}, *EmployeeUKIrregularPaymentDetailsPostByEmployeeUKIrregularPaymentDetailsXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/Irregular`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeUKIrregularPaymentDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUKIrregularPaymentDetails is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/Irregular(EmployeeUKIrregularPaymentDetails payload, map<string|string[]> headers = {}, *EmployeeUKIrregularPaymentDetailsPatchByEmployeeUKIrregularPaymentDetailsXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/Irregular`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Employee NI Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeUKNIDetails with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKNI/NIInfo(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeUKNIDetails|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKNI/NIInfo`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Employee NI Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Created NI Details for Employee with supplied XRefCode 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKNI/NIInfo(EmployeeUKNIDetails payload, map<string|string[]> headers = {}, *EmployeeUKNIDetailsPostByEmployeeNiXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeUKNIDetails|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKNI/NIInfo`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Employee NI Details
    #
    # + xRefCode -
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUKTaxDetails is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKNI/NIInfo(EmployeeUKNIDetails payload, map<string|string[]> headers = {}, *EmployeeUKNIDetailsPatchByEmployeeNiXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKNI/NIInfo`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeUKPostgraduateLoan Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUKPostgraduateLoan with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/PostgraduateLoan(map<string|string[]> headers = {}, *EmployeeUKPostgraduateLoanGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeUKPostgraduateLoan|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/PostgraduateLoan`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeUKPostgraduateLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeUKPostgraduateLoan is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/PostgraduateLoan(EmployeeUKPostgraduateLoan payload, map<string|string[]> headers = {}, *EmployeeUKPostgraduateLoanPostByEmployeeUKPostgraduateLoanXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/PostgraduateLoan`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeUKPostgraduateLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeUKPostgraduateLoan is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/PostgraduateLoan(EmployeeUKPostgraduateLoan payload, map<string|string[]> headers = {}, *EmployeeUKPostgraduateLoanPatchByEmployeeUKPostgraduateLoanXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/PostgraduateLoan`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeUKStudentLoan Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUKStudentLoan with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/StudentLoan(map<string|string[]> headers = {}, *EmployeeUKStudentLoanGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeUKStudentLoan|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/StudentLoan`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeUKStudentLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeUKStudentLoan is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/StudentLoan(EmployeeUKStudentLoan payload, map<string|string[]> headers = {}, *EmployeeUKStudentLoanPostByEmployeeUKStudentLoanXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/StudentLoan`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeUKStudentLoan
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeUKStudentLoan is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/StudentLoan(EmployeeUKStudentLoan payload, map<string|string[]> headers = {}, *EmployeeUKStudentLoanPatchByEmployeeUKStudentLoanXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/StudentLoan`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeUKTaxDetails Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeeUKTaxDetails with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/TaxInfo(map<string|string[]> headers = {}) returns PayloadIEnumerableEmployeeUKTaxDetails|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/TaxInfo`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeUKTaxDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeUKTaxDetails is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/TaxInfo(EmployeeUKTaxDetails payload, map<string|string[]> headers = {}, *EmployeeUKTaxDetailsPostByEmployeeUKTaxDetailsXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/TaxInfo`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeUKTaxDetails
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeUKTaxDetails is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UKTax/TaxInfo(EmployeeUKTaxDetails payload, map<string|string[]> headers = {}, *EmployeeUKTaxDetailsPatchByEmployeeUKTaxDetailsXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UKTax/TaxInfo`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeUnion Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUnion with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UnionMemberships(map<string|string[]> headers = {}, *EmployeeUnionGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeUnionMembership|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UnionMemberships`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeUnion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeUnion is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UnionMemberships(EmployeeUnionMembership payload, map<string|string[]> headers = {}, *EmployeeUnionPostByEmployeeUnionXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UnionMemberships`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeUnion
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUnion is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UnionMemberships(EmployeeUnionMembership payload, map<string|string[]> headers = {}, *EmployeeUnionPatchByEmployeeUnionXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UnionMemberships`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeUSFederalTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUSFederalTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/USFederalTaxes(map<string|string[]> headers = {}, *EmployeeUSFederalTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeUSFederalTax|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeUSFederalTax is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/USFederalTaxes(EmployeeUSFederalTax payload, map<string|string[]> headers = {}, *EmployeeUSFederalTaxPostByEmployeeUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeUSFederalTax
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeUSFederalTax is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/USFederalTaxes(EmployeeUSFederalTax payload, map<string|string[]> headers = {}, *EmployeeUSFederalTaxPatchByEmployeeUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USFederalTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeUSStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUSStateTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/USStateTaxes(map<string|string[]> headers = {}, *EmployeeUSStateTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeUSStateTax|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USStateTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST EmployeeUSStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeUSStateTax Detail is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/USStateTaxes(EmployeeUSStateTax payload, map<string|string[]> headers = {}, *EmployeeUSStateTaxPostByEmplyeeUSStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USStateTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH EmployeeUSStateTax Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeUSStateTax Detail is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/USStateTaxes(EmployeeUSStateTax payload, map<string|string[]> headers = {}, *EmployeeUSStateTaxPatchByEmplyeeUSStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USStateTaxes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeUSTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeUSTaxStatus with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/USTaxStatuses(map<string|string[]> headers = {}, *EmployeeUSTaxStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeUSTaxStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USTaxStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST EmployeeUSTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeUSTaxStatus Detail is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/USTaxStatuses(EmployeeUSTaxStatus payload, map<string|string[]> headers = {}, *EmployeeUSTaxStatusPostByEmployeeUSTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USTaxStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH EmployeeUSTaxStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeUSTaxStatus Detail is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/USTaxStatuses(EmployeeUSTaxStatus payload, map<string|string[]> headers = {}, *EmployeeUSTaxStatusPatchByEmployeeUSTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/USTaxStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Verification of Employment (VOE) for a specific employee.
    #
    # + countryCode - Employee's Country Code
    # + employeeXRefCode - The unique identifier (external reference code) of the employee
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeePayrollTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/EmployeeVOE/[string countryCode]/[string employeeXRefCode](map<string|string[]> headers = {}) returns PayloadEmployeeVOE|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeVOE/${getEncodedUri(countryCode)}/${getEncodedUri(employeeXRefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Verification of Income (VOI) for a specific employee.
    #
    # + countryCode - Employee's Country Code
    # + employeeXRefCode - The unique identifier (external reference code) of the employee
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmployeePayrollTax with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/EmployeeVOI/[string countryCode]/[string employeeXRefCode](map<string|string[]> headers = {}) returns PayloadEmployeeVOI|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmployeeVOI/${getEncodedUri(countryCode)}/${getEncodedUri(employeeXRefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET EmployeeVeteransStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeVeteransStatusController with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/VeteranStatuses(map<string|string[]> headers = {}, *EmployeeVeteransStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeVeteransStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/VeteranStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeVeteransStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeVeteransStatus is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/VeteranStatuses(EmployeeVeteransStatus payload, map<string|string[]> headers = {}, *EmployeeVeteransStatusPostByEmployeeVeteransStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/VeteranStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeVeteransStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeVeteransStatus is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/VeteranStatuses(EmployeeVeteransStatus payload, map<string|string[]> headers = {}, *EmployeeVeteransStatusPatchByEmployeeVeteransStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/VeteranStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Employee's Volunteer List Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The  EmployeeVolunteerList for the requested employee XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/VolunteerLists(map<string|string[]> headers = {}, *EmployeeVolunteerListGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeVolunteerList|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/VolunteerLists`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST an EmployeeVolunteerList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeVolunteerList is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/VolunteerLists(EmployeeVolunteerList payload, map<string|string[]> headers = {}, *EmployeeVolunteerListPostByEmployeeVolunteerListXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/VolunteerLists`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH an EmployeeVolunteerList
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A EmployeeVolunteerList is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/VolunteerLists(EmployeeVolunteerList payload, map<string|string[]> headers = {}, *EmployeeVolunteerListPatchByEmployeeVolunteerListXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/VolunteerLists`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeWorkAssignmentManager Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeWorkAssignmentManager with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers(map<string|string[]> headers = {}, *EmployeeWorkAssigmentManagerGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeWorkAssignmentManager|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeWorkAssignmentManagers`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeWorkAssignmentManager
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeWorkAssignmentManager is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers(EmployeeWorkAssignmentManager payload, map<string|string[]> headers = {}, *EmployeeWorkAssigmentManagerPostByEwamXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeWorkAssignmentManagers`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeWorkAssignmentManager
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeWorkAssignmentManager is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers(EmployeeWorkAssignmentManager payload, map<string|string[]> headers = {}, *EmployeeWorkAssigmentManagerPatchByEwamXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeWorkAssignmentManagers`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Replace EmployeeWorkAssignmentManagers
    #
    # + xRefCode - The unique identifier (external reference code) of the Employee for whom the subordinate data will be replaced.
    # The value provided must be the exact match for an Employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The new JSON-formatted EmployeeWorkAssignmentManager with which to replace the deleted ones 
    # + return - The Employee's Work Assignment Managers are replaced within the given date range; no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/EmployeeWorkAssignmentManagers/Replacement(EmployeeWorkAssignmentManager payload, map<string|string[]> headers = {}, *EmployeeWorkAssigmentManagerReplaceByWorkAssignmentManagerXRefCodeReplaceFromReplaceToIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/EmployeeWorkAssignmentManagers/Replacement`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET WorkAssignment Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Work Assignments of employee with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments(map<string|string[]> headers = {}, *EmployeeWorkAssignmentGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeWorkAssignment|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/WorkAssignments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a WorkAssignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - An EmployeeWorkAssignment is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments(EmployeeWorkAssignment payload, map<string|string[]> headers = {}, *EmployeeWorkAssignmentPostByWorkAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/WorkAssignments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a Work Assignment
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The Work Assignment is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments(EmployeeWorkAssignment payload, map<string|string[]> headers = {}, *EmployeeWorkAssignmentPatchByWorkAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/WorkAssignments`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Replace WorkAssignments
    #
    # + xRefCode - The unique identifier (external reference code) of the Employee for whom the subordinate data will be replaced.
    # The value provided must be the exact match for an Employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The new JSON-formatted WorkAssignment with which to replace the deleted ones 
    # + return - The Employee's Work Assignments are replaced within the given date range; no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/WorkAssignments/Replacement(EmployeeWorkAssignment payload, map<string|string[]> headers = {}, *EmployeeWorkAssignmentReplaceByWorkAssignmentXRefCodeReplaceFromReplaceToIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/WorkAssignments/Replacement`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List of work location overrides.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Work location overrides 
    resource isolated function get [string clientNamespace]/V1/Payroll/WorkLocationOverride(map<string|string[]> headers = {}, *EmployeeWorkLocationOverrideGetByWorkLocationOverrideXRefCodesLocationAddressStateCodesLegalEntityXRefCodeLegalEntityOverrideDetailsPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeeWorkLocationOverride|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/WorkLocationOverride`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Employee Elections
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - OK response 
    resource isolated function post [string clientNamespace]/v1/Payroll/WorkLocationOverrides(EmployeeWorkLocationOverride[] payload, map<string|string[]> headers = {}, *EmployeeWorkLocationOverridePostByWorkLocationOverridesIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeWorkLocationOverride|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/Payroll/WorkLocationOverrides`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Employee Elections
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/v1/Payroll/WorkLocationOverrides(EmployeeWorkLocationOverride[] payload, map<string|string[]> headers = {}, *EmployeeWorkLocationOverridePatchByWorkLocationOverridesIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeWorkLocationOverride|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/Payroll/WorkLocationOverrides`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET a List of EmploymentStatus XRefCodes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of EmploymentStatus XRefCodes 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatuses(map<string|string[]> headers = {}) returns PayloadIEnumerableEmploymentStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmploymentStatuses`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a EmploymentStatus with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmploymentStatus with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatuses/[string xrefCode](map<string|string[]> headers = {}) returns PayloadEmploymentStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmploymentStatuses/${getEncodedUri(xrefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a List of EmploymentStatusReason XRefCodes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of EmploymentStatusReason XRefCodes 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatusReasons(map<string|string[]> headers = {}) returns PayloadIEnumerableEmploymentStatusReason|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmploymentStatusReasons`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a EmploymentStatusReason with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The EmploymentStatusReason with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/EmploymentStatusReasons/[string xrefCode](map<string|string[]> headers = {}) returns PayloadEmploymentStatusReason|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/EmploymentStatusReasons/${getEncodedUri(xrefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST e-signature order status.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Returns a HTTP OK response indicating the acceptance of e-signature order status 
    resource isolated function post [string clientNamespace]/V1/ESignatureOrder(record {}[] payload, map<string|string[]> headers = {}) returns xml|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ESignatureOrder`;
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET The list of regional property.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The ExtensibleProperty with the requested TypeCode,EntityType,CountryCode,EntityXrefCode 
    resource isolated function get [string clientNamespace]/V1/ExtensibleProperty/[string typeCode]/[string entityType]/[string countryCode]/[string entityXRefCode](map<string|string[]> headers = {}, *ExtensiblePropertyGetByTypeCodeEntityTypeCountryCodeEntityXRefCodeElementXRefCodeActiveAllClientNamespaceQueries queries) returns PayloadIEnumerableExtensibleProperty|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ExtensibleProperty/${getEncodedUri(typeCode)}/${getEncodedUri(entityType)}/${getEncodedUri(countryCode)}/${getEncodedUri(entityXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Extensible Property
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The ExtensibleProperty with the requested TypeCode,EntityType,CountryCode,EntityXrefCode 
    resource isolated function post [string clientNamespace]/V1/ExtensibleProperty/[string typeCode]/[string entityType]/[string countryCode]/[string entityXRefCode](ExtensibleProperty[] payload, map<string|string[]> headers = {}, *ExtensiblePropertyPostByExtensiblePropertyModelTypeCodeEntityTypeCountryCodeEntityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns ExtensibleProperty[]|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ExtensibleProperty/${getEncodedUri(typeCode)}/${getEncodedUri(entityType)}/${getEncodedUri(countryCode)}/${getEncodedUri(entityXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The ExtensibleProperty with the requested EntityXrefCode 
    resource isolated function post [string clientNamespace]/V1/ExtensibleProperty/Remove/[string typeCode]/[string entityType]/[string countryCode]/[string entityXRefCode](map<string|string[]> headers = {}, *ExtensiblePropertyDeleteByTypeCodeEntityTypeCountryCodeEntityXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns ExtensibleProperty|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ExtensibleProperty/Remove/${getEncodedUri(typeCode)}/${getEncodedUri(entityType)}/${getEncodedUri(countryCode)}/${getEncodedUri(entityXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # POST Global Pay Run/s Details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A Global Pay Run is created with an empty response body 
    resource isolated function post [string clientNamespace]/V1/GLOBALPayRunImport(map<string|string[]> headers = {}, *GlobalPayRunPostByIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/GLOBALPayRunImport`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) an I-9 order
    #
    # + i9OrderId - The unique identifier for the I-9 order on the I-9 partner's system. The value of this parameter needs to match the value for the I9OrderId property in the request body
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - Details about the I-9 order to update 
    # + return - The I-9 order is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/I9Orders/[string i9OrderId](I9Order payload, map<string|string[]> headers = {}, *I9OrdersPatchByI9OrderI9OrderIdIsValidateOnlyClientNamespaceQueries queries) returns xml|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/I9Orders/${getEncodedUri(i9OrderId)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET Job Feeds
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of all active external job postings (i.e. public facing job postings) based on specified filter parameters 
    resource isolated function get [string clientNamespace]/V1/JobFeeds(map<string|string[]> headers = {}, *JobFeedsGetByCompanyNameParentCompanyNameInternalJobBoardCodeIncludeActivePostingOnlyLastUpdateTimeFromLastUpdateTimeToDatePostedFromDatePostedToHtmlDescriptionClientNamespaceQueries queries) returns JobFeed[]|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/JobFeeds`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a List of Jobs
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Job XRefCodes meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/Jobs(map<string|string[]> headers = {}, *JobsGetByContextDateClientNamespaceQueries queries) returns PayloadIEnumerableJob|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Jobs`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Add) a Job
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH (job update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A Job is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Jobs(Job payload, map<string|string[]> headers = {}, *JobsPostByJobIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Jobs`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET a List of Jobs
    #
    # + xrefCode - The unique identifier (external reference code) of the job to be retrieved.  The value provided must be the exact match for a job; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The Job with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Jobs/[string xrefCode](map<string|string[]> headers = {}) returns PayloadJob|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Jobs/${getEncodedUri(xrefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # PATCH (Update) a Job
    #
    # + xRefCode - The unique identifier (external reference code) of the job to be retrieved.  The value provided must be the exact match for a job; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH (job update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A Job is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Jobs/[string xRefCode](Job payload, map<string|string[]> headers = {}, *JobsPatchByJobXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Jobs/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get KPI Data matching search criteria
    # (if neither Zone or MDSE supplied the data is assumed to be organization-wide)
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - KPI Data which matches the supplied parameters 
    resource isolated function get [string clientNamespace]/V1/KpiData(map<string|string[]> headers = {}, *KpiDataGetByOrgUnitXRefCodeKpiXRefCodeKpiDataTypeTimePeriodFilterFromFilterToAxisXRefCodeMdseXRefCodeClientNamespaceQueries queries) returns PayloadIEnumerableKpiData|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/KpiData`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Post KPI Data for the supplied parameters
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The KPI Data has been created 
    resource isolated function post [string clientNamespace]/V1/KpiData(KpiData[] payload, map<string|string[]> headers = {}, *KpiDataPostByOrgUnitXRefCodeKpiXRefCodeKpiDataTypeTimePeriodModelsAggregateToDayIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/KpiData`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Patch KPI Data for the supplied parameters
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The KPI Data has been updated 
    resource isolated function patch [string clientNamespace]/V1/KpiData(KpiData[] payload, map<string|string[]> headers = {}, *KpiDataPatchByOrgUnitXRefCodeKpiXRefCodeKpiDataTypeTimePeriodModelsAggregateToDayIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/KpiData`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get KPI Target Patterns matching search criteria
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - KPI Target Pattern details which matches the supplied parameters 
    resource isolated function get [string clientNamespace]/V1/KpiTargetPattern(map<string|string[]> headers = {}, *KpiTargetPatternGetByOrgUnitXRefCodeKpiXRefCodeStartDateEndDateZoneXRefCodeClientNamespaceQueries queries) returns PayloadIEnumerableKpiTargetPattern|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/KpiTargetPattern`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Post KPI Target Pattern for the supplied parameters
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed 
    resource isolated function post [string clientNamespace]/V1/KpiTargetPattern(KpiTargetPatternPOST[] payload, map<string|string[]> headers = {}, *KpiTargetPatternPostByOrgUnitXRefCodeKpiXRefCodeKpiTargetPatternApiModelIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/KpiTargetPattern`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Patch KPI Target Pattern for the supplied parameters
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed 
    resource isolated function patch [string clientNamespace]/V1/KpiTargetPattern(KpiTargetPatternPOST[] payload, map<string|string[]> headers = {}, *KpiTargetPatternPatchByOrgUnitXRefCodeKpiXRefCodeKpiTargetPatternApiModelIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/KpiTargetPattern`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Labor cost result in the segment of 15 minutes 
    resource isolated function get [string clientNamespace]/V1/LaborCosts(map<string|string[]> headers = {}, *LaborCostsGetLaborCostEstimateByBusinessDateLocationXRefCodeWorkedLocationXRefCodePayCategoryXRefCodeClientNamespaceQueries queries) returns PayloadLaborCostResult|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborCosts`;
        map<Encoding> queryParamEncoding = {"payCategoryXRefCode": {style: FORM, explode: true}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get Labor Demand Curve details for Org over period
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Labor demand details which matches the supplied OrgXrefCode and SchedulePeriod 
    resource isolated function get [string clientNamespace]/V1/LaborDemands(map<string|string[]> headers = {}, *LaborDemandsGetByOrgUnitXRefCodeSchedulePeriodStartFilterFromFilterToZoneXRefCodeActivityXRefCodeLaborMeasureXRefCodeAxisXRefCodeClientNamespaceQueries queries) returns PayloadLaborDemand|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborDemands`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Create a set of labor demands for an organization in the defined SchedulePeriod
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload -
    # + return - The Labor Demands have been created 
    resource isolated function post [string clientNamespace]/V1/LaborDemands(LaborDemand payload, map<string|string[]> headers = {}, *LaborDemandsPostByModelIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborDemands`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Deletes Labor Demand Curve details for Org over period
    # Optional will only delete demands matching filters
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Labor demand details for the supplied OrgXrefCode and SchedulePeriod have been deleted 
    resource isolated function delete [string clientNamespace]/V1/LaborDemands(map<string|string[]> headers = {}, *LaborDemandsDeleteByOrgUnitXRefCodeSchedulePeriodStartFilterFromFilterToZoneXRefCodeActivityXRefCodeLaborMeasureXRefCodeAxisXRefCodeClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborDemands`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # Update a set of labor demands for an organization in the defined SchedulePeriod
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload -
    # + return - Created 
    resource isolated function patch [string clientNamespace]/V1/LaborDemands(LaborDemand payload, map<string|string[]> headers = {}, *LaborDemandsPatchByModelDayToPatchZoneXRefCodeActivityXRefCodeLaborMeasureXRefCodeAxisXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns record {}|json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborDemands`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get Labor Metric details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Labor metric details which matches the XRefCode 
    resource isolated function get [string clientNamespace]/V1/LaborMetrics/[string xRefCode](map<string|string[]> headers = {}) returns PayloadLaborMetricCodes|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborMetrics/${getEncodedUri(xRefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Post Insert Labor metrics codes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - New Labor metrics code data is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/LaborMetrics(LaborMetricsCodesForSubmit payload, map<string|string[]> headers = {}, *LaborMetricsPostByLaborMetricsCodeDataIsValidateOnlyClientNamespaceQueries queries) returns LaborMetricsCodePostPatchResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborMetrics`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Patch (Update) a Labor metrics code
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - Labor metrics code data is updated 
    resource isolated function patch [string clientNamespace]/V1/LaborMetrics(LaborMetricsCodesForSubmit payload, map<string|string[]> headers = {}, *LaborMetricsPatchByLaborMetricsCodeDataIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborMetrics`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get Labor Metric Type details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Labor metric type details which matches the XRefCode 
    resource isolated function get [string clientNamespace]/V1/LaborMetricTypes/[string xRefCode](map<string|string[]> headers = {}) returns PayloadLaborMetricType|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborMetricTypes/${getEncodedUri(xRefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Labor Metric Type details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - New Labor Metric Type is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/LaborMetricTypes(LaborMetricTypeForSubmit payload, map<string|string[]> headers = {}, *LaborMetricTypesPostLaborMetricTypeByLaborMetricTypeDataIsValidateOnlyClientNamespaceQueries queries) returns LaborMetricTypePatchPostResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborMetricTypes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Patch (Update) Labor Metric Type
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - Labor Metric Type data is updated 
    resource isolated function patch [string clientNamespace]/V1/LaborMetricTypes(LaborMetricTypeForSubmit payload, map<string|string[]> headers = {}, *LaborMetricTypesLaborMetricTypeByLaborMetricTypeDataLaborMetricTypeXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborMetricTypes`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Search results for Labor Validation Policy rules based on parameters 
    resource isolated function post [string clientNamespace]/V1/LaborValidationPolicy/Search(LaborValidationFilters payload, map<string|string[]> headers = {}, *LaborValidationPolicySearchLaborValidationPolicyByLaborValidationFilterParamsPageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableLaborValidationRule|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborValidationPolicy/Search`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Get Labor Validation Policy Rule Details
    #
    # + laborValidationPolicyRuleXRefCode -
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Labor Validation Policy rules  which matches the XRefCode 
    resource isolated function get [string clientNamespace]/V1/LaborValidationPolicy/Rule/[string laborValidationPolicyRuleXRefCode](map<string|string[]> headers = {}) returns PayloadIEnumerableLaborValidationRule|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborValidationPolicy/Rule/${getEncodedUri(laborValidationPolicyRuleXRefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Delete labor validation policy rules based on xrefcode 
    resource isolated function delete [string clientNamespace]/V1/LaborValidationPolicy/Rule/[string laborValidationPolicyRuleXRefCode](map<string|string[]> headers = {}) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborValidationPolicy/Rule/${getEncodedUri(laborValidationPolicyRuleXRefCode)}`;
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Post Validation Policy Rule 
    resource isolated function patch [string clientNamespace]/V1/LaborValidationPolicy/Rule/[string laborValidationPolicyRuleXRefCode](LaborValidationRule payload, map<string|string[]> headers = {}, *LaborValidationPolicyUpdateLaborValidationPolicyByLaborValidationRuleLaborValidationPolicyRuleXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns PayloadBoolean|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborValidationPolicy/Rule/${getEncodedUri(laborValidationPolicyRuleXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Post Validation Policy Rule 
    resource isolated function post [string clientNamespace]/V1/LaborValidationPolicy/Rule(LaborValidationRule payload, map<string|string[]> headers = {}) returns PayloadBoolean|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LaborValidationPolicy/Rule`;
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Get Legacy Labor Metric data
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Legacy labor metric details which matches the Type and XRefCode 
    resource isolated function get [string clientNamespace]/V1/LegacyLaborMetric(map<string|string[]> headers = {}, *LegacyLaborMetricGetLegacyLaborMetricByLegacyLaborMetricTypeLegacyLaborMetricXRefCodeClientNamespaceQueries queries) returns PayloadLegacyLaborMetricCodes|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LegacyLaborMetric`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Post Insert Legacy Labor metrics
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - New Legacy Labor Metric data is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/LegacyLaborMetric(LegacyLaborMetricForSubmit payload, map<string|string[]> headers = {}, *LegacyLaborMetricPostByLegacyLaborMetricDataIsValidateOnlyClientNamespaceQueries queries) returns LegacyLaborMetricPatchPostDeleteResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LegacyLaborMetric`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Legacy labor metric details which matches the Type and XRefCode were Deleted 
    resource isolated function delete [string clientNamespace]/V1/LegacyLaborMetric(map<string|string[]> headers = {}, *LegacyLaborMetricDeleteLegacyLaborMetricByLegacyLaborMetricTypeLegacyLaborMetricXRefCodeClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LegacyLaborMetric`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # Patch (Update) a Legacy Labor Metric
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - Legacy Labor Metric data is updated 
    resource isolated function patch [string clientNamespace]/V1/LegacyLaborMetric(LegacyLaborMetricForSubmit payload, map<string|string[]> headers = {}, *LegacyLaborMetricPatchByLegacyLaborMetricDataLegacyLaborMetricXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LegacyLaborMetric`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List of Location Addresses.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Location Addresses meeting the search criteria, if provided 
    resource isolated function get [string clientNamespace]/V1/LocationAddresses(map<string|string[]> headers = {}, *LocationAddressesGetByShortNameCountryCodeStateProvinceCodeClientNamespaceQueries queries) returns PayloadIEnumerableLocationAddresses|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LocationAddresses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Location Address.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A Location Address is created with an empty response body 
    resource isolated function post [string clientNamespace]/V1/LocationAddresses(LocationAddresses payload, map<string|string[]> headers = {}, *LocationAddressesPostByPayrollLocationAddressesIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LocationAddresses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Location Address.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (position add) and PATCH (position update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A Location Address is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/LocationAddresses(LocationAddresses payload, map<string|string[]> headers = {}, *LocationAddressesPatchByPayrollLocationAddressesXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/LocationAddresses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET MaritalStatus Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Marital Statuses of employee with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/MaritalStatuses(map<string|string[]> headers = {}, *MaritalStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeMaritalStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/MaritalStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a MaritalStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A MaritalStatus is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/MaritalStatuses(EmployeeMaritalStatus payload, map<string|string[]> headers = {}, *MaritalStatusPostByMaritalStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/MaritalStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a MaritalStatus
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The MaritalStatus is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/MaritalStatuses(EmployeeMaritalStatus payload, map<string|string[]> headers = {}, *MaritalStatusPatchByMaritalStatusXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/MaritalStatuses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Operating Hours details which matches the supplied OrgUnitXRefCode and date range 
    resource isolated function get [string clientNamespace]/V1/OperatingHours/GetOperatingHours(map<string|string[]> headers = {}, *OperatingHoursGetByStartDateEndDateOrgUnitXRefCodeClientNamespaceQueries queries) returns PayloadOperatingHours|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/OperatingHours/GetOperatingHours`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - OK 
    resource isolated function post [string clientNamespace]/V1/OperatingHours/PostOperatingHoursException(OperatingHoursExceptionPOST[] payload, map<string|string[]> headers = {}, *OperatingHoursPostOperatingHoursExceptionByOperatingHoursExceptionAPIPostPayloadIsValidateOnlyClientNamespaceQueries queries) returns record {}|json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/OperatingHours/PostOperatingHoursException`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - OK 
    resource isolated function patch [string clientNamespace]/V1/OperatingHours/PatchOperatingHoursException(OperatingHoursExceptionPOST[] payload, map<string|string[]> headers = {}, *OperatingHoursPatchOperatingHoursExceptionByOperatingHoursExceptionAPIPostPayloadIsValidateOnlyClientNamespaceQueries queries) returns record {}|json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/OperatingHours/PatchOperatingHoursException`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get a list of OrgUnits
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of OrgUnit XRefCodes meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/OrgUnits(map<string|string[]> headers = {}) returns PayloadIEnumerableLocation|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/OrgUnits`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Add) an OrgUnit
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (orgunit add) and PATCH (orgunit update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Org Unit is created, no response body 
    resource isolated function post [string clientNamespace]/V1/OrgUnits(Location payload, map<string|string[]> headers = {}, *OrgUnitsPostByOrgUnitIsValidateOnlyCalibrateOrgClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/OrgUnits`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Get OrgUnit details
    #
    # + xrefCode - The unique identifier (external reference code) of the org unit. The value provided must be the exact match for an org unit; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Org Unit with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/OrgUnits/[string xrefCode](map<string|string[]> headers = {}, *OrgUnitsGetByXrefCodeContextDateExpandIncludeChildOrgUnitsClientNamespaceQueries queries) returns PayloadLocation|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/OrgUnits/${getEncodedUri(xrefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # PATCH (Update) an OrgUnit
    #
    # + xRefCode - The unique identifier (external reference code) of the org unit. The value provided must be the exact match for an org unit; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (orgunit add) and PATCH (orgunit update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Org Unit is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/OrgUnits/[string xRefCode](Location payload, map<string|string[]> headers = {}, *OrgUnitsPatchByOrgUnitXRefCodeIsValidateOnlyReplaceExistingCalibrateOrgClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/OrgUnits/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET a List of PayClasses
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of PayClass XRefCodes meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/PayClasses(map<string|string[]> headers = {}, *PayClassesGetByContextDateClientNamespaceQueries queries) returns PayloadIEnumerablePayClass|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PayClasses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get PayClass details
    #
    # + xrefCode - The unique identifier (external reference code) of the PayClass to be retrieved.  The value provided must be the exact match for a PayClass; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The PayClass with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/PayClasses/[string xrefCode](map<string|string[]> headers = {}) returns PayloadPayClass|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PayClasses/${getEncodedUri(xrefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET List of Third Party Payees.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - List of payees 
    resource isolated function get [string clientNamespace]/V1/Payee(map<string|string[]> headers = {}, *PayeeGetByPayeeStatusPayeeXRefCodesPayeeCategoryXRefCodesPaymentMethodXRefCodesOperatingCountriesEarningPayeeDeductionPayeeSystemPayeeClientNamespaceQueries queries) returns PayloadIEnumerablePayee|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payee`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Add Third Party Payees
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - OK response 
    resource isolated function post [string clientNamespace]/V1/Payee(Payee[] payload, map<string|string[]> headers = {}, *PayeePostByPayeesIsValidateOnlyClientNamespaceQueries queries) returns PayloadListPayee|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payee`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Update Third Party Payees
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/V1/Payee(Payee[] payload, map<string|string[]> headers = {}, *PayeePatchByPayeesIsValidateOnlyClientNamespaceQueries queries) returns PayloadListPayee|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payee`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List of Pay Group Calendars.
    #
    # + payGroupXRefCode - The pay group's reference code
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Pay Group Calendar 
    resource isolated function get [string clientNamespace]/V1/PayGroupCalendar/[string payGroupXRefCode](map<string|string[]> headers = {}, *PayGroupCalendarGetByPayGroupXRefCodePayrollCommittedPayDateYearPayDatePeriodStartDatePeriodEndDatePayPeriodClientNamespaceQueries queries) returns PayloadPayGroupCalendar|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PayGroupCalendar/${getEncodedUri(payGroupXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET List of Employee Elections.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Employee Payroll Election 
    resource isolated function get [string clientNamespace]/V1/Payroll/PayrollElection(map<string|string[]> headers = {}, *PayrollElectionsGetEmployeeElectionsBySourceCodeTypeElectionStatusPayGroupXRefCodeEmployeeXRefCodesEmploymentStatusXRefCodePageSizeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableEmployeePayrollElection|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/PayrollElection`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Employee Elections
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - OK response 
    resource isolated function post [string clientNamespace]/v1/Payroll/PayrollElections(EmployeePayrollElection[] payload, map<string|string[]> headers = {}, *PayrollElectionsPostByPayrollElectionsIsValidateOnlyAutoUpdateExistingClientNamespaceQueries queries) returns PayloadIEnumerableEmployeePayrollElection|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/Payroll/PayrollElections`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Employee Elections
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/v1/Payroll/PayrollElections(EmployeePayrollElection[] payload, map<string|string[]> headers = {}, *PayrollElectionsPatchByPayrollElectionsIsValidateOnlyAutoUpdateExistingClientNamespaceQueries queries) returns PayloadIEnumerableEmployeePayrollElection|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/Payroll/PayrollElections`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # PATCH Employee Elections
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - OK response 
    resource isolated function patch [string clientNamespace]/v1/Payroll/DeletePayrollElections(EmployeePayrollElectionDeletionModel[] payload, map<string|string[]> headers = {}, *PayrollElectionsDeleteElectionsByPayrollElectionsIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableEmployeePayrollElectionDeletionModel|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/v1/Payroll/DeletePayrollElections`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # POST Import GL Result
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - GLResult Import was created successfully, no response body 
    resource isolated function post [string clientNamespace]/V1/PayrollGL/Import(record {} payload, map<string|string[]> headers = {}, *PayrollGLPostByImportDataIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PayrollGL/Import`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # POST Import Time Data
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - Time Data Import was created successfully, no response body 
    resource isolated function post [string clientNamespace]/V1/Payroll/Import/TimeData(record {} payload, map<string|string[]> headers = {}, *PayrollPayEntryTimeDataPostByImportDataIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/Import/TimeData`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # DELETE Import Time Data
    #
    # + payGroupXRefCode - The pay group reference code
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities ids for DELETE operation 
    # + return - Time Data Import was deleted successfully, no response body 
    resource isolated function patch [string clientNamespace]/V1/Payroll/TimeDataDelete/[string payGroupXRefCode](ImportSetModel payload, map<string|string[]> headers = {}, *PayrollPayEntryTimeDataDeleteByPayGroupXRefCodeImportSetModelSourcePeriodStartDatePeriodEndDatePayDatePpnOrgUnitXRefCodeOffCyclePayRunXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/TimeDataDelete/${getEncodedUri(payGroupXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET the list of Time Data Import Job History with Error info.
    #
    # + payGroupXRefCode - The pay group reference code
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Time data import jobs history 
    resource isolated function get [string clientNamespace]/V1/Payroll/PayrollPayEntryImportHistory/[string payGroupXRefCode](map<string|string[]> headers = {}, *PayrollPayEntryGetByPayGroupXRefCodeSourceImportsFromDateImportsToDateProblemsOnlyPeriodStartDatePeriodEndDatePayDatePpnOffCyclePayRunXRefCodeImportIdentifiersClientNamespaceQueries queries) returns PayloadPayrollPayEntryImportHistory|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/PayrollPayEntryImportHistory/${getEncodedUri(payGroupXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST Quick Entry Items
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation. For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - Quick Entry Import was created successfully, no response body 
    resource isolated function post [string clientNamespace]/V1/Payroll/Import/QuickEntry(record {} payload, map<string|string[]> headers = {}, *PayrollPayEntryQuickEntryPostByImportDataIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/Import/QuickEntry`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH Quick Entry Items
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Quick Entry Import was updated successfully, no response body 
    resource isolated function patch [string clientNamespace]/V1/Payroll/QuickEntry(DataEntry[] payload, map<string|string[]> headers = {}, *PayrollPayEntryQuickEntryPatchByQuickEntriesIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Payroll/QuickEntry`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List of IPS Tax Authority Instance Details.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The IPS Tax Authority Instance Details 
    resource isolated function get [string clientNamespace]/V1/TaxAuthorityInstanceDetails(map<string|string[]> headers = {}, *PayrollTaxDataGetByCountryCodesClientNamespaceQueries queries) returns PayloadIEnumerableTaxAuthorityInstanceDetails|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/TaxAuthorityInstanceDetails`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Pay Run Status.
    #
    # + payGroupXRefCode - The pay group's reference code
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The pay run status 
    resource isolated function get [string clientNamespace]/V1/PayRunStatus/[string payGroupXRefCode](map<string|string[]> headers = {}, *PayRunStatusGetByPayGroupXRefCodePayDatePeriodStartDatePeriodEndDatePpnClientNamespaceQueries queries) returns PayloadPayRunStatus|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PayRunStatus/${getEncodedUri(payGroupXRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a List of PayTypes
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - A collection of PayType XRefCodes 
    resource isolated function get [string clientNamespace]/V1/PayTypes(map<string|string[]> headers = {}) returns PayloadIEnumerablePayType|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PayTypes`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a PayType with the requested XRefCode.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The PayType with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/PayTypes/[string xrefCode](map<string|string[]> headers = {}) returns PayloadPayType|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PayTypes/${getEncodedUri(xrefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET PersonAddress Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The PersonAddress with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Addresses(map<string|string[]> headers = {}, *PersonAddressGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerablePersonAddress|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Addresses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a PersonAddress
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A PersonAddress is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Addresses(PersonAddress payload, map<string|string[]> headers = {}, *PersonAddressPostByPersonAddressXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Addresses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a PersonAddress
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The PersonAddress is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Addresses(PersonAddress payload, map<string|string[]> headers = {}, *PersonAddressPatchByPersonAddressXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Addresses`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET PersonContact Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The PersonContact with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/Contacts(map<string|string[]> headers = {}, *PersonContactGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerablePersonContact|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Contacts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a PersonContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A PersonContact is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/Contacts(PersonContact payload, map<string|string[]> headers = {}, *PersonContactPostByPersonContactXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Contacts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a PersonContact
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The PersonContact is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/Contacts(PersonContact payload, map<string|string[]> headers = {}, *PersonContactPatchByPersonContactXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/Contacts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get PlanLaborCategoryCode
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Labor Standard Category Code 
    resource isolated function get [string clientNamespace]/V1/PlanLaborCategoryCode(map<string|string[]> headers = {}) returns PayloadIEnumerablePlanLaborCategoryCode|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PlanLaborCategoryCode`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Get PlanLaborStandardDriver
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Labor Standard Drivers and DriverTypes 
    resource isolated function get [string clientNamespace]/V1/PlanLaborStandardDriver(map<string|string[]> headers = {}) returns PayloadIEnumerablePlanLaborStandardDriver|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PlanLaborStandardDriver`;
        return self.clientEp->get(resourcePath, headers);
    }

    # Get Plan Targets matching search criteria
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Plan Target details which matches the supplied parameters (or all if none supplied) 
    resource isolated function get [string clientNamespace]/V1/PlanTargets(map<string|string[]> headers = {}, *PlanTargetsGetByPlanTargetXRefCodeOrgUnitXRefCodeKpiXRefCodeZoneXRefCodeIsActiveClientNamespaceQueries queries) returns PayloadIEnumerablePlanTarget|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PlanTargets`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed 
    resource isolated function post [string clientNamespace]/V1/PlanTargets(PlanTarget payload, map<string|string[]> headers = {}, *PlanTargetsPostByPlanTargetApiModelIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PlanTargets`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Deletes a plan target matching the supplied XRefCode
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - All matching plan targets were deleted 
    resource isolated function delete [string clientNamespace]/V1/PlanTargets(map<string|string[]> headers = {}, *PlanTargetsDeleteByPlanTargetXRefCodeClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PlanTargets`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # Amend a Plan Method Target record, plus any child table
    #     entries.
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The details of the  
    # + return - If isValidateOnly was passed in as true, this shows that the validation passed 
    resource isolated function patch [string clientNamespace]/V1/PlanTargets(PlanTarget payload, map<string|string[]> headers = {}, *PlanTargetsPatchByPlanTargetApiModelPlanTargetXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/PlanTargets`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get a list of Positions
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Position XRefCodes meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/Positions(map<string|string[]> headers = {}, *PositionsGetByContextDateClientNamespaceQueries queries) returns PayloadIEnumerablePosition|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Positions`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Add) a Position
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (position add) and PATCH (position update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A Position is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Positions(Position payload, map<string|string[]> headers = {}, *PositionsPostByPositionIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Positions`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Get Position details
    #
    # + xrefCode - The unique identifier (external reference code) of the Position. The value provided must be the exact match for a Position; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The Position with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Positions/[string xrefCode](map<string|string[]> headers = {}, *PositionsGetByXrefCodeContextDateExpandClientNamespaceQueries queries) returns PayloadPosition|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Positions/${getEncodedUri(xrefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # PATCH (Update) a Position
    #
    # + xRefCode - The unique identifier (external reference code) of the position. The value provided must be the exact match for a position; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST (position add) and PATCH (position update) operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - A Position is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Positions/[string xRefCode](Position payload, map<string|string[]> headers = {}, *PositionsPatchByPositionXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Positions/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET GLSplit Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The GLSplit with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/GLSplits(map<string|string[]> headers = {}, *PRGLSplitSetGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerablePRGLSplitSet|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/GLSplits`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get a list of client projects meeting the search criteria
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of client project data meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/Projects(map<string|string[]> headers = {}, *ProjectsGetProjectsByShortNameLongNamePageSizeProjectClientXRefCodeProjectTypeXRefCodeProjectPhaseXRefCodeProductGroupXRefCodeProductModuleXRefCodeCreationOrgUnitXRefCodeLastModifedStartDateLastModifedEndDateFilterStartDateFromFilterStartDateToFilterDueDateFromFilterDueDateToFilterCompletedDateFromFilterCompletedDateToCertifiedPayrollProjectNumberParentProjectXRefCodeIsDeletedLedgerCodeClockTransferCodeAccountNumIFRSClassificationFilterProjectPriorityFromFilterProjectPriorityToFilterBudgetHoursFromFilterBudgetHoursToFilterBudgetAmountFromFilterBudgetAmountToFilterPctCompleteFromFilterPctCompleteToClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableBaseProject|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Projects`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Insert) new Projects data into Dayforce
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - New Projects data is inserted into Dayforce 
    resource isolated function post [string clientNamespace]/V1/Projects(ProjectForSubmit payload, map<string|string[]> headers = {}, *ProjectsPostByProjectDataIsValidateOnlyClientNamespaceQueries queries) returns ProjectsPostResponse|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Projects`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Patch (Update) a project
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in PATCH operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - Project data is updated 
    resource isolated function patch [string clientNamespace]/V1/Projects(ProjectForSubmit payload, map<string|string[]> headers = {}, *ProjectsPatchByProjectDataProjectXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Projects`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get project details
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Project details which matches with the XRefCode 
    resource isolated function get [string clientNamespace]/V1/Projects/[string xRefCode](map<string|string[]> headers = {}) returns PayloadProjects|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Projects/${getEncodedUri(xRefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET a List of Report Metadata
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - Metadata for all Reports 
    resource isolated function get [string clientNamespace]/V1/ReportMetadata(map<string|string[]> headers = {}) returns PayloadIEnumerableReportMetadata|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ReportMetadata`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Report Metadata for the given XRefCode
    #
    # + xRefCode - The unique identifier (external reference code) of the report to be retrieved.  The value provided must be the exact match for an report; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The Metadata for the Report matching the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/ReportMetadata/[string xRefCode](map<string|string[]> headers = {}) returns PayloadIEnumerableReportMetadata|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/ReportMetadata/${getEncodedUri(xRefCode)}`;
        return self.clientEp->get(resourcePath, headers);
    }

    # GET Report
    #
    # + xRefCode - The unique identifier (external reference code) of the report to be retrieved.  The value provided must be the exact match for an report; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - report that match the given request 
    resource isolated function get [string clientNamespace]/V1/Reports/[string xRefCode](map<string|string[]> headers = {}, *ReportsGetReportAsyncByXRefCodePageSizeClientNamespaceQueries queries) returns PaginatedPayloadReport|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Reports/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get List of Unfilled Shift Bids for Employee
    #
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A Collection of Open Shift Bids 
    resource isolated function get [string clientNamespace]/V1/Employees/[string employeeXRefCode]/UnfilledShiftBids(map<string|string[]> headers = {}, *ShiftBiddingGetByOrgUnitXRefCodeEmployeeXRefCodeScheduleStartDateScheduleEndDateClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeSchedule|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(employeeXRefCode)}/UnfilledShiftBids`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Employee Shift Bids. Employee Request or Revoke Shift Bid Request.
    #
    # + employeeXRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Specifies an employee bid request/revocation was successful 
    resource isolated function post [string clientNamespace]/V1/Employees/[string employeeXRefCode]/UnfilledShiftBids(EmployeeShiftBidDTO payload, map<string|string[]> headers = {}, *ShiftBiddingPostByOrgUnitXRefCodeEmployeeXRefCodeEmployeeShiftBidDTOIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableProcessResult|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(employeeXRefCode)}/UnfilledShiftBids`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Get List of Shift Bids
    #
    # + orgUnitXRefCode - The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A Collection of Shift Bids 
    resource isolated function get [string clientNamespace]/V1/Organization/[string orgUnitXRefCode]/UnfilledShiftBids(map<string|string[]> headers = {}, *ShiftBiddingGetByOrgUnitXRefCodeScheduleStartDateScheduleEndDateActiveBidsClientNamespaceQueries queries) returns PayloadIEnumerableManagerShiftBid|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Organization/${getEncodedUri(orgUnitXRefCode)}/UnfilledShiftBids`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # Manager assignment of shift to an employee who has bid for a specific group schedule.
    # Notifies awarded bidder.
    # Notifies rejected bidder.
    #
    # + orgUnitXRefCode - The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Assigns shift bid to bidding employee 
    resource isolated function post [string clientNamespace]/V1/Organization/[string orgUnitXRefCode]/UnfilledShiftBid(ManagerAssignShiftBidDTO[] payload, map<string|string[]> headers = {}, *ShiftBiddingPostByOrgUnitXRefCodeBodyIsValidateOnlyViolationLevelClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeSchedule|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Organization/${getEncodedUri(orgUnitXRefCode)}/UnfilledShiftBid`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET the list of all skills
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of skills 
    resource isolated function get [string clientNamespace]/V1/Skills(map<string|string[]> headers = {}, *SkillGetByPageSizeXRefCodeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableSkill|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Skills`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST one skill
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The skill payload used for skill creation 
    # + return - The skill created 
    resource isolated function post [string clientNamespace]/V1/Skills(Skill payload, map<string|string[]> headers = {}, *SkillPostBySkillIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableSkill|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Skills`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH one skill
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The skill payload used for skill modification 
    # + return - The skill updated 
    resource isolated function patch [string clientNamespace]/V1/Skills(Skill payload, map<string|string[]> headers = {}, *SkillPatchBySkillXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableSkill|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Skills`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET List of Employee Time Away From Work
    #
    # + xRefCode - The unique identifier (external reference code) of the employee to be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of employee time away from work meeting the search criteria 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/TimeAwayFromWork(map<string|string[]> headers = {}, *TimeOffGetByXRefCodeFilterTAFWStartDateFilterTAFWEndDateStatusClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeTimeAwayFromWork|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/TimeAwayFromWork`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST (Create) Employee Time Away From Work
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Time Away From Work is created 
    resource isolated function post [string clientNamespace]/V1/TimeOff(EmployeeTimeAwayFromWorkForSubmit payload, map<string|string[]> headers = {}, *TimeOffPostByTimeOffIsValidateOnlyClientNamespaceQueries queries) returns PayloadEmployeeTimeAwayFromWorkForSubmit|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/TimeOff`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH (Update) Employee Time Away From Work
    #
    # + xRefCode - The unique identifier (external reference code) of the time away from work to be retrieved. The value provided must be the exact match for a time away from work; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST operation.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An Employee Time Away From Work is updated 
    resource isolated function patch [string clientNamespace]/V1/TimeOff/[string xRefCode](EmployeeTimeAwayFromWorkForSubmit payload, map<string|string[]> headers = {}, *TimeOffPatchByTimeOffXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeTimeAwayFromWorkForSubmit|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/TimeOff/${getEncodedUri(xRefCode)}`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Get a list of or one Training Program detail
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - A collection of Training Program 
    resource isolated function get [string clientNamespace]/V1/TrainingPrograms(map<string|string[]> headers = {}, *TrainingProgramGetByPageSizeXRefCodeClientNamespaceQueries queries) returns PaginatedPayloadIEnumerableTrainingProgram|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/TrainingPrograms`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST one training program
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The training program payload that will be used for training program creation 
    # + return - A training program is created, no response body 
    resource isolated function post [string clientNamespace]/V1/TrainingPrograms(TrainingProgram payload, map<string|string[]> headers = {}, *TrainingProgramPostByTrainingProgramIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/TrainingPrograms`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH one training program
    #
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The training program payload that will be used for training program creation 
    # + return - A training program is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/TrainingPrograms(TrainingProgram payload, map<string|string[]> headers = {}, *TrainingProgramPatchByTrainingProgramXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/TrainingPrograms`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - OK 
    resource isolated function post [string clientNamespace]/V1/TransmissionService(map<string|string[]> headers = {}) returns record {}|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/TransmissionService`;
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # GET UserPayAdjCodeGroup Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + return - The UserPayAdjCodeGroup with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/UserPayAdjustCodeGroups(map<string|string[]> headers = {}) returns PayloadIEnumerableUserPayAdjustCodeGroup|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UserPayAdjustCodeGroups`;
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a UserPayAdjCodeGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The UserPayAdjCodeGroup is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/UserPayAdjustCodeGroups(UserPayAdjustCodeGroup payload, map<string|string[]> headers = {}, *UserPayAdjustCodeGroupPostByUserPayAdjCodeGroupXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UserPayAdjustCodeGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a UserPayAdjCodeGroup
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The UserPayAdjCodeGroup is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/UserPayAdjustCodeGroups(UserPayAdjustCodeGroup payload, map<string|string[]> headers = {}, *UserPayAdjustCodeGroupPatchByUserPayAdjCodeGroupXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/UserPayAdjustCodeGroups`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # GET EmployeeWorkContract Details
    #
    # + xRefCode - The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - The EmployeeWorkContract with the requested XRefCode 
    resource isolated function get [string clientNamespace]/V1/Employees/[string xRefCode]/WorkContracts(map<string|string[]> headers = {}, *WorkContractGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries queries) returns PayloadIEnumerableEmployeeWorkContract|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/WorkContracts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        return self.clientEp->get(resourcePath, headers);
    }

    # POST a EmployeeWorkContract
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - An EmployeeWorkContract is created, no response body 
    resource isolated function post [string clientNamespace]/V1/Employees/[string xRefCode]/WorkContracts(EmployeeWorkContract payload, map<string|string[]> headers = {}, *WorkContractPostByEmployeeWorkContractXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/WorkContracts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # PATCH a EmployeeWorkContract
    #
    # + xRefCode - The unique identifier (external reference code) of the employee for whom the subordinate data will be updated.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    # + clientNamespace - Uniquely identifies the client's Dayforce instance. Is needed to login
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + payload - The JSON-formatted content containing the data entities and elements to be processed in POST and PATCH operations.  For more information and examples, please refer to the Dayforce Web Services RESTful Developer's Guide 
    # + return - The EmployeeWorkContract is updated, no response body 
    resource isolated function patch [string clientNamespace]/V1/Employees/[string xRefCode]/WorkContracts(EmployeeWorkContract payload, map<string|string[]> headers = {}, *WorkContractPatchByEmployeeWorkContractXRefCodeIsValidateOnlyClientNamespaceQueries queries) returns json|error {
        string resourcePath = string `/${getEncodedUri(clientNamespace)}/V1/Employees/${getEncodedUri(xRefCode)}/WorkContracts`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        json jsonBody = jsondata:toJson(payload);
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }
}
