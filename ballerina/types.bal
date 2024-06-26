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

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:CredentialsConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

public type BackgroundScreeningPackageArr BackgroundScreeningPackage[];

public type BackgroundScreeningBillingCodeArr BackgroundScreeningBillingCode[];

public type BackgroundScreeningStatusUrlReportArr BackgroundScreeningStatusUrlReport[];

public type BackgroundScreeningReportArr BackgroundScreeningReport[];

public type ExtensiblePropertyArr ExtensibleProperty[];

public type JobFeedArr JobFeed[];

public type LaborMetricsCode record {
    LaborMetricsType LaborMetricsType?;
    string ClockTransferCode?;
    string LedgerCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BackgroundScreeningPackage record {
    string ProviderReference?;
    BackgroundScreeningProviderPackage[] Packages?;
};

public type EmployeeMUSTaxDetails record {
    string LastModifiedTimestamp?;
};

public type EmployeeUSStateTax record {
    string EffectiveStart?;
    string EffectiveEnd?;
    State State?;
    StateFilingStatus FilingStatus?;
    string StateFilingStatusDisplayName?;
    int:Signed32 Allowances?;
    decimal AdditionalAmount?;
    int:Signed32 DependentAllowances?;
    int:Signed32 PersonalAllowances?;
    int:Signed32 AdditionalAllowances?;
    boolean IsTaxExempt?;
    string AlternateCalculationCode?;
    string AlternateCalculationCodeDisplayName?;
    decimal ExemptionAmount?;
    decimal AdditionalTaxPercent?;
    decimal AdditionalExemptionAmount?;
    boolean IsLocked?;
    boolean PRYoungEntrepreneurExemptionOptOut?;
    int:Signed32 AdoptionDependents?;
    string LastModifiedTimestamp?;
};

public type PaginatedPayload_EarningStatementHeader record {
    EarningStatementHeader Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type CandidateRTWRejectionReason record {
    string ReasonCode?;
    string ReasonDescription?;
};

public type LMSEmployeeCertification record {
    string EffectiveStart?;
    string EffectiveEnd?;
    LMSCertification LMSCertification?;
    string CertificationNumber?;
    Course Course?;
    TrainingProgram TrainingProgram?;
    LMSAssignmentMethod LMSAssignmentMethod?;
    LMSCertificationStatus LMSCertificationStatus?;
    string LastModifiedTimestamp?;
};

public type Payload_PayClass record {
    PayClass Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeNZLKiwiSaver record {
};

public type GlobalProperty record {
    int:Signed32 DataType?;
    int:Signed32 EmployeeCardinality?;
    boolean IsEditable?;
    string DataTypeParam?;
    boolean GenerateHREvent?;
    int:Signed32 Sequence?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeLaborMetrics record {
    string LaborMetricsTypeXRefCode?;
    string LaborMetricsTypeName?;
    string LaborMetricsCodeXRefCode?;
    string LaborMetricsCodeName?;
};

public type BackgroundScreeningAssociatedPackage record {
    string PackageId?;
    string Name?;
    string Description?;
    boolean IncludeRTW?;
};

public type EmployeeEarningLimitCollection record {
    EmployeeEarningLimit[] Items?;
};

public type Docket record {
    string LedgerCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeHRIncidentNoteCollection record {
    EmployeeHRIncidentNote[] Items?;
};

public type PayGrade record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeDocumentManagementSecurityGroup record {
    EmployeeDocumentManagementSecurityGroup[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Associations record {
    int:Signed32 _Total?;
    AssociationDetails[] Values?;
};

public type PayrollPayeeCategory record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EarningStatementHeader record {
    string EarningStatementHeaders?;
};

public type Payload_IEnumerable_EmployeeSkill record {
    EmployeeSkill[] Data?;
    ProcessResult[] ProcessResults?;
};

public type TimeZone record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeScheduleLaborMetricPostAPIRequestDTO record {
    string CodeXRefCode;
    string TypeXRefCode;
};

public type Employee record {
    string AvatarUri?;
    string BadgeNumber?;
    boolean BioExempt?;
    string BirthDate?;
    string BirthCountry?;
    string BirthState?;
    string BirthCity?;
    string ChecksumTimestamp?;
    boolean ClockSupervisor?;
    string COBRANotificationSentDate?;
    int:Signed32 COBRANotificationStatus?;
    Culture Culture?;
    string DateOfDeath?;
    string EligibleForRehire?;
    string EmployeePin?;
    string EntitlementOverrideDate?;
    string EstimatedReturnDate?;
    string ExportDate?;
    string FederatedId?;
    string Gender?;
    string HireDate?;
    string HomePhone?;
    string IsAboriginal?;
    string IsVisibleMinority?;
    boolean EligibleForOnDemandPay?;
    boolean EligibleForDFWalletPayCard?;
    string EmployeeLatestUpdatedTimestamp?;
    string LastPayrollNewHireExportDate?;
    string Nationality?;
    string NewHireApprovalDate?;
    boolean NewHireApproved?;
    string NewHireApprovedBy?;
    string OriginalHireDate?;
    boolean PhotoExempt?;
    string PPACAOverrideDate?;
    string RegisteredDisabled?;
    boolean RequiresExitInterview?;
    string SeniorityDate?;
    string SocialSecurityNumber?;
    string SSNCountryCode?;
    string SSNExpiryDate?;
    string StartDate?;
    boolean TaxExempt?;
    string TaxpayerId?;
    string TerminationDate?;
    string VeteranSeparationDate?;
    int:Signed32 FirstTimeAccessEmailSentCount?;
    int:Signed32 FirstTimeAccessVerificationAttempts?;
    boolean SendFirstTimeAccessEmail?;
    EmployeeBadge EmployeeBadge?;
    EmployeeBadgeCollection Badges?;
    string PreStartDate?;
    string PayrollKey?;
    string LoginId?;
    Location HomeOrganization?;
    string EmployeeNumber?;
    EmployeeEmploymentStatusCollection EmploymentStatuses?;
    EmployeeWorkAssignmentCollection WorkAssignments?;
    PersonContactCollection Contacts?;
    PersonAddressCollection Addresses?;
    EmployeeRoleCollection Roles?;
    EmployeeManagerCollection EmployeeManagers?;
    EmployeeWorkAssignmentManagerCollection EmployeeWorkAssignmentManagers?;
    EmployeeCompensationCollection CompensationSummary?;
    AppUserSSOCollection SSOAccounts?;
    EmployeeMaritalStatusCollection MaritalStatuses?;
    EmployeeLocationCollection Locations?;
    BioSensitivityLevel BioSensitivityLevel?;
    CitizenshipType CitizenshipType?;
    SchoolYear SchoolYear?;
    EmployeeHealthWellnessCollection HealthWellnessDetails?;
    EmployeeCourseCollection Courses?;
    EmployeeVolunteerListCollection VolunteerLists?;
    EmployeeHRIncidentCollection HRIncidents?;
    EmployeeSkillCollection Skills?;
    EmployeeTrainingProgramCollection TrainingPrograms?;
    EmployeeUnionCollection UnionMemberships?;
    EmployeeEmploymentTypeCollection EmploymentTypes?;
    HighlyCompensatedEmployeeCollection HighlyCompensatedEmployees?;
    EmployeePayGradeRateCollection PayGradeRates?;
    EmployeeDirectDepositCollection DirectDeposits?;
    EmployeeIRLTaxPAYEExclusionCollection IRLTaxPAYEExclusionInfo?;
    EmployeeIRLTaxPRSICollection IRLTaxPRSIInfo?;
    EmployeeIRLTaxRPNCollection IRLTaxRPNInfo?;
    EmployeeIRLTaxEWSSCollection IRLTaxEWSSInfo?;
    EmployeeCANFederalTaxCollection CANFederalTaxes?;
    EmployeeCANStateTaxCollection CANStateTaxes?;
    EmployeeUSFederalTaxCollection USFederalTaxes?;
    EmployeeMUSTaxDetailsCollection MUSTaxes?;
    EmployeeAUSFederalTaxCollection AUSFederalTaxes?;
    EmployeePayrollTaxCollection EmployeePayrollTaxes?;
    EmployeePayrollTaxParameterCollection EmployeePayrollTaxParameters?;
    EmployeeUSStateTaxCollection USStateTaxes?;
    EmergencyContactCollection EmergencyContacts?;
    EmployeeEthnicityCollection Ethnicities?;
    EmployeeDisabilityCollection Disabilities?;
    EmployeeVeteransStatusCollection VeteranStatuses?;
    PRGLSplitSetCollection GLSplits?;
    EmployeePropertyValueCollection EmployeeProperties?;
    EmployeeGlobalPropertyValueCollection GlobalProperties?;
    EmployeeDefaultLaborCollection LaborDefaults?;
    DocMgmtSecurityGroupUserMapCollection DocumentManagementSecurityGroups?;
    EmployeeClockDeviceGroupCollection ClockDeviceGroups?;
    EmployeePayAdjCodeGroupListCollection EmployeePayAdjustCodeGroups?;
    UserPayAdjCodeGroupCollection UserPayAdjustCodeGroups?;
    EmployeeWorkContractCollection WorkContracts?;
    EmployeePerformanceRatingCollection PerformanceRatings?;
    EmployeeEIRateCollection EIRates?;
    EmployeeUSTaxStatusCollection USTaxStatuses?;
    EmployeeCANTaxStatusCollection CANTaxStatuses?;
    EmployeeOrgUnitInfoCollection OrgUnitInfos?;
    EmployeeWorkAssignmentManagerCollection ManagedEmployees?;
    EmployeeConfidentialIdentificationCollection ConfidentialIdentification?;
    LMSEmployeeCertificationCollection EmployeeCertifications?;
    EmployeeEmploymentAgreementCollection EmploymentAgreements?;
    EmployeeHRPolicyCollection HRPolicies?;
    UserEmployeeAuthorityTypeAssignmentCollection AuthorizationAssignments?;
    GenderIdentity GenderIdentity?;
    EmployeeAssignedSexAndGenderIdentityCollection EmployeeAssignedSexAndGenderIdentities?;
    EmployeeOnboardingPolicyCollection OnboardingPolicies?;
    PayPeriodInformationCollection PayPeriodInformation?;
    EmployeeEarningsCollection EarningElections?;
    EmployeeDeductionsCollection DeductionElections?;
    EmployeeManagerCollection LastActiveManagers?;
    EmployeeDependentsBeneficiariesCollection DependentsBeneficiaries?;
    EmployeeUKTaxDetailsCollection UKTaxDetails?;
    EmployeeUKStudentLoanCollection UKStudentLoan?;
    EmployeeUKPostgraduateLoanCollection UKPostgraduateLoan?;
    EmployeeUKIrregularPaymentDetailsCollection EmployeeUKIrregularPaymentDetails?;
    string ContinuousEmploymentStartDate?;
    string LSLEligibilityDate?;
    EmployeeUKNIDetailsCollection UKNIDetails?;
    AppUser UserAccount?;
    LastNamePrefix LastNamePrefix?;
    LastNamePrefix LastNamePrefixAtBirth?;
    NameAffix NameAffix?;
    NameAffix NameAffixAtBirth?;
    string ProfessionalTitle?;
    EmployeeAUSSuperannuationCollection AUSSuperannuation?;
    EmployeeAUSSuperannuationRulesCollection AUSSuperannuationRules?;
    string TerminationNoticeDate?;
    string RetirementRequestDate?;
    EmployeeShortTimeWorkCollection EmployeeShortTimeWork?;
    EmployeeDEUTaxSocialInsuranceCollection DEUTaxSocialInsurance?;
    DEUEmployeeAccidentInsuranceCollection DEUEmployeeAccidentInsurance?;
    DEUEmployeeWageTaxCollection DEUEmployeeWageTax?;
    EmployeeNZLKiwiSaver[] NZLKiwiSaver?;
    boolean UnknownBirthDate?;
    string XRefCode?;
    string NewXRefCode?;
    string CommonName?;
    string DisplayName?;
    string FirstName?;
    string LastName?;
    string Initials?;
    string MaidenName?;
    string MiddleName?;
    string PreferredLastName?;
    string SecondLastName?;
    string Suffix?;
    string Title?;
    string PreviousLastName?;
    string LastModifiedTimestamp?;
};

public type BusinessUnit record {
    string BusinessUnitGlobalId?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LedgerCode?;
    BusinessUnitParentAssignment[] BusinessUnitParents?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type JobSOC record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeBalanceTransactionPatchResponse record {
    string EmployeeBalanceTransactionXRefCode?;
};

public type Payload_IEnumerable_EmployeeDefaultLabor record {
    EmployeeDefaultLabor[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeEmploymentTypeCollection record {
    EmployeeEmploymentType[] Items?;
};

public type EmployeeUKIrregularPaymentDetailsCollection record {
    EmployeeUKIrregularPaymentDetails[] Items?;
};

public type EmployeeHighlyCompensatedEmployeeIndicator record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IsHCE?;
    string LastModifiedTimestamp?;
};

public type JobPostingResponseModel record {
    string JobId?;
    string JobTitle?;
    string JobCompany?;
    string JobLocation?;
    string JobUrl?;
    string JobMeta?;
    string JobRequisitionId?;
};

public type EmployeeIRLTaxPRSICollection record {
    EmployeeIRLTaxPRSI[] Items?;
};

public type EmployeeManagerCollection record {
    EmployeeManager[] Items?;
};

public type PayrollElection record {
    boolean IsNew?;
    string ElectionXrefCode?;
    string Code?;
    string Type?;
    string TypeCode?;
    string EarningDeductionXRefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string CreatedDate?;
    string LastModifiedTimestamp?;
    string Source?;
    string Schedule?;
    string ScheduleXRefCode?;
    boolean IsBlocked?;
    int:Signed32 IsOptOut?;
    string OrgUnitXRefCode?;
    string DeptJobXRefCode?;
    string SourceTypeXRefCode?;
    string PayeePayableTo?;
    string DefaultPayee?;
    string DefaultPayeeXRefCode?;
    string PensionTracingNumber?;
    boolean IsCreatedByBenefits?;
    boolean ContinuePaymentOnStatutoryPay?;
    decimal ArrearMultipleLimitOption?;
    PayrollEmployeeDeductionParameter[] EmployeeDeductionParams?;
    PayrollEmployeeEarningParameter[] EmployeeEarningParams?;
    PayrollEmployeeDeductionLimit[] EmployeeDeductionLimits?;
    PayrollEmployeeEarningLimit[] EmployeeEarningLimits?;
    PRPayeeEarning[] EmployeePayeeEarnings?;
    PRPayeeDeduction[] EmployeePayeeDeductions?;
    EmployeeDeductionPayeeParameter[] EmployeeDeductionPayeeParameters?;
    EmployeeEarningPayeeParameter[] EmployeeEarningPayeeParameters?;
    string ExternalXrefCode?;
};

public type EmployeeGLSplitSetDetailLaborMetricCodes record {
    string LaborMetricsTypeXRefCode?;
    string LaborMetricsTypeName?;
    string LaborMetricsCodeXRefCode?;
    string LaborMetricsCodeName?;
};

public type DeductionType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LaborCostTotalResult record {
    decimal LaborCost?;
    decimal LaborHours?;
};

public type SafetyHealthType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BackgroundScreeningProviderStatuses record {
    string ProviderReference?;
    string[] OrderStatuses?;
    string[] AdjudicationStatuses?;
    string[] ResultStatuses?;
};

public type EmployeeEarningParameter record {
    EarningParameter EarningParameter?;
    decimal Value?;
    decimal PayGroupValue?;
    string LastModifiedTimestamp?;
};

public type WithholdingVariationAmountType record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type ScheduleChangePolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmploymentAgreementDuration record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AppUserSSOCollection record {
    EmployeeSSOAccount[] Items?;
};

public type EmployeeVeteransStatus record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IsVevraa?;
    DFVeteransStatus VeteransStatus?;
    string LastModifiedTimestamp?;
};

public type TipTypeGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmploymentTypeConfig record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_PayClass record {
    PayClass[] Data?;
    ProcessResult[] ProcessResults?;
};

public type FileDetails record {
    string ContentType?;
    string Data?;
    string FileName?;
};

public type EmployeeWorkAssignmentManagerCollection record {
    EmployeeWorkAssignmentManager[] Items?;
};

public type CandidateApplicationStatusUpdatesPaginationModel record {
    string HasUnretrievedStatuses?;
    CandidateApplicationStatusUpdatesModel[] ApplicationStatusUpdates?;
};

public type EarningCountry record {
    string TaxComplianceName?;
    string TaxComplianceXRefCode?;
    string EarningTypeName?;
    string EarningTypeXRefCode?;
    string CountryCode?;
    string CountryName?;
};

public type PRGLSplitSetCollection record {
    PRGLSplitSet[] Items?;
};

public type AuthorizationAssignment record {
    AuthorityType AuthorityType?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string AuthorizedPersonnelFirstName?;
    string AuthorizedPersonnelLastName?;
    string AuthorizedPersonnelMiddleName?;
    string AuthorizedPersonnelXrefCode?;
    string LastModifiedTimestamp?;
};

public type EmployeeDeductionLimit record {
    DeductionLimit DeductionLimit?;
    decimal LimitAmount?;
    decimal LimitPercent?;
    decimal PayGroupLimitAmount?;
    decimal PayGroupLimitPercent?;
    string LastModifiedTimestamp?;
};

public type Awards record {
    int:Signed32 _Total?;
    AwardDetails[] Values?;
};

public type Payload_List_EarningStatementDocument record {
    EarningStatementDocument[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EarningPayeeEarningLimit record {
    decimal LimitAmount?;
    decimal LimitPercent?;
    string LimitTypeXRefCode?;
    string LimitTypeName?;
    string EarningLimitXRefCode?;
};

public type WorkContract record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeAUSSuperannuationRulesCollection record {
    EmployeeAUSSuperannuationRules[] Items?;
};

public type MealBreaks record {
    string PunchXRefCode?;
    string Type?;
    string TimeStart?;
    string TimeEnd?;
    string TimeStartRaw?;
    string TimeEndRaw?;
    decimal NetHours?;
    string StartExceptionCode?;
    string EndExceptionCode?;
    boolean IsAutoInjected?;
    string LastModifiedTimestampUtc?;
};

public type CarrierFeeds record {
    BenefitsDFLinkExportCarrierInfo Header?;
    BenefitsDFLinkExportRecord[] EmployeeRecords?;
};

public type DeductionCountry record {
    string TaxComplianceName?;
    string TaxComplianceXRefCode?;
    string TaxTypeName?;
    string TaxTypeCode?;
    string CountryCode?;
    string CountryName?;
};

public type Payload_IEnumerable_EmployeeShortTimeWork record {
    EmployeeShortTimeWork[] Data?;
    ProcessResult[] ProcessResults?;
};

public type HRIncidentType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeBalanceTransactionPostResponse record {
    string EmployeeBalanceTransactionXRefCode?;
};

public type Validation record {
    string[] Warnings?;
    string[] Errors?;
};

public type PRGLSplitSetDetail record {
    decimal LaborPercentage?;
    boolean IsPrimary?;
    PRGLSplitSetDetailMetricCodeCollection PRGLSplitSetDetailMetricCodes?;
    string LastModifiedTimestamp?;
};

public type DataEntryDeleteModel record {
    int DataEntryXRefCode?;
};

public type ProcessResult record {
    string Code?;
    string Context?;
    string Level?;
    string Message?;
};

public type Payload_Object record {
    record {} Data?;
    ProcessResult[] ProcessResults?;
};

public type PaginatedPayload_IEnumerable_Course record {
    Course[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type PaginatedPayload_IEnumerable_PolicyAssociation record {
    PolicyAssociation[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type BenefitsDFLinkExportCarrierInfo record {
    string RecordType?;
    string FileFormatMajorVersion?;
    string FileFormatMinorVersion?;
    string CTCReceiverId?;
    string CarrierName?;
    string CarrierFEINNumber?;
    string MasterPolicyNumber?;
    string EmployerName?;
    string EmployerFEINNumber?;
    string EmployerDivisionNumber?;
    string PlanStartDate?;
    string CreateDate?;
    string ClientId?;
    string CorrelationId?;
};

public type Payload_IEnumerable_EmployeeDirectDeposit record {
    EmployeeDirectDeposit[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeUSTaxStatus record {
    string StateCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    TaxPropertyCollection TaxPropertyCollection?;
    string LastModifiedTimestamp?;
};

public type State record {
    string Name?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PayGroupCalendarDetails record {
    string PeriodStartDate?;
    string PeriodEndDate?;
    string TimeCollectionStartDate?;
    string TimeCollectionEndDate?;
    string OffsetPayPeriodStartDate?;
    string OffsetPayPeriodEndDate?;
    string ApproveByDate?;
    string TransmitByDate?;
    string CommitByDate?;
    boolean PayrollCommitted?;
    string DataGateOpen?;
    string DataGateClose?;
    string ImpoundBy?;
    string PayDate?;
    string ContractPayDate?;
    string LedgerCode1?;
    string LedgerCode2?;
    decimal GLAccrualPercent?;
    string PayPeriod?;
    string PayPeriodSuffix?;
    boolean Locked?;
    string LockDate?;
    int:Signed32 LockedBy?;
    string AutoLockDate?;
    string SupervisorDate?;
    boolean Transmitted?;
    string TransmittedDate?;
    int:Signed32 TransmittedBy?;
    boolean Approved?;
    string ApprovedDate?;
    int:Signed32 ApprovedBy?;
    boolean Closed?;
    string ClosedDate?;
    int:Signed32 ClosedBy?;
    boolean ChecklistClosed?;
    string ChecklistClosedDate?;
    int:Signed32 ChecklistClosedBy?;
    string ArrearsStart?;
    string ArrearsEnd?;
    boolean FuturePunchesEnabled?;
};

public type DocMgmtFileProcessedResponse record {
    int:Signed32 Index?;
    string DocumentGUID?;
    string UploadStatus?;
    string Message?;
};

public type EmployeeUKPostgraduateLoanCollection record {
    EmployeeUKPostgraduateLoan[] Items?;
};

public type EmployeePerformanceRating record {
    string Comments?;
    string NextReviewDate?;
    PerformanceCycle PerformanceCycle?;
    PFRatingScale PerformanceRatingScale?;
    PerformanceRating PerformanceRating?;
    decimal RatingScore?;
    string ReviewDate?;
    BaseEmployeeSubset Reviewer?;
    string ReviewPeriodStartDate?;
    string ReviewPeriodEndDate?;
    string LastModifiedTimestamp?;
};

public type CertificationDetails record {
    string Title?;
    string StartDateMonth?;
    string StartDateYear?;
    string EndDateMonth?;
    string EndDateYear?;
    boolean EndCurrent?;
    string Description?;
};

public type PayPeriodInformationCollection record {
    PayPeriodInformation[] Items?;
};

public type Payload_IEnumerable_ExtensibleProperty record {
    ExtensibleProperty[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayrollEmployeeEarningLimit record {
    string LimitTypeCodeName?;
    decimal LimitAmount?;
    decimal LimitPercent?;
    string ShortNameFormattedAmount?;
    string ShortNameFormattedPercent?;
    decimal PayGroupDefaultLimitAmount?;
    decimal PayGroupDefaultLimitPercent?;
    string PREarningLimitXRefCode?;
    string LastModifiedTimestamp?;
};

public type JobFunction record {
    int:Signed32 Level?;
    boolean UsableForExternalPosting?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BenefitsDFLinkExportContact record {
    string RecordType?;
    string ContactInformation?;
    string CountryCode?;
    int:Signed32 ContactInformationCategoryCode?;
    string ContactInformationType?;
};

public type PersonAddressCollection record {
    PersonAddress[] Items?;
};

public type PatentDetails record {
    string PatentNumber?;
    string Title?;
    string Url?;
    string DateMonth?;
    string DateYear?;
    string Description?;
};

public type Payload_IEnumerable_PRGLSplitSet record {
    PRGLSplitSet[] Data?;
    ProcessResult[] ProcessResults?;
};

public type SubordinateEntityReferences record {
    string[] EntityReferences?;
};

public type PayAdjCode record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeCANTaxStatus record {
    string ProvinceCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    TaxPropertyCollection TaxPropertyCollection?;
    string LastModifiedTimestamp?;
};

public type TrainingProgramCourse record {
    Course Course?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type EmployeePayAdjustment record {
    string EmployeePayAdjustXRefCode?;
    string AdjustPeriodStartDate?;
    string AdjustPeriodEndDate?;
    string EmployeeXRefCode?;
    string DepartmentXRefCode?;
    string JobXRefCode?;
    string PayAdjustmentCodeXRefCode?;
    string PayCategoryXRefCode?;
    string PayDate?;
    string OrgUnitXRefCode?;
    boolean IsPremium?;
    boolean IsDeleted?;
    string TimeStart?;
    string TimeEnd?;
    decimal Hours?;
    decimal Rate?;
    decimal Amount?;
    string ReferenceDate?;
    string ProjectXRefCode?;
    string DocketXRefCode?;
    string EmployeeComment?;
    string ManagerComment?;
    boolean EmployeeAuthorized?;
    boolean ManagerAuthorized?;
    EmployeePayAdjustmentLaborMetrics[] LaborMetrics?;
    string LastModifiedTimestampUtc?;
};

public type Payload_IEnumerable_TaxAuthorityInstanceDetails record {
    TaxAuthorityInstanceDetails[] Data?;
    ProcessResult[] ProcessResults?;
};

# This class encapsulates the report data generated during the execution of the report.
public type Report record {
    # Reference Code for the Report.
    # This is a unique, human readable, code used to identify the Report.
    string XRefCode?;
    # An array of Dictionary objects which contain the report data. 
    # Each dictionary object represents a row: the key is column name and the values is the column value for the row.
    record {|string...;|}[] Rows?;
};

public type KpiTargetPattern record {
    string KpiXRefCode?;
    string OrgUnitXRefCode?;
    string ZoneXRefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    int:Signed32 PatternOffset?;
    int:Signed32 PatternLength?;
    KpiTargetPatternDetail[] Pattern?;
};

public type DeductionDefinition record {
    boolean SystemDeduction?;
    boolean Active?;
    boolean AllowArrears?;
    boolean WorkersComp?;
    DeductionCountry[] Countries?;
    DeductionPayee[] Payees?;
    string Name?;
    string Description?;
    string DisplayName?;
    string XRefCode?;
    boolean AllowPayee?;
    string SourceTypeName?;
    string SourceTypeXRefCode?;
    string PayeeCategoryName?;
    string PayeeCategoryXRefCode?;
};

public type SchoolYear record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PRGLSplitSetDetailMetricCode record {
    LaborMetricsCode LaborMetricsCode?;
    string LastModifiedTimestamp?;
};

public type EmployeeCANStateTax record {
    string EffectiveStart?;
    string EffectiveEnd?;
    State State?;
    decimal TotalClaimAmount?;
    decimal PrescribedAreaDeduction?;
    decimal MaintenanceDeduction?;
    decimal AuthorizedTaxCredits?;
    decimal QuebecDevelopmentFunds?;
    decimal EstimatedExpense?;
    decimal EstimatedRemuneration?;
    decimal AdditionalAmount?;
    decimal LabourSponsoredFunds?;
    boolean HasQuebecHealthContributionExemption?;
    boolean IncomeLessThanClaim?;
    string LastModifiedTimestamp?;
};

public type PersonContactCollection record {
    PersonContact[] Items?;
};

public type Payload_IEnumerable_Object record {
    record {}[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeDirectDeposit record {
    string AccountNumber?;
    string BankName?;
    string BankNumber?;
    string BuildingSocietyNumber?;
    int:Signed32 DepositNumber?;
    decimal DepositValue?;
    string EffectiveStart?;
    string EffectiveEnd?;
    PayMethod PayMethod?;
    boolean IsDeleted?;
    boolean IsPercentage?;
    boolean IsRemainder?;
    boolean IsSpecialDisbursementAccount?;
    boolean IsMultiSourceAccount?;
    int:Signed32 NumberOfPreNoteDays?;
    string PrenoteFileRunPayDate?;
    string PrenoteFileSentOn?;
    boolean RequiresPreNote?;
    string RoutingTransitNumber?;
    string PayCardType?;
    FinancialInstitution FinancialInstitution?;
    string AccountHolder?;
    string LastModifiedTimestamp?;
};

public type ApplicantDetails record {
    string FullName?;
    string FirstName?;
    string LastName?;
    string Email?;
    boolean UseEmailForLogin?;
    string PhoneNumber?;
    string HomePhoneNumber?;
    string CoverLetter?;
    ApplicantResume Resume?;
    FileDetails[] AdditionalDocuments?;
};

public type EmployeeIRLTaxPAYEExclusionCollection record {
    EmployeeIRLTaxPAYEExclusion[] Items?;
};

public type EmployeeClockDeviceGroup record {
    ClockDeviceGroup ClockDeviceGroup?;
    string LastModifiedTimestamp?;
};

public type AmfEnumFrom record {
    record {} Criteria?;
    string Model?;
    string Module?;
    string AppView?;
};

public type EmployeePayrollElectionDeletionModel record {
    string EmployeeXRefCode?;
    EmployeeElectionAPIDeletionModel[] Elections?;
};

public type MetadataModelCollection record {
    MetadataModel MetadataModel?;
    string Id?;
    string Title?;
    string ShortDescription?;
    string LongDescription?;
    string MetadataId?;
    string DbTable?;
    string Name?;
    record {|string...;|} Mappings?;
    boolean IsExtended?;
    boolean IsCommon?;
    ContextLevel GeoContext?;
    string SchemaName?;
    string ApplicationMapping?;
    string DayforcePropertyName?;
};

public type Payload_IEnumerable_EmployeeVeteransStatus record {
    EmployeeVeteransStatus[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeePayrollTaxParameterCollection record {
    EmployeePayrollTaxParameter[] Items?;
};

public type EmployeeExportParams record {
    string PayGroupXRefCode?;
    string EmployeeXRefCode?;
    string EmployeeNumber?;
    string Expand?;
    int:Signed32 PageSize?;
    string ContextDate?;
    string ContextDateRangeFrom?;
    string ContextDateRangeTo?;
    string ContextDateOption?;
    string DeltaOption?;
    string DeltaDate?;
    string AmfEntity?;
    string AmfLevel?;
    string AmfLevelValue?;
    boolean ExportAllEmployeeDetailOnDelta?;
    int:Signed32 ExcludeTerminatedEmployeesOlderThanXDays?;
};

public type Payload_IEnumerable_EmployeeBalanceTransactions record {
    EmployeeBalanceTransactions[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayeeHealthCareProvider record {
    string EffectiveFrom?;
    string EffectiveTo?;
    int:Signed32 HealthInsuranceType?;
    int:Signed32 HealthCareBusinessNumber?;
    int:Signed32 HealthCareSuccessorBusinessNumber?;
    decimal AdditionalContributionPercentage?;
    decimal U1Percentage?;
    decimal U2Percentage?;
    int:Signed32 DataCollectionPoint?;
    int:Signed32 ForwardingOffice?;
    int:Signed32 InstitutionCode?;
};

public type EmployeeGlobalPropertyValueCollection record {
    EmployeeGlobalPropertyValue[] Items?;
};

public type EmployeeEmploymentStatusCollection record {
    EmployeeEmploymentStatus[] Items?;
};

public type EmployeeWorkPatternCollection record {
    EmployeeWorkPattern[] Items?;
};

public type StateFilingStatus record {
    string CountryCode?;
    string StateCode?;
    string StateFilingStatusCode?;
    string CalculationCode?;
    string PayrollOutput?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeGLSplitSetDetails record {
    decimal LaborPercentage?;
    boolean IsPrimary?;
    EmployeeGLSplitSetDetailLaborMetricCodes[] EmployeeGLSplitSetDetailLaborMetricCodeDetails?;
};

public type PaginatedPayload_Report record {
    # This class encapsulates the report data generated during the execution of the report.
    Report Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeeEthnicityCollection record {
    EmployeeEthnicity[] Items?;
};

public type PayeeAddress record {
    string AddressLine3?;
    string AddressLine1?;
    string AddressLine2?;
    string City?;
    string StateProvinceCode?;
    string StateProvinceName?;
    string CountryCode?;
    string CountryName?;
    string PostalCode?;
};

public type PunchLaborMetric record {
    string TypeXRefCode?;
    string CodeXRefCode?;
    string TypeClockTransferCode?;
    string CodeClockTransferCode?;
};

public type EmployeeGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LaborMetrics record {
    string LaborMetricsTypeXRefCode?;
    string LaborMetricsCodeXRefCode?;
};

public type PayrollPayEntryImportHistoryErrorDetails record {
    int:Signed32 LineNumber?;
    string LineContent?;
    string ErrorMessage?;
};

public type DEUEmployeeAccidentInsuranceHazardCategoryCollection record {
    AccidentInsuranceHazardCategory[] Items?;
};

public type CandidateProfileSource record {
    string ShortName?;
    string CandidateProfileSourceAdditionalInfo?;
};

public type EmployeeShiftBidDTO record {
    string GroupXRefCode;
    string BidState;
};

public type Payload_IEnumerable_EmployeePayrollTaxParameter record {
    EmployeePayrollTaxParameter[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeePaySummaryRetro record {
    boolean IsRetro?;
    string EmployeeXRefCode?;
    string PositionXRefCode?;
    string DepartmentXRefCode?;
    string JobXRefCode?;
    string PayCodeXRefCode?;
    string PayCategoryXRefCode?;
    string PayDate?;
    string BusinessDate?;
    string TimeStart?;
    string TimeEnd?;
    string PunchSegmentStart?;
    string LocationXRefCode?;
    decimal NetHours?;
    int:Signed32 MinuteDuration?;
    decimal Rate?;
    decimal PayAmount?;
    boolean IsPremium?;
    string ProjectXRefCode?;
    string DocketXRefCode?;
    decimal PieceQuantity?;
    int PayExportId?;
    string LaborMetricsCode0XRefCode?;
    string LaborMetricsCode1XRefCode?;
    string LaborMetricsCode2XRefCode?;
    string LaborMetricsCode3XRefCode?;
    string LaborMetricsCode4XRefCode?;
    string LaborMetricsCode5XRefCode?;
    string LaborMetricsCode6XRefCode?;
    string LaborMetricsCode7XRefCode?;
    string LaborMetricsCode8XRefCode?;
    string LaborMetricsCode9XRefCode?;
};

public type EmployeeDependentsBeneficiariesAddress record {
    string County?;
    ContactInformationType ContactInformationType?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string Address1?;
    string Address2?;
    string Address3?;
    string Address4?;
    string Address5?;
    string Address6?;
    string City?;
    string PostalCode?;
    Country Country?;
    State State?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeUKIrregularPaymentDetails record {
    EmployeeUKIrregularPaymentDetails[] Data?;
    ProcessResult[] ProcessResults?;
};

public type ClientPayrollCountryUpdate record {
    string CountryCode?;
    string DefaultTimeZoneXRefCode?;
    boolean HCMPayrollCountry?;
    boolean ConnectedPayCountry?;
};

public type EmployeeScheduleSegmentAPIRequestDTO record {
    string TimeStart;
    string TimeEnd;
    string PositionXRefCode;
    string DocketXRefCode?;
    string PayAdjCodeXRefCode?;
    string OrgLocationTypeXRefCode?;
    string ProjectXRefCode?;
    string Comment?;
    EmployeeScheduleLaborMetricPostAPIRequestDTO[] LaborMetrics?;
};

public type CourseType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BackgroundScreeningStatus record {
    string ScreeningRequestId?;
    string ScreeningStatus?;
    string ScreeningResult?;
};

public type EmployeeWorkAssignmentCollection record {
    EmployeeWorkAssignment[] Items?;
};

public type BackgroundScreeningStatusUrlReport record {
    string ScreeningRequestId?;
    string Url?;
    BackgroundScreeningReportScreeningStatus ScreeningStatus?;
    CandidatePersonalIdentifiableInformation CandidatePII?;
    CandidateScreeningDetailedResult[] DetailedResults?;
    CandidateRightToWorkResult CandidateRightToWorkResults?;
};

public type ManagerShiftBid record {
    string GroupXRefCode?;
    int QualifyingBids?;
    BidderInfo[] BiddingEmployees?;
    string[] EmployeeScheduleXRefCodes?;
    EmployeeSchedule EmployeeSchedule?;
};

public type EmployeeManager record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string ManagerXRefCode?;
    string ManagerFirstName?;
    string ManagerMiddleName?;
    string ManagerLastName?;
    string ManagerBadgeNumber?;
    int:Signed32 DerivationMethod?;
    string LastModifiedTimestamp?;
};

public type LaborValidationModel record {
    string CodeName?;
    record {} XRefCode?;
};

public type EmployeeSSOAccount record {
    string LoginName?;
    string LastModifiedTimestamp?;
};

public type Positions record {
    int:Signed32 _Total?;
    PositionDetails[] Values?;
};

public type QuestionOptionModel record {
    string value?;
    string label?;
};

public type JobClassificationGlobal record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type DEUEmployeeWageTaxCollection record {
    DEUEmployeeWageTax[] Items?;
};

public type EmployeeAUSFederalTax record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean STSLDebt?;
    boolean ClaimTaxFreeThreshold?;
    decimal AmountClaimedforTaxOffset?;
    boolean MedicareLevyReductionClaimed?;
    boolean Spouse?;
    boolean CombineWeeklyTotalIncomelessthanTableA?;
    int:Signed32 NumberofDependentChildren?;
    boolean SeniorAndPensionersTaxOffset?;
    string PayBasis?;
    boolean ClaimingZoneOverseasorCarerOffset?;
    boolean ApplyMedicareForWorkingHolidayMaker?;
    decimal WithholdingVariationAmount?;
    boolean DoesWithholdingVariationIncludeSTSLDebt?;
    boolean IsUpwardVariation?;
    TFNExemptionReason TFNExemptionReason?;
    PRTaxResidentCode ResidentCode?;
    MedicareLevyExemptionType MedicareLevyExemptionType?;
    WithholdingVariationType WithholdingVariationType?;
    WithholdingVariationAmountType WithholdingVariationAmountType?;
    PREarningAccumulator EarningGroup?;
    AdditionalTaxType AdditionalTaxType?;
    decimal FlatComissionerInstalmentRate?;
    boolean IsContractorSuperLiabilityOnly?;
    string LastModifiedTimestamp?;
};

public type MilitaryServiceDetails record {
    string ServiceCountry?;
    string Branch?;
    string Rank?;
    string StartDateMonth?;
    string StartDateYear?;
    string EndDateMonth?;
    string EndDateYear?;
    boolean EndCurrent?;
    string Commendations?;
    string Description?;
};

public type EmployeeWorkContract record {
    decimal AverageNumOfDays?;
    decimal BaseHours?;
    decimal BaseComplementaryHours?;
    decimal ContractWorkPercent?;
    boolean CreateShiftOnHolidays?;
    string EndDate?;
    decimal FullTimeHours?;
    string StartDate?;
    WorkContract WorkContract?;
    int:Signed32 WorkPatternLengthDays?;
    EmployeeWorkPatternCollection WorkPatterns?;
    string LastModifiedTimestamp?;
};

public type EmployeeDeduction record {
    Deduction Deduction?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string ElectionStartPayPeriodStartDate?;
    PayGroup ElectionStartPayGroup?;
    ElectionSchedule ElectionSchedule?;
    boolean IsBlocked?;
    Position Position?;
    Location Location?;
    boolean ContinuePaymentOnStatutoryPay?;
    int:Signed32 IsOptOut?;
    EmployeeDeductionParameterCollection EmployeeDeductionParameters?;
    EmployeeDeductionLimitCollection EmployeeDeductionLimits?;
    string LastModifiedTimestamp?;
};

public type LaborValidationMetricFilterXRefCodes record {
    LaborValidationModel[] Criteria?;
};

public type PerformanceCycle record {
    string CycleStartDate?;
    string CycleEndDate?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PayFrequency record {
    string PayFrequencyType?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BenefitsDFLinkExportEarningGroupingResults record {
    string RecordType?;
    string LegalEntityReferenceCode?;
    string EarningGroupingReferenceCode?;
    decimal CurrentHours?;
    decimal MTDHours?;
    decimal QTDHours?;
    decimal YTDHours?;
};

public type LimitAccessType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeePropertyOption record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_PersonContact record {
    PersonContact[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_LaborDemand record {
    LaborDemand Data?;
    ProcessResult[] ProcessResults?;
};

public type JobSetLevel record {
    JobSet JobSet?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmergencyContactPersonContactCollection record {
    EmergencyContactPersonContact[] Items?;
};

public type EmployeeRoleCollection record {
    EmployeeRole[] Items?;
};

public type BenefitsDFLinkExportProperty record {
    string RecordType?;
    string PropertyTypeCode?;
    string PropertyValue?;
    int:Signed32 PropertyValueTypeCode?;
    string EffectiveStartDate?;
    string EffectiveEndDate?;
};

public type PaginatedPayload_IEnumerable_BaseProject record {
    BaseProject[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeeDeductionsCollection record {
    EmployeeDeduction[] Items?;
};

public type EmployeeLegalEntity record {
    decimal NormalWeeklyHours?;
    WorkLocationAddress WorkLocationAddress?;
    string OriginalHireDate?;
    decimal BaseSalary?;
    decimal HourlyRate?;
    string EmploymentStatus?;
    string EmploymentType?;
    string JobAssignment?;
    string HireDate?;
    string TerminationDate?;
    string PayFrequency?;
    string PayType?;
    string LastPayrollPayDate?;
    string LegalEntityName?;
    string FEIN?;
    LegalEntityAddress LegalEntityAddress?;
};

public type Payload_IEnumerable_EmployeePerformanceRating record {
    EmployeePerformanceRating[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayGroupCalendar record {
    string PayGroupXRefCode?;
    string PayGroupName?;
    string Frequency?;
    string PayrollFrequency?;
    string DayStartOfWeek?;
    string Country?;
    string CollectionFrequency?;
    PayGroupCalendarDetails[] Calendar?;
};

public type Payload_IEnumerable_EmployeeUSFederalTax record {
    EmployeeUSFederalTax[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeSchedule record {
    EmployeeSchedule[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PaginatedPayload_IEnumerable_Employee record {
    Employee[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type HRIncidentAction record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AmfEntity record {
    int:Signed32 Id?;
    string EffectiveStart?;
    string EffectiveEnd?;
};

public type Payload_IEnumerable_EmployeeEmploymentAgreement record {
    EmployeeEmploymentAgreement[] Data?;
    ProcessResult[] ProcessResults?;
};

public type LMSAssignmentMethod record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeLocation record {
    EmployeeLocation[] Data?;
    ProcessResult[] ProcessResults?;
};

public type AnalyticsDatasetMetadata record {
    # Dataset Id.
    string DatasetId?;
    string Status?;
    # Row count in the dataset.
    string RowCount?;
    # Report Id.
    int:Signed32 ReportId?;
    # RefreshStatus.
    string RefreshStatus?;
    # Report Filters
    string Filters?;
    # Report Parameters
    string Parameters?;
    # Created Date of report
    string CreatedDate?;
    # Last modified timestamp of report
    string LastModifiedTimestamp?;
    # Started refresh Timestamp
    string StartedTimestamp?;
    # Ended refresh Timestamp
    string EndedTimestamp?;
    # Difference between report row counts
    int:Signed32 DifferenceCount?;
    # Total number of pages for given dataset
    int:Signed32 TotalPages?;
};

# This class encapsulates the report data generated during the execution of the report.
public type ReportColumnMetadata record {
    # CodeName is a unique name that can be used with code
    # to refer to this specific column.  Its value should be consistent.
    string CodeName?;
    # This is a name as defined by a user when developing this report.  This name
    # would be a human facing name that would be used on a printed report.
    # This field is used as the key to the values dictionary
    string DisplayName?;
    # This is a string representation of the data type.
    string DataType?;
};

public type EmployeeAUSSuperannuationRules record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean ApplyQuarterlyMaxBaseCapForEmployerSuperannuation?;
    boolean OverrideMinBaseForEmployerSuperannuation?;
    decimal MinimumContributionAmount?;
    string LastModifiedTimestamp?;
};

public type OrgLocationType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BenefitsDFLinkExportEmployeeElectionDetail record {
    string RecordType?;
    int:Signed32 ElectionId?;
    string PlanTypeCode?;
    string PlanSubTypeCode?;
    string PlanXrefCode?;
    string PlanCode?;
    string PolicyNumber?;
    string OptionCode?;
    string CoverageStartDate?;
    string CoverageEndDate?;
    string EffectiveStartDate?;
    string EffectiveEndDate?;
    decimal EmployeePerPayCost?;
    string EmployeeDeductionScheduleCode?;
    decimal EmployeeAnnualCost?;
    decimal EmployerPerPayCost?;
    string EmployerDeductionScheduleCode?;
    decimal EmployerAnnualCost?;
    decimal CarrierPerPayCost?;
    decimal CarrierAnnualCost?;
    decimal EmployeeContributionAmount?;
    decimal EmployeeContributionPercentage?;
    decimal EmployerContributionAmount?;
    decimal EmployerContributionPercentage?;
    decimal CoverageAmount?;
    decimal CoverageMultiplier?;
    decimal RequestedCoverageAmount?;
    decimal PreAgeReducedCoverageAmount?;
    int:Signed32 EOIStatusCode?;
    string RateXrefCode?;
    string PlanStartDate?;
    string ElectionDate?;
    string PlanEndDate?;
    BenefitsDFLinkExportCareProvider[] CareProviderDetails?;
};

public type EmployeePayAdjustmentPostResponse record {
    string EmployeePayAdjustXRefCode?;
};

public type ChildLocation record {
    OrgLevel OrgLevel?;
    OrgUnitLegalEntityCollection OrgUnitLegalEntities?;
    OrgUnitParentCollection OrgUnitParents?;
    OrgUnitLocationTypeCollection OrgUnitLocationTypes?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeePayGradeRate record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string WorkAssignmentEffectiveStart?;
    string WorkAssignmentEffectiveEnd?;
    PayGrade PayGrade?;
    decimal MinimumRate?;
    decimal ControlRate?;
    decimal MaximumRate?;
    decimal RateMidPoint?;
    decimal MinimumSalary?;
    decimal ControlSalary?;
    decimal MaximumSalary?;
    decimal SalaryMidPoint?;
    string LastModifiedTimestamp?;
};

public type EmployeePayrollTaxParameterElement record {
    EmployeePayrollTaxParameterElementName Name?;
    string Value?;
    string LastModifiedTimestamp?;
};

public type PaginatedPayload_IEnumerable_EmployeePaySummaryRetro record {
    EmployeePaySummaryRetro[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type CandidateRTWDocumentDetails record {
    string Name?;
    string Value?;
};

public type Payload_IEnumerable_EmployeeIRLTaxPAYEExclusion record {
    EmployeeIRLTaxPAYEExclusion[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmploymentAgreementPopulation record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LaborDemandItem record {
    string ZoneXRefCode?;
    string LaborMeasureXRefCode?;
    string ActivityXRefCode?;
    string AxisXRefCode?;
    string Day?;
    string Time?;
    decimal Hours?;
    decimal ServiceHours?;
    decimal NonServiceHours?;
};

public type EarningPayeeParameter record {
    string PayeeParameterName?;
    string PayeeParameterXRefCode?;
    string Value?;
};

public type Payload_IEnumerable_EmployeeUKTaxDetails record {
    EmployeeUKTaxDetails[] Data?;
    ProcessResult[] ProcessResults?;
};

public type QuestionHierarchicalOptionModel record {
    string id?;
    QuestionConditionModel condition?;
    QuestionOptionModel[] options?;
};

public type LegalEntityOverride record {
    string LegalEntityName?;
    string LegalEntityXrefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string BankBranchAddressName?;
    string BankBranchAddressXRefCode?;
    string WorkSiteName?;
    string WorkSiteXRefCode?;
    string WorkSiteNumber?;
    string WorkSiteStateCode?;
    string OverrideCustomerFundingIdentiferName?;
    string OverrideCustomerFundingIdentiferXRefCode?;
};

public type Document record {
    string DocumentGUID?;
    string DocumentName?;
    DocumentType DocumentType?;
    string FileName?;
    string UploadedDate?;
    UploadedBy UploadedBy?;
};

public type EntitlementPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type ClockDeviceGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeBadge record {
    EmployeeBadge[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PaginatedPayload_IEnumerable_EmployeeGLSplits record {
    EmployeeGLSplits[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type Payload_IEnumerable_EmployeeRole record {
    EmployeeRole[] Data?;
    ProcessResult[] ProcessResults?;
};

public type WithholdingVariationType record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type Payload_IEnumerable_EmployeeSchedulePostAPIResponse record {
    EmployeeSchedulePostAPIResponse[] Data?;
    ProcessResult[] ProcessResults?;
};

public type OrgUnitParent record {
    HRConfigurationEntity ParentOrgUnit?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_CandidateApplicationStatusUpdatesPaginationModel record {
    CandidateApplicationStatusUpdatesPaginationModel Data?;
    ProcessResult[] ProcessResults?;
};

public type PropertyValue record {
    string ElementXRefCode?;
    string ElementName?;
    boolean IsElementActive?;
    string ElementDefaultValue?;
    string Value?;
    string SavedAt?;
    int:Signed32 SavedBy?;
};

public type TaxAuthorityInstanceDetails record {
    string Name?;
    string Description?;
    boolean EmployerTax?;
    boolean EmployeeTax?;
    string TaxAuthorityInstance?;
    string CountryCode?;
};

public type ElectionSchedule record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeHealthWellnessCollection record {
    EmployeeHealthWellness[] Items?;
};

public type ShiftRotation record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PRSIExemptReason record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PayHolidayGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AuthorizationPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Project record {
    string LedgerCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BaseEmployeeSubset record {
    string XRefCode?;
    string NewXRefCode?;
    string CommonName?;
    string DisplayName?;
    string FirstName?;
    string LastName?;
    string Initials?;
    string MaidenName?;
    string MiddleName?;
    string PreferredLastName?;
    string SecondLastName?;
    string Suffix?;
    string Title?;
    string PreviousLastName?;
    string LastModifiedTimestamp?;
};

public type AssignedSexComplianceCode record {
    string ComplianceCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeCANTaxStatus record {
    EmployeeCANTaxStatus[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_ClientPayrollCountry record {
    ClientPayrollCountry Data?;
    ProcessResult[] ProcessResults?;
};

public type SkillLevel record {
    int:Signed32 RankOrder?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_Payee record {
    Payee[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeAvailabilityDaysPostRequestDTO record {
    string StartTime1?;
    string EndTime1?;
    string StartTime2?;
    string EndTime2?;
    boolean IsAvailable;
};

public type Certifications record {
    int:Signed32 _Total?;
    CertificationDetails[] Values?;
};

public type MetadataModel record {
    MetadataField[] MetadataFields?;
    MetadataModel[] MetadataModels?;
    MetadataModelCollection[] MetadataModelCollections?;
    AmfValidationModel[] Validators?;
    AmfOnCUDActionModel[] OnCUDActions?;
    string[] CompositeFields?;
    boolean IsEffectiveDatedContiguous?;
    AmfRuleModel[] Rules?;
    AmfAuthorize DfAuthorize?;
    string Id?;
    string Title?;
    string ShortDescription?;
    string LongDescription?;
    string MetadataId?;
    string DbTable?;
    string Name?;
    record {|string...;|} Mappings?;
    boolean IsExtended?;
    boolean IsCommon?;
    ContextLevel GeoContext?;
    string SchemaName?;
    string ApplicationMapping?;
    string DayforcePropertyName?;
};

public type LaborMetricsCodePostPatchResponse record {
    string LaborMetricsCodePostPatchResponseXRefCode?;
};

public type LinkDetails record {
    string Url?;
};

public type EmployeeDependentBeneficiary record {
    string FirstName?;
    string MiddleName?;
    string LastName?;
    string BirthDate?;
    string SocialSecurityNumber?;
    string SSNExpiryDate?;
    string TobaccoUser?;
    string DateLastSmoked?;
    boolean IsStudent?;
    boolean IsDisabled?;
    string SocialSecurityDisabilityAwardDate?;
    string Gender?;
    boolean IsBeneficiary?;
    boolean IsDependent?;
    boolean IsActiveDependent?;
    boolean IsActiveBeneficiary?;
    RelationshipType Relationship?;
    MaritalStatus MaritalStatus?;
    EmployeeDependentsBeneficiariesAddressCollection Addresses?;
    EmployeeDependentsBeneficiariesContactCollection Contacts?;
    string LastModifiedTimestamp?;
};

public type LaborValidationFilters record {
    string LaborValidationPolicyXRefCode?;
    LaborValidationMetricFilterXRefCodes[] FilterXRefCodes?;
};

public type FinancialInstitution record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeCANStateTax record {
    EmployeeCANStateTax[] Data?;
    ProcessResult[] ProcessResults?;
};

public type TrainingProgram record {
    string TrainingProgramCode?;
    TrainingProgramCourse[] TrainingProgramCourse?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeePayrollTaxCollection record {
    EmployeePayrollTax[] Items?;
};

public type EarningDefinition record {
    boolean PayEntryRates?;
    boolean Generated?;
    boolean GrossedUp?;
    boolean EIRefund?;
    string PRPensionPaymentType?;
    string PREarningBenefitCategory?;
    string SeparateCheckName?;
    string SeparateCheckXRefCode?;
    EarningCountry[] Countries?;
    EarningPayee[] Payees?;
    string Name?;
    string Description?;
    string DisplayName?;
    string XRefCode?;
    boolean AllowPayee?;
    string SourceTypeName?;
    string SourceTypeXRefCode?;
    string PayeeCategoryName?;
    string PayeeCategoryXRefCode?;
};

public type Payload_EmployeeTimeAwayFromWorkForSubmit record {
    EmployeeTimeAwayFromWorkForSubmit Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeUKNIDetailsCollection record {
    EmployeeUKNIDetails[] Items?;
};

public type WorkLocationOverride record {
    string County?;
    string Description?;
    string LocationName?;
    LocationAddress LocationAddress?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeEmergencyContact record {
    EmployeeEmergencyContact[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeDependentsBeneficiariesContact record {
    string ContactNumber?;
    string Extension?;
    boolean IsUnlistedNumber?;
    string EffectiveStart?;
    string EffectiveEnd?;
    ContactInformationType ContactInformationType?;
    Country Country?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_Employee record {
    Employee[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_DEUEmployeeWageTax record {
    DEUEmployeeWageTax[] Data?;
    ProcessResult[] ProcessResults?;
};

public type TFNExemptionReason record {
    string PayrollShortName?;
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type Payload_AnalyticsDatasetMetadataResponse record {
    AnalyticsDatasetMetadataResponse Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeTrainingProgramCollection record {
    EmployeeTrainingProgram[] Items?;
};

public type EmployeeDocumentManagementSecurityGroup record {
    DocMgmtSecurityGroup DocMgmtSecurityGroup?;
    string LastModifiedTimestamp?;
};

public type EmployeeUKStudentLoan record {
    string EffectiveStart?;
    string EffectiveEnd?;
    int:Signed32 StudentLoanPlanType?;
    string LegalEntityXrefCode?;
    string LastModifiedTimestamp?;
};

public type OnboardingPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PRGLSplitSetDetailCollection record {
    PRGLSplitSetDetail[] Items?;
};

public type EmployeeIRLTaxPRSI record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string PRSIClassXrefCode?;
    boolean CommunityEmployment?;
    boolean PRSIExempt?;
    string PRSIExemptReasonXrefCode?;
    string LegalEntityXrefCode?;
    LegalEntity LegalEntity?;
    PRSIClass PrsiClass?;
    PRSIExemptReason PrsiExemptReason?;
    string CompanyDirector?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_LMSEmployeeCertification record {
    LMSEmployeeCertification[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmploymentStatusReason record {
    EmploymentStatusReason[] Data?;
    ProcessResult[] ProcessResults?;
};

public type HighlyCompensatedEmployeeCollection record {
    EmployeeHighlyCompensatedEmployeeIndicator[] Items?;
};

public type PayPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeIRLTaxEWSSCollection record {
    EmployeeIRLTaxEWSS[] Items?;
};

public type PositionTerm record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type HRIncidentBodyPart record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AppUser record {
    boolean AllowNativeAuthentication?;
    boolean Display24HourTime?;
    boolean IsApproved?;
    string LastModifiedTimestamp?;
};

public type MedicareLevyExemptionType record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type DataEntry record {
    int DataEntryXRefCode?;
    string EntryType?;
    string PayGroupXRefCode?;
    string Currency?;
    string PeriodStart?;
    string PeriodEnd?;
    string PPN?;
    string PayDate?;
    string EditSet?;
    string EmployeeXRefCode?;
    string EmployeeName?;
    string EmployeeNumber?;
    boolean Replace?;
    string CodeType?;
    string CodeXRefCode?;
    string CodeName?;
    string TaxAuthorityInstance?;
    decimal Hours?;
    decimal Rate?;
    decimal Amount?;
    string BusinessDate?;
    string JobAssignmentXRefCode?;
    string JobAssignmentName?;
    string WorkLocationXRefCode?;
    string WorkLocation?;
    string LegalEntityXrefCode?;
    string LegalEntityName?;
    string LegalEntityIdNumber?;
    boolean LaborPercent?;
    boolean DebitArrears?;
    string CheckTemplateXRefCode?;
    string CheckTemplateName?;
    string FLSAAdjustStartDate?;
    string FLSAAdjustEndDate?;
    string Message?;
    string ProjectXRefCode?;
    string ProjectName?;
    string DocketXRefCode?;
    string DocketName?;
    string PayPeriodNumber?;
    string OrderedAmountTypeXRefCode?;
    string OrderedAmountType?;
    decimal OrderPercent?;
    decimal LimitAmount?;
    decimal DisposableEarningAmount?;
    int:Signed32 PayPeriodsForTax?;
    boolean PayOutAccurals?;
    string WorkersCompAccountNumber?;
    string WorkersCompAccountName?;
    string WorkersCompCode?;
    boolean DoNotDisburseToPayee?;
    string ImportSet?;
    boolean ApplyROEMapping?;
    string TrailingTaxationPeriodStart?;
    string TrailingTaxationPeriodEnd?;
    EmployeeLaborMetrics[] LaborMetrics?;
    string SavedBy?;
    string SavedAt?;
    string ImportIdentifier?;
    string SourceSystem?;
    string PayrollFrequencyType?;
    string PayrollFrequencyName?;
    string OffCyclePayRunXrefCode?;
};

public type EmployeeDisabilityCollection record {
    EmployeeDisability[] Items?;
};

public type LaborDemand record {
    string OrgUnitXRefCode?;
    string SchedulePeriodStart?;
    LaborDemandItem[] LaborDemands?;
};

public type EmployeeDefaultLabor record {
    Position Position?;
    string EffectiveEnd?;
    string EffectiveStart?;
    Location Location?;
    PayAdjCode PayAdjCode?;
    Project Project?;
    Docket Docket?;
    EmployeeDefaultLaborMetricsCodeCollection EmployeeDefaultLaborMetricsCodes?;
    string LastModifiedTimestamp?;
};

public type EmployeeHRPolicy record {
    boolean SignOff?;
    string SignOffDate?;
    HRPolicy HRPolicy?;
    string LastModifiedTimestamp?;
};

public type EmployeeRole record {
    boolean IsDefault?;
    Role Role?;
    string EffectiveStart?;
    boolean IsPrestartRole?;
    string EffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeAssignedSexAndGenderIdentity record {
    EmployeeAssignedSexAndGenderIdentity[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeMUSTaxDetailsCollection record {
    EmployeeMUSTaxDetails[] Items?;
};

public type UploadedBy record {
    string DisplayName?;
    string XRefCode?;
    string LoginId?;
};

public type PaginatedPayload_IEnumerable_EmployeePunch record {
    EmployeePunch[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type ProjectsPostResponse record {
    string ProjectsPostResponseXRefCode?;
};

public type Payload_EmployeePunchPatchPostDeleteResponse record {
    EmployeePunchPatchPostDeleteResponse Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeAUSSuperannuation record {
    EmployeeAUSSuperannuation[] Data?;
    ProcessResult[] ProcessResults?;
};

public type NameAffix record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeIRLTaxRPN record {
    EmployeeIRLTaxRPN[] Data?;
    ProcessResult[] ProcessResults?;
};

public type LaborMetricCodes record {
    string Name?;
    string Description?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LaborMetricsCodeXRefCode?;
    string ClockTransferCode?;
    string LedgerCode?;
    string[] OrgXRefCodes?;
    string LaborMetricsTypeXRefCode?;
};

public type LastNamePrefix record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AmfRuleParameterModel record {
    string AccessType?;
    string DataType?;
    record {} Value?;
    string InputName?;
    AmfRuleParameterModel InnerParameter?;
};

public type ExtensibleProperty record {
    string TypeCode?;
    string EntityType?;
    string CountryCode?;
    string EntityXRefCode?;
    string EntityName?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string Comment?;
    string SavedAt?;
    int:Signed32 SavedBy?;
    PropertyValue[] PropertyValues?;
};

public type BenefitsDFLinkExportEarningGroupingCustomPeriodResults record {
    string RecordType?;
    string LegalEntityXrefCode?;
    string EarningGroupingXrefCode?;
    string CustomPeriodXrefCode?;
    decimal Hours?;
};

public type OperatingHours record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string OrgUnitXRefCode?;
    OperatingHoursItem[] OperatingHours?;
};

public type EmployeeOrgUnitInfoCollection record {
    EmployeeOrgUnitInformation[] Items?;
};

public type Payload_IEnumerable_EmployeeUSTaxStatus record {
    EmployeeUSTaxStatus[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeClockDeviceGroupCollection record {
    EmployeeClockDeviceGroup[] Items?;
};

public type EmployeeBalanceTransactionForSubmit record {
    string BalanceXRefCode?;
    string EmployeeXRefCode?;
    string TransactionDate?;
    decimal Value?;
    string Comment?;
};

public type PRPayeeDeduction record {
    string LongName?;
    string PaymentMethodCode?;
    string PayeeXRefCode?;
    string ShortName?;
    string LastModifiedTimestamp?;
};

public type EmployeeAvailability record {
    string DateOfRequest?;
    boolean UnAvailable?;
    boolean IsDefault?;
    string StartTime1?;
    string EndTime1?;
    string StartTime2?;
    string EndTime2?;
};

public type GLSplitSetUpsert record {
    string OrgUnitXRefCode?;
    string DeptJobXRefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    EmployeeGLSplitSetDetailUpsert[] GLSplitSetDetails?;
};

public type Earning record {
    CalculationType CalculationType?;
    string CreditJournalNumber?;
    string DebitJournalNumber?;
    string DisplayName?;
    EarningCode EarningCode?;
    boolean IsDecliningBalance?;
    boolean IsGenerated?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeePunch record {
    string PunchXRefCode?;
    string EmployeeXRefCode?;
    string PunchStatus?;
    string TimeStart?;
    string TimeEnd?;
    string TimeStartRaw?;
    string TimeEndRaw?;
    decimal NetHours?;
    string LocationXRefCode?;
    string PositionXRefCode?;
    string DepartmentXRefCode?;
    string JobXRefCode?;
    string DocketXRefCode?;
    decimal DocketQuantity?;
    string ProjectXRefCode?;
    string PayAdjustmentXRefCode?;
    string StartExceptionCode?;
    string EndExceptionCode?;
    string EmployeeComment?;
    string ManagerComment?;
    string BusinessDate?;
    boolean IsDeleted?;
    boolean IsOnCall?;
    boolean FuturePunch?;
    string AssumedTimeStart?;
    string AssumedTimeEnd?;
    string LastModifiedTimestampUtc?;
    MealBreaks[] MealBreaks?;
    Transfers[] Transfers?;
    LaborMetrics[] LaborMetrics?;
};

public type EarningPayeeEarningParameter record {
    string ElementParamName?;
    string ElementParamCodeName?;
    decimal Value?;
};

public type DocumentType record {
    string ShortName?;
    string Description?;
    string XRefCode?;
};

public type JobFamily record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type ProjectForSubmit record {
    string ProjectXRefCode?;
    string ShortName?;
    string[] CreationOrgUnitXRefCodes?;
    string ClockTransferCode?;
    int:Signed32 ProjectPriority?;
    string AccountNum?;
    boolean IFRSClassification?;
    string LongName?;
    string LedgerCode?;
    string CertifiedPayrollProjectNumber?;
    string ProjectClientXRefCode?;
    string ProjectTypeXRefCode?;
    string ProjectPhaseXRefCode?;
    string ProductGroupXRefCode?;
    string ProductModuleXRefCode?;
    string StartDate?;
    string DueDate?;
    decimal BudgetHours?;
    decimal BudgetAmount?;
    ProjectAssignmentType EmployeeAssignment?;
    ProjectAssignmentType DeptJobAssignment?;
    ProjectAssignmentType DepartmentAssignment?;
    string CompletedDate?;
    decimal PctComplete?;
    boolean IsDeleted?;
    ProjectAssignmentType PayCodeXRefCodeChargeToHours?;
    ProjectAssignmentType PayCodeXRefCodeChargeToAmount?;
    string ParentProjectXRefCode?;
    string TaxLocationAddressXRefCode?;
    boolean IsResidentAddressUsedForTaxation?;
    boolean IsCOEProject?;
};

public type EmployeeLocation record {
    boolean IsPrimary?;
    Location Location?;
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IsDefault?;
    EmployeeLocationAuthorityCollection EmployeeLocationAuthorities?;
    string LastModifiedTimestamp?;
};

public type CitizenshipType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BenefitsDFLinkExportOrgUnit record {
    string RecordType?;
    string OrgUnitName?;
    string OrgLevelCode?;
    string OrgUnitCode?;
    string LegalEntity?;
    string OrgUnitWorkSiteZipCode?;
    string OrgUnitLedgerCode?;
};

public type EmployeeLocationAuthorityCollection record {
    EmployeeLocationAuthority[] Items?;
};

public type Payload_IEnumerable_Job record {
    Job[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeePropertyValueCollection record {
    EmployeePropertyValue[] Items?;
};

public type EmployeeSchedulePolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeProperty record {
    int:Signed32 DataType?;
    int:Signed32 EmployeeCardinality?;
    boolean IsEditable?;
    string DataTypeParam?;
    boolean GenerateHREvent?;
    int:Signed32 Sequence?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type JobSet record {
    int:Signed32 Grade?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type ImportSetModel record {
    string ImportSetName?;
    DataEntryDeleteModel[] DataEntries?;
};

public type BackgroundScreeningReport record {
    string ScreeningRequestId?;
    CandidatePersonalIdentifiableInformation CandidatePII?;
};

public type EmployeeDeductionLimitCollection record {
    EmployeeDeductionLimit[] Items?;
};

public type Payload_AnalyticsDatasetMetadata record {
    AnalyticsDatasetMetadata Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_ProcessResult record {
    ProcessResult[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeUKStudentLoan record {
    EmployeeUKStudentLoan[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeEmploymentAgreement record {
    string EffectiveEnd?;
    string EffectiveStart?;
    string XRefCode?;
    EmploymentAgreementType EmploymentAgreementType?;
    EmploymentAgreementPopulation EmploymentAgreementPopulation?;
    EmploymentAgreementDetails EmploymentAgreementDetails?;
    EmploymentAgreementTaxRegime EmploymentAgreementTaxRegime?;
    EmploymentAgreementDuration EmploymentAgreementDuration?;
    EmploymentAgreementSettlement EmploymentAgreementSettlement?;
    string GovernmentIdentifier?;
    EmploymentStatusReason AgreementReason?;
    EmploymentStatusReason AgreementEndReason?;
    Country Country?;
    string LastModifiedTimestamp?;
};

public type SkillType record {
    boolean IsWFM?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeRawPunchForSubmit record {
    string EmployeeBadge?;
    string RawPunchTime?;
    string PunchType?;
    string PunchDevice?;
    string SupervisorBadge?;
    string LocationXRefCode?;
    string LocationClockTransferCode?;
    string PositionXRefCode?;
    string PositionClockTransferCode?;
    string DocketXRefCode?;
    string DocketClockTransferCode?;
    string ProjectXRefCode?;
    string ProjectClockTransferCode?;
    PunchLaborMetric[] LaborMetrics?;
    decimal Quantity?;
    string MealWaiver?;
    boolean BreakAttestation?;
};

public type Payload_IEnumerable_EmploymentStatus record {
    EmploymentStatus[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_List_ReportMetadata record {
    ReportMetadata[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Country record {
    string Name?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type OrgUnitDetailConfiguration record {
    string EffectiveStart?;
    string EffectiveEnd?;
    Address Address?;
    LocationAddress TaxLocationAddress?;
    int:Signed32 ChildSortOrder?;
    boolean IsPhysicalLocation?;
    boolean IsPrimary?;
    string LedgerCode?;
    int:Signed32 ParentSortOrder?;
    OrgLevel OrgLevel?;
    TimeZone Timezone?;
    OrgUnitParent OrgUnitParent?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AdditionalTaxType record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type Payload_IEnumerable_EmployeeHRIncident record {
    EmployeeHRIncident[] Data?;
    ProcessResult[] ProcessResults?;
};

public type DisabilityEvidenceIssuingAgency record {
    int:Signed32 DisabilityEvidenceIssuingAgencyId?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeHRIncident record {
    string EmployeeComplainantXRefCode?;
    EmployeeHRIncidentNoteCollection HRIncidentNotes?;
    OrgUnitDetailConfiguration OrgUnit?;
    string HRIncidentState?;
    string OpenDate?;
    HRIncidentAction HRIncidentAction?;
    string AssignedToUserXRefCode?;
    HRIncidentType HRIncidentType?;
    string ClosedDate?;
    string HRIncidentDate?;
    string HRIncidentBeganWork?;
    string HRIncidentEventTime?;
    SafetyHealthType SafetyHealthType?;
    HRIncidentInjury HRIncidentInjury?;
    HRIncidentBodyPart HRIncidentBodyPart?;
    boolean Died?;
    string HRIncidentArea?;
    string TaskBeingPerformed?;
    string CausedObject?;
    string CausedAction?;
    boolean PrivacyCase?;
    string DoctorName?;
    boolean EmergencyRoom?;
    boolean HospitalOvernight?;
    string Hospital?;
    string HospitalStreet?;
    string HospitalCity?;
    string HospitalStateCode?;
    string HospitalZip?;
    string DateReturnToWork?;
    decimal DaysLost?;
    decimal DaysRestricted?;
    string DateDied?;
    boolean QuestionableClaim?;
    boolean IsDaysLost?;
    string WCBCaseNumber?;
    string LastModifiedTimestamp?;
};

public type Payload_List_Payee record {
    Payee[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeAUSSuperannuation record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string MembershipNumber?;
    decimal SuperannuationContributionCalcValue?;
    PayrollPayeeInfo PayrollPayee?;
    PayrollDeduction PayrollDeduction?;
    SuperannuationContributionType SuperannuationContributionType?;
    SuperannuationType SuperannuationType?;
    SuperannuationContributionCalculationType SuperannuationContributionCalculationType?;
    string LastModifiedTimestamp?;
};

public type BenefitsDFLinkExportRecord record {
    BenefitsDFLinkExportEmployeeRecord EmployeeDetails?;
    BenefitsDFLinkExportAddress[] AddressDetails?;
    BenefitsDFLinkExportProperty[] PropertyDetails?;
    BenefitsDFLinkExportOrgUnit[] OrgUnitDetails?;
    BenefitsDFLinkExportUnionMembership[] UnionMembershipDetails?;
    BenefitsDFLinkExportContact[] ContactDetails?;
    BenefitsDFLinkExportEmployeeElectionDetail[] EmployeeElectionDetails?;
    BenefitsDFLinkExportDependentRecord[] DependentDetails?;
    BenefitsDFLinkExportBeneficiaryRecord[] BeneficiaryDetails?;
    BenefitsDFLinkExportEarningGroupingResults[] EarningGroupingResults?;
    BenefitsDFLinkExportEarningGroupingCustomPeriodResults[] EarningGroupingCustomPeriodResults?;
};

public type BenefitsDFLinkExportEmployeeRecord record {
    string RecordType?;
    string FirstName?;
    string MiddleName?;
    string LastName?;
    string NameSuffix?;
    string NationalId?;
    string NationalIDExpiryDate?;
    string XRefCode?;
    string EmployeeNumber?;
    string CultureCode?;
    string Citizenship?;
    string SeniorityDate?;
    boolean IsVisibleMinority?;
    boolean IsAboriginal?;
    string BadgeNumber?;
    string EmploymentStatus?;
    string EmploymentStatusReasonCode?;
    string EmploymentStatusStartDate?;
    string EmploymentStatusEndDate?;
    decimal NormalWeeklyHours?;
    decimal NormalSemiMonthlyHoursTop?;
    decimal NormalSemiMonthlyHoursBottom?;
    decimal AverageDailyHours?;
    decimal BaseSalary?;
    decimal BaseRate?;
    string PayGroupCode?;
    string EmployeeGroupCode?;
    string PayTypeCode?;
    string PayClassCode?;
    string DateOfBirth?;
    int:Signed32 GenderCode?;
    string MaritalStatusCode?;
    int:Signed32 IncomeFrequency?;
    boolean TobaccoSubstanceUse?;
    string DateLastSmoked?;
    string TobaccoUseEffectiveStart?;
    string TobaccoUseEffectiveEnd?;
    int:Signed32 Height?;
    int:Signed32 Weight?;
    boolean DisabilityCode?;
    string DisabilityBeginDate?;
    string DisabilityEndDate?;
    string DepartmentJobNameCode?;
    string WorkAssignmentEffectiveStart?;
    string WorkAssignmentEffectiveEnd?;
    string EmploymentIndicatorCode?;
    boolean VirtualIndicator?;
    string PositionLedgerCode?;
    string WorkedInState?;
    string ManagerFirstName?;
    string ManagerLastName?;
    string ManagerEmail?;
    string ManagerPhoneNumber?;
    string PayRunCheckDate?;
    string PayPeriodStartDate?;
    string PayPeriodEndDate?;
    int:Signed32 PayFrequencyCode?;
    string Ethnicity?;
    int:Signed32 MedicareStatus?;
    int:Signed32 MedicareReasonCode?;
    string OriginalHireDate?;
    string TerminationDate?;
    string HireDate?;
    string DateOfDeath?;
    boolean InitialNoticeFlag?;
    string GenderIdentity?;
    int:Signed32 Age?;
};

public type EmployeeAssignedSexAndGenderIdentityCollection record {
    EmployeeAssignedSexAndGenderIdentity[] Items?;
};

public type Payload_IEnumerable_Position record {
    Position[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeePropertyValue record {
    string EffectiveEnd?;
    string EffectiveStart?;
    EmployeeProperty EmployeeProperty?;
    boolean BitValue?;
    decimal NumberValue?;
    EmployeePropertyOption OptionValue?;
    string StringValue?;
    string DateTimeValue?;
    string LastModifiedTimestamp?;
};

public type EmployeeDirectDepositCollection record {
    EmployeeDirectDeposit[] Items?;
};

public type EmployeeOrgUnitInformation record {
    OrgUnitDetailConfiguration OrgUnitDetail?;
    Department Department?;
    string LastModifiedTimestamp?;
};

public type PayrollPayeeInfo record {
    boolean IsActive?;
    boolean IsDeductionPayee?;
    string ABN?;
    string USI?;
    string ESA?;
    string AddressLine1?;
    string AddressLine2?;
    string AddressLine3?;
    string City?;
    string State?;
    string PostalCode?;
    string CountryCode?;
    PayrollPayeeCategory Category?;
    PayrollPaymentMethod PaymentMethod?;
    string AccountNumber?;
    string BSBCode?;
    boolean CombineEmployees?;
    boolean CombineEarningsandDeductions?;
    boolean ShowEmployeeDetails?;
    boolean AllowNegativeAmounts?;
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type I9Order record {
    string I9OrderId?;
    string OrderStatusXRefCode?;
    EVerify EVerify?;
};

public type OperatingHoursExceptionPOST record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string OrgUnitXRefCode?;
    int OpHrsPatternAssignment?;
    int OpHrsPatternException?;
    OperatingHoursExceptionDay[] OperatingHoursExceptionDay?;
    OperatingHoursDayPattern OperatingHoursDayPattern?;
};

public type OperatingHoursItem record {
    string Day?;
    int:Signed32 IsClosed?;
    int:Signed32 NoDayPattern?;
    string ShortName?;
    string LongName?;
    string OpenTime?;
    string CloseTime?;
    int:Signed32 IsException?;
    string LastModifiedTimestamp?;
    int:Signed32 Client?;
};

public type Payload_IEnumerable_EmployeeDependentBeneficiary record {
    EmployeeDependentBeneficiary[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_Skill record {
    Skill[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_ManagerShiftBid record {
    ManagerShiftBid[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeCANFederalTax record {
    string EffectiveStart?;
    string EffectiveEnd?;
    decimal TotalClaimAmount?;
    boolean IsNonResident?;
    boolean MultipleEmployer?;
    boolean IncomeLessThanClaim?;
    decimal DistrictTaxDeduction?;
    decimal AuthorizedTaxCredits?;
    decimal EstimatedExpense?;
    decimal EstimatedRemuneration?;
    decimal AdditionalAmount?;
    decimal PrescribedAreaDeduction?;
    string LastModifiedTimestamp?;
};

public type PayrollPaymentMethod record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeEmploymentStatus record {
    string EmployeeNumber?;
    string EffectiveStart?;
    string EffectiveEnd?;
    EmploymentStatus EmploymentStatus?;
    EmploymentStatusGroup EmploymentStatusGroup?;
    PayType PayType?;
    PayGroup PayGroup?;
    PayTypeGroup PayTypeGroup?;
    PayClass PayClass?;
    PunchPolicy PunchPolicy?;
    PayPolicy PayPolicy?;
    PayHolidayGroup PayHolidayGroup?;
    EmployeeGroup EmployeeGroup?;
    EntitlementPolicy EntitlementPolicy?;
    ShiftRotation ShiftRotation?;
    int ShiftRotationDayOffset?;
    string ShiftRotationStartDate?;
    boolean CreateShiftRotationShift?;
    TimeOffPolicy TimeOffPolicy?;
    ShiftTradePolicy ShiftTradePolicy?;
    AttendancePolicy AttendancePolicy?;
    EmployeeSchedulePolicy SchedulePolicy?;
    EmployeeOvertimeGroup OvertimeGroup?;
    PayrollPolicy PayrollPolicy?;
    JobStepPolicy JobStepPolicy?;
    decimal AlternateRate?;
    decimal AverageDailyHours?;
    decimal AverageOvertimeRate?;
    decimal BaseRate?;
    boolean BaseRateManuallySet?;
    decimal BaseSalary?;
    decimal PeriodicSalary?;
    decimal DailyRate?;
    EmploymentStatusReason EmploymentStatusReason?;
    decimal NormalWeeklyHours?;
    DEUHoursChangeReason DEUHoursChangeReason?;
    decimal NormalSemiMonthlyHoursTop?;
    decimal NormalSemiMonthlyHoursBottom?;
    ScheduleChangePolicy ScheduleChangePolicy?;
    AuthorizationPolicy AuthorizationPolicy?;
    WorkContractPremiumPolicy WorkContractPremiumPolicy?;
    string LastPayEditDate?;
    decimal VacationRate?;
    decimal TargetBonus?;
    EmploymentStatus OriginalEmploymentStatus?;
    string OriginalEffectiveStart?;
    string OriginalEffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type AnalyticsDatasetMetadataResponse record {
    # Message returned to user
    string Message?;
    # Dataset Id.
    string DatasetId?;
    string Status?;
    # Row count in the dataset.
    string RowCount?;
    # Report Id.
    int:Signed32 ReportId?;
    # RefreshStatus.
    string RefreshStatus?;
    # Report Filters
    string Filters?;
    # Report Parameters
    string Parameters?;
    # Created Date of report
    string CreatedDate?;
    # Last modified timestamp of report
    string LastModifiedTimestamp?;
    # Started refresh Timestamp
    string StartedTimestamp?;
    # Ended refresh Timestamp
    string EndedTimestamp?;
    # Difference between report row counts
    int:Signed32 DifferenceCount?;
    # Total number of pages for given dataset
    int:Signed32 TotalPages?;
};

public type PayrollEmployeeEarningParameter record {
    string ParamCodeName?;
    string ShortName?;
    decimal EmployeeElectedValue?;
    decimal PayGroupDefaultValue?;
    string LastModifiedTimestamp?;
};

public type EmployeeHRPolicyCollection record {
    EmployeeHRPolicy[] Items?;
};

public type TimeOffPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BenefitsDFLinkExportBeneficiaryRecord record {
    string RecordType?;
    int:Signed32 UniqueBeneficiaryId?;
    string EmployeeNationalId?;
    string NationalId?;
    string NationalIDExpiryDate?;
    string FirstName?;
    string MiddleName?;
    string LastName?;
    string DateOfBirth?;
    int:Signed32 GenderCode?;
    string RelationshipCode?;
    string XRefCode?;
    string HomePhoneNumber?;
    BenefitsDFLinkExportAddress[] AddressDetails?;
    BenefitsDFLinkExportContact[] ContactDetails?;
    BenefitsDFLinkExportBeneficiaryElectionDetail[] BeneficiaryElectionDetails?;
};

public type PaginatedPayload_IEnumerable_Skill record {
    Skill[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type Payload_IEnumerable_EmployeeCompensation record {
    EmployeeCompensation[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeUKNIDetails record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string NILetterXrefCode?;
    string DirectorStartDate?;
    boolean IsDirector?;
    boolean Annual?;
    string ChangeReasonXrefCode?;
    string LegalEntityXrefCode?;
    string LastModifiedTimestamp?;
};

public type LaborValidationQualifier record {
    string XRefCode?;
    string Name?;
    string Description?;
    boolean Active?;
    int:Signed32 Sequence?;
    string CodeName?;
    LaborValidationModel[] Models?;
    LaborValidationQualifier[] Children?;
};

public type Job record {
    EmployeeEEO EmployeeEEO?;
    boolean IsUnionJob?;
    string JobQualifications?;
    int:Signed32 JobRank?;
    JobSOC JobSOC?;
    string JobUDFString1?;
    string JobUDFString2?;
    string JobUDFString3?;
    string LedgerCode?;
    string NOC?;
    JobClassification JobClassification?;
    JobFunction JobFunction?;
    PayGrade PayGrade?;
    DFUnion Union?;
    string EffectiveEnd?;
    string EffectiveStart?;
    FLSAStatus FLSAStatus?;
    JobFamily JobFamily?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type OrgUnitLocationTypeCollection record {
    OrgUnitLocationType[] Items?;
};

public type Culture record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_AnalyticsReportMetadata record {
    AnalyticsReportMetadata[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PositionAssignmentCollection record {
    PositionAssignment[] Items?;
};

public type QuestionAnswers record {
    string Id?;
    string Value?;
    string[] Values?;
};

public type Payload_IEnumerable_EmployeeAUSSuperannuationRules record {
    EmployeeAUSSuperannuationRules[] Data?;
    ProcessResult[] ProcessResults?;
};

public type LaborMetricTypePatchPostResponse record {
    string LaborMetricTypePatchPostResponseXrefCode?;
};

public type JobFeed record {
    string Title?;
    string Description?;
    string ClientSiteName?;
    string ClientSiteXRefCode?;
    string CompanyName?;
    string ParentCompanyName?;
    string JobDetailsUrl?;
    string ApplyUrl?;
    string AddressLine1?;
    string AddressLine2?;
    string City?;
    string State?;
    string Country?;
    string PostalCode?;
    string Education?;
    string JobFamily?;
    string JobFunction?;
    string EmploymentIndicator?;
    string Qualifications?;
    string DatePosted?;
    string LastUpdated?;
    int:Signed32 ReferenceNumber?;
    string CandidatesUrl?;
    string CultureCode?;
    int:Signed32 ParentRequisitionCode?;
    decimal MinHiringRate?;
    decimal MaxHiringRate?;
    decimal HiringRate?;
    int:Signed32 JobType?;
    decimal TravelPercentage?;
    int:Signed32 TravelRequired?;
    decimal TelecommutePercentage?;
    boolean IsVirtualLocation?;
    string QuestionnaireUrl?;
    string CandidateApplicationPostUrl?;
};

public type PMPositionAssignment record {
    string PositionAssignmentGlobalId?;
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IsPrimary?;
    PMPosition PMPosition?;
    string LastModifiedTimestamp?;
};

public type GenderIdentity record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PayType record {
    decimal MaximumRate?;
    decimal MaximumSalary?;
    int:Signed32 SortOrder?;
    boolean HidePayOnTimesheet?;
    boolean IsPayrollAutoPay?;
    string LedgerCode?;
    PayTypeGroup PayTypeGroup?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeTimeAwayFromWorkForSubmit record {
    EmployeeTimeAwayFromWorkForSubmit[] Data?;
    ProcessResult[] ProcessResults?;
};

public type BenefitsDFLinkExportUnionMembership record {
    string RecordType?;
    string UnionName?;
    string UnionXrefCode?;
    string MembershipEffectiveStartDate?;
    string MembershipDate?;
};

public type EmployeeLocationAuthority record {
    string EffectiveStart?;
    string EffectiveEnd?;
    AuthorityType AuthorityType?;
    string LastModifiedTimestamp?;
};

public type EmployeePerformanceRatingCollection record {
    EmployeePerformanceRating[] Items?;
};

public type Payload_IEnumerable_EmployeeBalancePeriod record {
    EmployeeBalancePeriod[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_EmploymentStatus record {
    EmploymentStatus Data?;
    ProcessResult[] ProcessResults?;
};

public type AssociationDetails record {
    string Title?;
    string StartDateMonth?;
    string StartDateYear?;
    string EndDateMonth?;
    string EndDateYear?;
    boolean EndCurrent?;
    string Description?;
};

public type EmployeeUSTaxStatusCollection record {
    EmployeeUSTaxStatus[] Items?;
};

public type EmployeeEmergencyContact record {
    string FirstName?;
    string LastName?;
    string MiddleName?;
    string Comment?;
    boolean IsPrimary?;
    RelationshipType Relationship?;
    EmergencyContactPersonAddressCollection Addresses?;
    EmergencyContactPersonContactCollection Contacts?;
    string LastModifiedTimestamp?;
};

public type EmployeeShortTimeWorkCollection record {
    EmployeeShortTimeWork[] Items?;
};

public type PREarningAccumulator record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type EmploymentStatusReason record {
    boolean IsCompChangeReason?;
    boolean IsLeaveReason?;
    boolean IsPositionChangeReason?;
    boolean IsTerminationReason?;
    boolean IsVoluntaryReason?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeWorkLocationOverride record {
    EmployeeWorkLocationOverride[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeOvertimeGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PersonContact record {
    ContactInformationType ContactInformationType?;
    string ContactNumber?;
    Country Country?;
    string EffectiveEnd?;
    string EffectiveStart?;
    string ElectronicAddress?;
    string Extension?;
    boolean IsForSystemCommunications?;
    boolean IsPreferredContactMethod?;
    boolean IsUnlistedNumber?;
    string FormattedNumber?;
    boolean IsVerified?;
    boolean IsRejected?;
    boolean ShowRejectedWarning?;
    int:Signed32 NumberOfVerificationRequests?;
    string LastModifiedTimestamp?;
};

public type AttendancePolicy record {
    int:Signed32 TrackingBasedOn?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeePropertyValue record {
    EmployeePropertyValue[] Data?;
    ProcessResult[] ProcessResults?;
};

public type MilitaryServices record {
    int:Signed32 _Total?;
    MilitaryServiceDetails[] Values?;
};

public type EmployeeDefaultLaborCollection record {
    EmployeeDefaultLabor[] Items?;
};

public type EmployeeCANStateTaxCollection record {
    EmployeeCANStateTax[] Items?;
};

public type PayrollPayEntryImportHistoryDetails record {
    string Source?;
    string ImportSetName?;
    string ImportIdentifier?;
    string SourceFile?;
    string UploadedDateUTC?;
    string StartDate?;
    string FinishedDate?;
    int:Signed32 ErrorActionCode?;
    string ErrorOccurActionName?;
    string ImportStatus?;
    int:Signed32 TotalRecordsIncluded?;
    int:Signed32 TotalRecordsImported?;
    int:Signed32 TotalInvalidRecords?;
    PayrollPayEntryImportHistoryErrorDetails[] Errors?;
};

public type EmployeePunchPatchPostDeleteResponse record {
    string XRefCode?;
};

public type Payload_IEnumerable_EmployeeEthnicity record {
    EmployeeEthnicity[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_String record {
    string Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeGLSplitSets record {
    string OrgUnitXRefCode?;
    string DeptJobXRefCode?;
    string DeptJobName?;
    string OrgUnitName?;
    string SplitEffectiveTo?;
    string SplitEffectiveFrom?;
    EmployeeGLSplitSetDetails[] EmployeeGLSplitSetDetails?;
};

public type EmployeeScheduleActivityPostAPIRequestDTO record {
    string XRefCode;
    string TimeStart;
    string TimeEnd;
};

public type EmployeeTimeAwayFromWorkForSubmit record {
    string EmployeeXRefCode?;
    string TAFWXRefCode?;
    string PayAdjustmentCodeXRefCode?;
    string StatusXRefCode?;
    string TimeStart?;
    string TimeEnd?;
    decimal NetHours?;
    decimal[] NetHoursPerDay?;
    string ManagerComment?;
    string EmployeeComment?;
    boolean AllDay?;
    boolean HalfDay?;
    int:Signed32 Days?;
};

public type ContactInformationTypeGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Transfers record {
    string TimeStart?;
    string TimeStartRaw?;
    string LocationXRefCode?;
    string PositionXRefCode?;
    string ProjectXRefCode?;
    string DocketXRefCode?;
    decimal DocketQuantity?;
    string PayAdjustmentXRefCode?;
    string EmployeeComment?;
    string ManagerComment?;
    LaborMetrics[] LaborMetrics?;
};

public type Links record {
    int:Signed32 _Total?;
    LinkDetails[] Values?;
};

public type EmployeePayAdjCodeGroupListCollection record {
    EmployeePayAdjustCodeGroup[] Items?;
};

public type Payload_IEnumerable_EmployeeAvailability record {
    EmployeeAvailability[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayAdjCodeGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EducationDetails record {
    string Degree?;
    string Field?;
    string School?;
    string Location?;
    string StartDateYear?;
    string EndDateYear?;
    boolean EndCurrent?;
};

public type EmployeeVeteransStatusCollection record {
    EmployeeVeteransStatus[] Items?;
};

public type Payload_Department record {
    Department Data?;
    ProcessResult[] ProcessResults?;
};

public type EarningStatementDocument record {
    string Contents?;
    string Title?;
    string Link?;
    string FileName?;
};

public type MetadataField record {
    string OriginalId?;
    string ParentEntityType?;
    string Label?;
    string DbColumn?;
    string DataType?;
    AmfValidationModel[] Validators?;
    PredefinedValue[] PredefinedValues?;
    boolean EnableAdditionalAssumePreviousValueIfNullLogic?;
    AmfAuthorize DfAuthorize?;
    AmfCfg Cfg?;
    AmfEnumFrom EnumFrom?;
    boolean IsUniqueField?;
    boolean IsPublicKey?;
    boolean IsIndexKey?;
    string Id?;
    string Title?;
    string ShortDescription?;
    string LongDescription?;
    string MetadataId?;
    string DbTable?;
    string Name?;
    record {|string...;|} Mappings?;
    boolean IsExtended?;
    boolean IsCommon?;
    ContextLevel GeoContext?;
    string SchemaName?;
    string ApplicationMapping?;
    string DayforcePropertyName?;
};

public type Payload_LaborCostResult record {
    LaborCostResult Data?;
    ProcessResult[] ProcessResults?;
};

public type PRGLSplitSet record {
    Location Location?;
    Position Position?;
    string EffectiveStart?;
    string EffectiveEnd?;
    PRGLSplitSetDetailCollection PRGLSplitSetDetails?;
    string LastModifiedTimestamp?;
};

public type DEUSTWParticipationReason record {
    int:Signed32 DEUSTWParticipationReasonId?;
    string ShortName?;
    string LongName?;
    string XRefCode?;
    string LastModifiedTimestamp?;
};

public type DocMgmtUploadResponse record {
    string Status?;
    DocMgmtFileProcessedResponse[] FilesProcessed?;
};

public type AnalyticsReportDefinitions record {
    # Feature Id for the Report.
    string ReportId?;
    # Name of the Report.
    # The name will be localized, based on the Session Culture.
    string Name?;
    # Description of the Report.
    # The description will be localized, based on the Session Culture.
    string Description?;
};

public type PaginatedPayload_IEnumerable_LaborValidationRule record {
    LaborValidationRule[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type DEUHoursChangeReason record {
    string ITSGCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PRGLSplitSetDetailMetricCodeCollection record {
    PRGLSplitSetDetailMetricCode[] Items?;
};

public type PayMethod record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BackgroundScreeningAdjudicationStatus record {
    string ScreeningRequestId?;
    string AdjudicationStatus?;
};

public type EmployeeUSFederalTax record {
    string EffectiveStart?;
    string EffectiveEnd?;
    FederalFilingStatus FilingStatus?;
    int:Signed32 Allowances?;
    decimal AdditionalAmount?;
    boolean IsTaxExempt?;
    boolean IsLocked?;
    boolean TwoJobs?;
    decimal DependentTaxCredit?;
    decimal OtherIncome?;
    decimal Deductions?;
    string LastModifiedTimestamp?;
};

public type PublicationDetails record {
    string Title?;
    string Url?;
    string DateDay?;
    string DateMonth?;
    string DateYear?;
    string Description?;
};

public type PayrollDeduction record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type Payload_EmployeeVOE record {
    EmployeeVOE Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeUnionMembership record {
    string UnionMembershipDate?;
    string EffectiveStart?;
    DFUnion Union?;
    string EffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type Payload_EmployeeVOI record {
    EmployeeVOI Data?;
    ProcessResult[] ProcessResults?;
};

public type PayPeriodInformation record {
    PayGroupBrief PayGroup?;
    string PayPeriodStartDate?;
    string PayPeriodEndDate?;
    string OffsetPayPeriodStartDate?;
    string OffsetPayPeriodEndDate?;
    string LastModifiedTimestamp?;
};

public type LocationAddresses record {
    string Description?;
    string Address?;
    string AddressLineTwo?;
    string ZipPostalCode?;
    string CountryName?;
    string StateProvince?;
    string City?;
    string County?;
    boolean IsTaxation?;
    string CountryCode?;
    string StateProvinceCode?;
    boolean LocationInJtEconomicDevDistAreaJedd?;
    string JeddTaxes?;
    string TaxAuthorityInstance?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_BackgroundJobLog record {
    BackgroundJobLog Data?;
    ProcessResult[] ProcessResults?;
};

public type PaginatedPayload_PersonManagementHistory record {
    PersonManagementHistory Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeeEarningLimit record {
    EarningLimit EarningLimit?;
    decimal LimitAmount?;
    decimal LimitPercent?;
    decimal PayGroupLimitAmount?;
    decimal PayGroupLimitPercent?;
    string LastModifiedTimestamp?;
};

public type Breaks record {
    string TimeStart?;
    string TimeEnd?;
    decimal NetHours?;
    string Type?;
};

public type Payload_IEnumerable_ContactInformationType record {
    ContactInformationType[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PaginatedPayload_PersonManagementExemption record {
    PersonManagementExemption Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeeBadge record {
    string BadgeNumber?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_PersonAddress record {
    PersonAddress[] Data?;
    ProcessResult[] ProcessResults?;
};

public type DEUEmployeeWageTax record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string ReferenceDate?;
    string EmploymentTypeCodeName?;
    boolean ElectronicDataTransfer?;
    string TaxClass?;
    decimal Factor?;
    decimal ChildAllowance?;
    string DenominationCodeName?;
    boolean TaxExemption?;
    decimal RequestedAnnualAllowance?;
    decimal AnnualAllowance?;
    decimal MonthlyAllowance?;
    string SpouseDenominationCodeName?;
    boolean OptOutYearEndWageTaxAdjustment?;
    boolean IsManualInput?;
    string LastModifiedTimestamp?;
};

public type PensionTypeConfiguration record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeBalancePeriod record {
    string EmployeeXRefCode?;
    string BalanceName?;
    string BalanceXRefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    decimal InitialAccruedValue?;
    decimal InitialGrantValue?;
    decimal CurrentAccruedValue?;
    decimal CurrentGrantValue?;
    decimal MinimumValue?;
    decimal MaximumValue?;
};

public type Payload_IEnumerable_EmployeeUKNIDetails record {
    EmployeeUKNIDetails[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PersonManagementEraseHistory record {
    string HireDate?;
    string TerminationDate?;
    string LastPayDate?;
    string PersonType?;
    string LastBenefitCoverageDate?;
    string LastDeptJob?;
    string LastOrgUnit?;
    string EmploymentStatusReason?;
    string EligibleForRehire?;
    string DisplayName?;
    string Reason?;
    string PurgeDate?;
    string Originator?;
    string EraseRequestDate?;
    string LastPayGroup?;
    string DayforceCreateDate?;
    int:Signed32 RequestId?;
};

public type PaginatedPayload_IEnumerable_EmployeeSchedule record {
    EmployeeSchedule[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeeUKTaxDetails record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string TaxCode?;
    boolean TaxBasis?;
    decimal PreviousTaxableGrossPaidToDate?;
    decimal PreviousTaxPaidToDate?;
    string StarterDeclaration?;
    boolean PreviouslyReportedOnFPS?;
    string ChangeReasonXrefCode?;
    string LegalEntityXrefCode?;
    string LastModifiedTimestamp?;
};

public type Payload_ContactInformationType record {
    ContactInformationType Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeePayrollTaxParameter record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean ExemptTaxOnlyUpdateWages?;
    boolean ExemptTaxAndTaxableWages?;
    boolean InactivateTax?;
    string TaxAuthorityInstance?;
    string LegalEntityXrefCode?;
    EmployeePayrollTaxParameterElement[] OverrideParameters?;
    string LastModifiedTimestamp?;
};

public type EmployeeElectionAPIDeletionModel record {
    string ElectionXrefCode?;
    string SourceTypeXRefCode?;
};

public type Educations record {
    int:Signed32 _Total?;
    EducationDetails[] Values?;
};

public type Payload_IEnumerable_EmployeeOrgUnitInformation record {
    EmployeeOrgUnitInformation[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeIRLTaxPRSI record {
    EmployeeIRLTaxPRSI[] Data?;
    ProcessResult[] ProcessResults?;
};

public type HRIncidentInjury record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type ContextLevel record {
    string Level?;
    string LevelValue?;
};

public type LMSCertification record {
    string EffectiveEnd?;
    string ExpirationUnit?;
    int:Signed32 ExpirationValue?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeGLSplitUpsert record {
    string EmployeeXRefCode?;
    GLSplitSetUpsert[] GLSplitSets?;
};

public type Payload_LaborMetricCodes record {
    LaborMetricCodes Data?;
    ProcessResult[] ProcessResults?;
};

public type CandidateRTWDocument record {
    int:Signed32 CandidateRTWDocumentId?;
    string DocumentName?;
    string DocumentExtension?;
    string DateAdded?;
    string DateExpire?;
    string Type?;
    string PathwayCode?;
    string CountryCode?;
    CandidateRTWDocumentSource Sources?;
    CandidateRTWDocumentDetails[] Details?;
    CandidateRTWDocumentGenericError[] DocumentErrors?;
};

public type ClientPayrollCountry record {
    string ClientOperatingLocations?;
    string ClientOperatingLocationsLabel?;
    boolean ConnectPayEnabled?;
    PayrollCountry[] Countries?;
};

public type JobClassification record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeAssignedSexAndGenderIdentity record {
    Country Country?;
    State State?;
    AssignedSexCountryAware AssignedSexCountryAware?;
    GenderIdentityCountryAware GenderIdentityCountryAware?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type Payload_DocumentImportQueueResponse record {
    DocumentImportQueueResponse Data?;
    ProcessResult[] ProcessResults?;
};

public type KpiTargetPatternAssignment record {
    string KpiXRefCode?;
    string OrgUnitXRefCode?;
    string ZoneXRefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    int:Signed32 PatternOffset?;
};

public type Payload_IEnumerable_Location record {
    Location[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeBadgeCollection record {
    EmployeeBadge[] Items?;
};

public type EmployeeBalanceTransactions record {
    int EmployeeBalancePeriodIdExternal?;
    string EffectiveStart?;
    string EffectiveEnd?;
    EmployeeBalanceTransaction[] Transactions?;
};

public type PayrollEmployeeDeductionParameter record {
    string ParamCodeName?;
    string ShortName?;
    decimal EmployeeElectedValue?;
    decimal PayGroupDefaultValue?;
    string LastModifiedTimestamp?;
};

public type Course record {
    string CourseCode?;
    CourseType CourseType?;
    CourseProvider CourseProvider?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeePayAdjustmentLaborMetrics record {
    string LaborMetricsTypeXRefCode?;
    string LaborMetricsCodeXRefCode?;
};

public type PaginatedPayload_IEnumerable_EmployeePaySummary record {
    EmployeePaySummary[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type Role record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BankAccountBranchAddress record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeHighlyCompensatedEmployeeIndicator record {
    EmployeeHighlyCompensatedEmployeeIndicator[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeCANFederalTax record {
    EmployeeCANFederalTax[] Data?;
    ProcessResult[] ProcessResults?;
};

public type UserPayAdjCodeGroupCollection record {
    UserPayAdjustCodeGroup[] Items?;
};

public type ChildLocationCollection record {
    ChildLocation[] Items?;
};

public type EmployeeCourse record {
    string StartDate?;
    string CompletionDate?;
    string CertificationExpiryDate?;
    Course Course?;
    EmployeeTrainingProgram EmployeeTrainingProgram?;
    string CertificationNumber?;
    string Comment?;
    string Score?;
    string PassFail?;
    string Credits?;
    decimal Cost?;
    string CostCurrencyCode?;
    LMSEnrollmentStatus EnrollmentStatus?;
    int:Signed32 TimeSpent?;
    string LastModifiedTimestamp?;
};

public type EmployeeEarning record {
    boolean ContinuePaymentOnStatutoryPay?;
    int:Signed32 IsOptOut?;
    Earning Earning?;
    string EffectiveEnd?;
    string EffectiveStart?;
    ElectionSchedule ElectionSchedule?;
    PayGroup ElectionStartPayGroup?;
    string ElectionStartPayPeriodStartDate?;
    boolean IsBlocked?;
    decimal LimitAmount?;
    decimal LimitPercent?;
    Location Location?;
    Position Position?;
    EmployeeEarningParameterCollection EmployeeEarningParameters?;
    EmployeeEarningLimitCollection EmployeeEarningLimits?;
    string LastModifiedTimestamp?;
};

public type SuperannuationType record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type Projects record {
    string[] CreationOrgUnitXRefCodes?;
    string LongName?;
    string ClockTransferCode?;
    int:Signed32 ProjectPriority?;
    string AccountNum?;
    string LedgerCode?;
    boolean IFRSClassification?;
    string CertifiedPayrollProjectNumber?;
    string CompletedDate?;
    decimal PctComplete?;
    decimal BudgetHours?;
    decimal BudgetAmount?;
    string ProjectClientXRefCode?;
    string ProjectTypeXRefCode?;
    string ProjectPhaseXRefCode?;
    string ProductGroupXRefCode?;
    string ProductModuleXRefCode?;
    boolean Deleted?;
    string TaxLocationAddressXRefCode?;
    string[] ChildProjectXRefCodes?;
    ProjectAssignmentType EmployeeXRefCodes?;
    ProjectAssignmentType DeptJobXRefCodes?;
    ProjectAssignmentType DepartmentXRefCodes?;
    ProjectAssignmentType PayCodeXRefCodeChargeToHours?;
    ProjectAssignmentType PayCodeXRefCodeChargeToAmount?;
    boolean IsResidentAddressUsedForTaxation?;
    boolean IsCOEProject?;
    string ProjectXRefCode?;
    string ShortName?;
    string ParentProjectXRefCode?;
    string StartDate?;
    string DueDate?;
};

public type EmployeeTrainingProgram record {
    TrainingProgram TrainingProgram?;
    string EnrollmentDate?;
    string LastModifiedTimestamp?;
};

public type AmfProperty record {
    int:Signed32 Id?;
    int:Signed32 EntityId?;
    int:Signed32 ParentId?;
    string EntityState?;
    string StringValue?;
    boolean BoolValue?;
    decimal NumberValue?;
    string DateTimeValue?;
};

public type CandidatePersonalIdentifiableInformation record {
    string DateOfBirth?;
    string SocialSecurityNumber?;
    string SocialInsuranceNumber?;
    string DriverLicense?;
};

public type BaseProject record {
    string ProjectXRefCode?;
    string ShortName?;
    string ParentProjectXRefCode?;
    string StartDate?;
    string DueDate?;
};

public type EmploymentAgreementTaxRegime record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_SubordinateEntityReferences record {
    SubordinateEntityReferences Data?;
    ProcessResult[] ProcessResults?;
};

public type PaginatedPayload_IEnumerable_LMSCertification record {
    LMSCertification[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type Payload_IEnumerable_EmployeeDisability record {
    EmployeeDisability[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeUKPostgraduateLoan record {
    EmployeeUKPostgraduateLoan[] Data?;
    ProcessResult[] ProcessResults?;
};

public type DisabilityGroup record {
    int:Signed32 DisabilityGroupId?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeSchedule record {
    string EmployeeScheduleXRefCode?;
    string EmployeeXRefCode?;
    string TimeStart?;
    string TimeEnd?;
    decimal NetHours?;
    string DepartmentXRefCode?;
    string JobXRefCode?;
    string PositionXRefCode?;
    string OrgUnitXRefCode?;
    string SiteOrgUnitXRefCode?;
    string OrgLocationTypeXRefCode?;
    string PayAdjCodeXRefCode?;
    string DocketXRefCode?;
    string ProjectXRefCode?;
    string Comment?;
    boolean Published?;
    Breaks[] Breaks?;
    Activity[] Activities?;
    Skills[] Skills?;
    LaborMetric[] LaborMetrics?;
    Segment[] Segments?;
    boolean IsPostedShiftBid?;
};

public type EmployeeMaritalStatus record {
    MaritalStatus MaritalStatus?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_JobFeed record {
    JobFeed[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeRawPunch record {
    string RawPunchXRefCode?;
    string PunchState?;
    string PayDate?;
    string EmployeeXRefCode?;
    string EmployeeBadge?;
    string RawPunchTime?;
    boolean WasOfflinePunch?;
    PunchExtraData ExtraData?;
    string PunchType?;
    string Comment?;
    string PunchDevice?;
    string SupervisorBadge?;
    boolean IsDuplicate?;
    string RejectedReason?;
    string LocationXRefCode?;
    string PositionXRefCode?;
    string DepartmentXRefCode?;
    string JobXRefCode?;
    string IPAddress?;
    string PunchOrigin?;
    decimal Latitude?;
    decimal Longitude?;
    int:Signed32 Accuracy?;
    string PunchXRefCode?;
};

public type Payload_Job record {
    Job Data?;
    ProcessResult[] ProcessResults?;
};

public type LegacyLaborMetricCodes record {
    string Name?;
    string Description?;
    string LegacyLaborMetricType?;
    string LegacyLaborMetricXRefCode?;
};

public type AuthorityType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BusinessUnitParentAssignment record {
    string BusinessUnitGlobalId?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeAvailabilityPostAPIRequestDTO record {
    boolean IsDefault;
    string EffectiveStart;
    string EffectiveEnd;
    string ManagerComments?;
    EmployeeAvailabilityWeeksPostRequestDTO[] Weeks;
};

public type EarningParameter record {
    string CodeName?;
    ParameterAccessType ParameterAccessType?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeScheduleMBPostAPIRequestDTO record {
    string TimeStart;
    string TimeEnd;
    1|2 Type;
};

# This class provides information about a report.
public type ReportMetadata record {
    # Name of the Report.
    # The name will be localized, based on the Session Culture.
    string Name?;
    # Description of the Report.
    # The description will be localized, based on the Session Culture.
    string Description?;
    # Reference Code for the Report.
    # This is a unique, human readable, code used to identify the Report.
    string XRefCode?;
    # Maximum number of rows the Report will return as part of it's ResultSet.
    # If the MaxRows is assigned -1, it will execute to include all possible rows in it's ResultSet.
    int:Signed32 MaxRows?;
    # An array of ReportColumnMetadata objects.
    ReportColumnMetadata[] ColumnMetadata?;
    # Collection of report parameters defined by the report.
    ReportParameterMetadata[] Parameters?;
};

public type Payload_IEnumerable_EmployeeEmploymentStatus record {
    EmployeeEmploymentStatus[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeUnionCollection record {
    EmployeeUnionMembership[] Items?;
};

public type Address record {
    string Address1?;
    string Address2?;
    string Address3?;
    string Address4?;
    string Address5?;
    string Address6?;
    string City?;
    string PostalCode?;
    Country Country?;
    State State?;
    string LastModifiedTimestamp?;
};

public type PayClassGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeUSFederalTaxCollection record {
    EmployeeUSFederalTax[] Items?;
};

public type Deduction record {
    CalculationType CalculationType?;
    DeductionCode DeductionCode?;
    DeductionType DeductionType?;
    string DisplayName?;
    string DebitJournalNumber?;
    string CreditJournalNumber?;
    boolean IsDecliningBalance?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeCANEmploymentInsuranceRate record {
    string EffectiveStart?;
    string EffectiveEnd?;
    LegalEntity LegalEntity?;
    string RateGroup?;
    string LastModifiedTimestamp?;
};

public type AnalyticsReportDataset record {
    record {} Dataset?;
};

public type PaginatedPayload_IEnumerable_EmployeeRawPunch record {
    EmployeeRawPunch[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type CandidateApplicationStatusModel record {
    string StatusName?;
    string StatusGroupName?;
    string EffectiveStart?;
    string EffectiveEnd?;
};

public type EmployeeDEUTaxSocialInsuranceCollection record {
    DEUTaxSocialInsurance[] Items?;
};

public type EmployeeEarningsCollection record {
    EmployeeEarning[] Items?;
};

public type EmployeeHRIncidentNote record {
    string DateAdded?;
    string Notes?;
    string LastModifiedTimestamp?;
};

public type EmployeeVolunteerList record {
    string EffectiveEnd?;
    string EffectiveStart?;
    VolunteerList VolunteerList?;
    string LastModifiedTimestamp?;
};

public type TaxProperty record {
    string PropertyCodeName?;
    string PropertyValue?;
    string LastModifiedTimestamp?;
};

public type PaginatedPayload_PersonManagementEraseHistory record {
    PersonManagementEraseHistory Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type Payload_PayType record {
    PayType Data?;
    ProcessResult[] ProcessResults?;
};

public type LegacyLaborMetricPatchPostDeleteResponse record {
    string XRefCode?;
};

public type OrgUnitParentCollection record {
    OrgUnitParent[] Items?;
};

public type Position record {
    decimal AverageDailyHours?;
    string ClockTransferCode?;
    Department Department?;
    Job Job?;
    string EffectiveStart?;
    string EffectiveEnd?;
    EmploymentIndicator EmploymentIndicator?;
    boolean Executive?;
    decimal FTE?;
    boolean IsNonService?;
    boolean IsWCBExempt?;
    string LedgerCode?;
    boolean Officer?;
    PayClass PayClass?;
    PayGroup PayGroup?;
    PayType PayType?;
    PositionTerm PositionTerm?;
    boolean PPACAFullTime?;
    decimal SemiMonthlyBottomHours?;
    decimal SemiMonthlyTopHours?;
    decimal StandardCostRate?;
    decimal WeeklyHours?;
    decimal DefaultTargetBonus?;
    PositionAssignmentCollection PositionAssignments?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeUSStateTaxCollection record {
    EmployeeUSStateTax[] Items?;
};

public type EmployeeDependentsBeneficiariesContactCollection record {
    EmployeeDependentsBeneficiariesContact[] Items?;
};

public type Payload_IEnumerable_EmployeeGlobalPropertyValue record {
    EmployeeGlobalPropertyValue[] Data?;
    ProcessResult[] ProcessResults?;
};

public type CandidateApplicationStatusUpdatesModel record {
    string Identifier?;
    CandidateApplicationStatusModel[] ApplicationStatuses?;
};

public type KpiData record {
    string OrgUnitXRefCode?;
    string KpiXRefCode?;
    string Day?;
    string Week?;
    string Minute?;
    boolean AggregateToDay?;
    decimal Value?;
    decimal AdjustedValue?;
    string Forma?;
    string Forecast?;
    string ZoneXRefCode?;
    string MdseXRefCode?;
};

public type CandidateRTWDocumentSource record {
    string SingleDocumentBase64?;
    string DocumentFrontBase64?;
    string DocumentBackBase64?;
};

public type BenefitsDFLinkExportDependentRecord record {
    string RecordType?;
    int:Signed32 UniqueDependentId?;
    string EmployeeNationalId?;
    string NationalId?;
    string NationalIDExpiryDate?;
    string FirstName?;
    string MiddleName?;
    string LastName?;
    string DateOfBirth?;
    int:Signed32 GenderCode?;
    string RelationshipCode?;
    int:Signed32 MedicareStatusCode?;
    int:Signed32 MedicareReasonCode?;
    boolean StudentIndicator?;
    boolean DependentHandicapIndicator?;
    string DeathDate?;
    string EligibilityBeginDate?;
    string EligibilityEndDate?;
    string XRefCode?;
    boolean TobaccoSubstanceUse?;
    string DateLastSmoked?;
    int:Signed32 Height?;
    int:Signed32 Weight?;
    boolean InitialNoticeFlag?;
    string SocialSecurityDisabilityAwardDate?;
    int:Signed32 DependentAge?;
    BenefitsDFLinkExportAddress[] AddressDetails?;
    BenefitsDFLinkExportContact[] ContactDetails?;
    BenefitsDFLinkExportDependentElectionDetail[] DependentElectionDetails?;
};

public type Payload_IEnumerable_Department record {
    Department[] Data?;
    ProcessResult[] ProcessResults?;
};

public type HRPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PunchPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeAUSSuperannuationCollection record {
    EmployeeAUSSuperannuation[] Items?;
};

public type Payload_Location record {
    Location Data?;
    ProcessResult[] ProcessResults?;
};

public type AmfAuthorize record {
    string[] Tags?;
};

public type DocumentImportQueueRequest record {
    string FileName?;
    string Link?;
    string DocumentTypeXRefCode?;
    string EntityTypeXRefCode?;
    string Entity?;
    string EmployeeNumber?;
    string[] Tags?;
    string Comment?;
    string AdditionalData?;
    string EmployeeXRefCode?;
};

public type EmployeeWorkPattern record {
    decimal NetHours?;
    string ShiftTimeBegin?;
    string ShiftTimeEnd?;
    int:Signed32 WorkPatternDayIndex?;
    Department Deparment?;
    Job Job?;
    WorkPatternShiftType ShiftType?;
    Location Location?;
    OrgLocationType OrgLocationType?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_AnalyticsReportDefinitions record {
    AnalyticsReportDefinitions[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeTimeAwayFromWork record {
    string TAFWXRefCode?;
    string DateOfRequest?;
    string TimeStart?;
    string TimeEnd?;
    decimal NetHours?;
    decimal NetUnits?;
    int:Signed32 NetUnitsType?;
    string ManagerComment?;
    string EmployeeComment?;
    string ReasonName?;
    boolean AllDay?;
    boolean HalfDay?;
    decimal DailyElapsedHours?;
};

public type EmployeeSchedulePatchAPIRequestDTO record {
    string EmployeeScheduleXRefCode;
    string TimeStart?;
    string TimeEnd?;
    boolean IsDeleted?;
    string EmployeeXRefCode?;
    boolean PostShiftBid?;
    EmployeeScheduleMBPostAPIRequestDTO[] Breaks?;
    EmployeeScheduleActivityPostAPIRequestDTO[] Activities?;
    EmployeeScheduleSegmentAPIRequestDTO[] Segments?;
    string PositionXRefCode?;
    string DocketXRefCode?;
    string PayAdjCodeXRefCode?;
    string OrgLocationTypeXRefCode?;
    string ProjectXRefCode?;
    string Comment?;
    EmployeeScheduleLaborMetricPostAPIRequestDTO[] LaborMetrics?;
};

public type GlobalPropertyOption record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeConfidentialIdentificationCollection record {
    EmployeeConfidentialIdentification[] Items?;
};

public type EmployeeWorkAssignmentManager record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string TerminationDate?;
    string EmploymentStatusGroupXRefCode?;
    string ManagerXRefCode?;
    string ManagerName?;
    Position ActiveEmployeePosition?;
    Location ActiveEmployeeLocation?;
    string LastModifiedTimestamp?;
};

public type EmployeeUKIrregularPaymentDetails record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IrregularPayments?;
    string LegalEntityXrefCode?;
    string LastModifiedTimestamp?;
};

public type EmployeeGlobalPropertyValue record {
    string EffectiveEnd?;
    string EffectiveStart?;
    GlobalProperty GlobalProperty?;
    boolean BitValue?;
    decimal NumberValue?;
    GlobalPropertyOption OptionValue?;
    string StringValue?;
    string DateTimeValue?;
    string LastModifiedTimestamp?;
};

public type DEUTaxSocialInsurance record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string PublicHealthInsuranceXrefCode?;
    string LevyHealthInsuranceProviderXrefCode?;
    string HighestSchoolEducationXrefCode?;
    string HighestProfessionalEducationXrefCode?;
    string RelationToEmployerXrefCode?;
    boolean IsContractor?;
    boolean MainlySelfEmployed?;
    boolean IsParentLegalGuardian?;
    string NumberOfEntitledChildren?;
    string ContractTypeXrefCode?;
    string LevyXrefCode?;
    boolean IsMidijob?;
    boolean IsSeasonalEmployee?;
    string EmployeeGroupXrefCode?;
    string HealthInsuranceXrefCode?;
    string PensionInsuranceXrefCode?;
    string UnemploymentInsuranceXrefCode?;
    string CareInsuranceXrefCode?;
    string CalculationBasisXrefCode?;
    boolean EntitledToSickBenefit?;
    EmployeeOccupationalPension EmployeeOccupationalPension?;
    EmployeePrivateHealthInsurance EmployeePrivateHealthInsurance?;
    boolean MainEmploymentWithMultipleMiniJobs?;
    string LastModifiedTimestamp?;
};

public type PayRunStatus record {
    string PayGroupXRefCode?;
    string PayGroupName?;
    string PPN?;
    string PayDate?;
    string PeriodStartDate?;
    string PeriodEndDate?;
    string CountryCode?;
    string CountryName?;
    string Currency?;
    string Status?;
    string RejectionReason?;
    string RejectionReasonDescription?;
    string RejectionReasonXRefCode?;
    string RejectionReasonCategory?;
    string RejectionReasonCategoryXRefCode?;
};

public type EmployeeIRLTaxRPNCollection record {
    EmployeeIRLTaxRPN[] Items?;
};

public type DFVeteransStatus record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AnalyticsReportMetadata record {
    # Name of the Report.
    # The name will be localized, based on the Session Culture.
    string Name?;
    # Description of the Report.
    # The description will be localized, based on the Session Culture.
    string Description?;
    # Reference Code for the Report.
    # This is a unique, human readable, code used to identify the Report.
    string XRefCode?;
    # FeatureId of the report
    int:Signed32 ReportId?;
    # Maximum number of rows the Report will return as part of it's ResultSet.
    int:Signed32 MaxRows?;
    # 
    boolean OnlyIncludeUniqueRecords?;
    # An array of ReportColumnMetadata objects.
    AnalyticsReportColumnMetadata[] Columns?;
    # An array of AnalyticsParameterMetadata objects.
    AnalyticsReportFilterMetadata[] Filters?;
};

public type EmployeeGLSplitSetDetailUpsert record {
    int:Signed32 LaborPercentage?;
    boolean IsPrimary?;
    string[] LaborMetricsXRefCodes?;
};

public type PerformanceRating record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type TaxPropertyCollection record {
    TaxProperty[] Items?;
};

public type AmfRuleModel record {
    string WorkflowName?;
    string FunctionName?;
    AmfRuleParameterModel[] Parameters?;
};

public type BackgroundScreeningBillingCode record {
    string ProviderReference?;
    BackgroundScreeningProviderBillingCode[] BillingCodes?;
};

public type AmfCfg record {
    string Type?;
    string Model?;
    string Module?;
    string AppView?;
};

public type EmployeePayAdjustmentForSubmit record {
    string EmployeePayAdjustXRefCode?;
    string OrgUnitXRefCode?;
    string EmployeeXRefCode?;
    string PayAdjustmentCodeXRefCode?;
    string PayAdjustmentDate?;
    decimal Hours?;
    decimal Amount?;
    string JobXRefCode?;
    string DepartmentXRefCode?;
    string PayCategoryXRefCode?;
    string ProjectXRefCode?;
    string DocketXRefCode?;
    boolean IsPremium?;
    boolean IsDeleted?;
    decimal Rate?;
    string PayDate?;
    string ReferenceDate?;
    string EmployeeComment?;
    string ManagerComment?;
    boolean ManagerAuthorized?;
    boolean EmployeeAuthorized?;
    string AdjustPeriodStartDate?;
    string AdjustPeriodEndDate?;
    EmployeePayAdjustmentLaborMetrics[] LaborMetrics?;
};

public type PayrollEmployeeDeductionLimit record {
    decimal LimitAmount?;
    decimal LimitPercent?;
    string LimitTypeCodeName?;
    string ShortNameFormattedAmount?;
    string ShortNameFormattedPercent?;
    decimal PayGroupDefaultLimitAmount?;
    decimal PayGroupDefaultLimitPercent?;
    string PRDeductionLimitXRefCode?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_QuestionModel record {
    QuestionModel[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeSSOAccount record {
    EmployeeSSOAccount[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeDeductionPayeeParameter record {
    string ShortName?;
    string XRefCode?;
    string EmployeeElectedValue?;
    string PayeeDefaultValue?;
    string Comments?;
    string LastModifiedTimestamp?;
};

public type EmploymentAgreementDetails record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeIRLTaxPAYEExclusion record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean ExclusionOrder?;
    string LegalEntityXrefCode?;
    LegalEntity LegalEntity?;
    string LastModifiedTimestamp?;
};

public type LMSEnrollmentStatus record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeAUSFederalTaxCollection record {
    EmployeeAUSFederalTax[] Items?;
};

public type CourseProvider record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PayeeStateCoverage record {
    string StateCode?;
    string StateName?;
    string EffectiveStart?;
    string EffectiveEnd?;
};

public type AssignedSexCountryAware record {
    AssignedSexComplianceCode AssignedSexComplianceCode?;
    string UserDefinedComplianceCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_Projects record {
    Projects Data?;
    ProcessResult[] ProcessResults?;
};

public type DEUEmployeeAccidentInsuranceCollection record {
    DEUEmployeeAccidentInsurance[] Items?;
};

public type SuperannuationContributionCalculationType record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type EmployeeBalanceTransactionForPatch record {
    string TransactionDate?;
    decimal Delta?;
    decimal GrantDelta?;
    string Comment?;
};

public type Paging record {
    string Next?;
};

public type EmploymentStatus record {
    boolean IsBenefitArrearsEnabled?;
    string EffectiveStartingPointOfDay?;
    EmploymentStatusGroup EmploymentStatusGroup?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type City record {
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type MaritalStatus record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PMPosition record {
    string PositionGlobalId?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LedgerCode?;
    string Number?;
    decimal FTE?;
    BusinessUnit BusinessUnit?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeDeductionParameterCollection record {
    EmployeeDeductionParameter[] Items?;
};

public type Payload_IEnumerable_AuthorizationAssignment record {
    AuthorizationAssignment[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeAUSFederalTax record {
    EmployeeAUSFederalTax[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmergencyContactPersonContact record {
    string ContactNumber?;
    Country Country?;
    string ElectronicAddress?;
    string Extension?;
    string EffectiveStart?;
    string EffectiveEnd?;
    ContactInformationType ContactInformationType?;
    boolean IsForSystemCommunications?;
    boolean IsPreferredContactMethod?;
    boolean IsUnlistedNumber?;
    string FormattedNumber?;
    boolean IsVerified?;
    boolean IsRejected?;
    boolean ShowRejectedWarning?;
    int:Signed32 NumberOfVerificationRequests?;
    string LastModifiedTimestamp?;
};

public type Payload_OperatingHours record {
    OperatingHours Data?;
    ProcessResult[] ProcessResults?;
};

public type FederalFilingStatus record {
    string CountryCode?;
    string FederalFilingStatusCode?;
    string CalculationCode?;
    string PayrollOutput?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type GenderIdentityCountryAware record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeEarningPayeeParameter record {
    string ShortName?;
    string XRefCode?;
    string EmployeeElectedValue?;
    string PayeeDefaultValue?;
    string Comments?;
    string LastModifiedTimestamp?;
};

public type Payload_LegacyLaborMetricCodes record {
    LegacyLaborMetricCodes Data?;
    ProcessResult[] ProcessResults?;
};

public type BackgroundScreeningReportScreeningStatus record {
    string Status?;
    string AdjudicationStatus?;
    string Result?;
};

public type EmployeeDefaultLaborMetricsCodeCollection record {
    EmployeeDefaultLaborMetricsCode[] Items?;
};

public type EmployeeUKPostgraduateLoan record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string LegalEntityXrefCode?;
    string LastModifiedTimestamp?;
};

public type PlanTarget record {
    string PlanTargetXRefCode?;
    string Name?;
    string Description?;
    string EffectiveStart?;
    string EffectiveEnd?;
    decimal TargetValue?;
    string KpiXRefCode?;
    string ZoneXRefCode?;
    string[] DaysOfWeek?;
    string[] OrgUnitXRefCodes?;
    string CreationOrgUnitXRefCode?;
};

public type AmfValidationModel record {
    string Type?;
    record {} Value?;
};

public type OrgUnitLegalEntityCollection record {
    OrgUnitLegalEntity[] Items?;
};

public type Payload_IEnumerable_EmployeePayGradeRate record {
    EmployeePayGradeRate[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeePayAdjustCodeGroup record {
    EmployeePayAdjustCodeGroup[] Data?;
    ProcessResult[] ProcessResults?;
};

public type BenefitsDFLinkExportAddress record {
    string RecordType?;
    string AddressType?;
    string AddressLine1?;
    string AddressLine2?;
    string AddressLine3?;
    string City?;
    string County?;
    string StateCode?;
    string CountryCode?;
    string PostalCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
};

public type Payload_IEnumerable_Document record {
    Document[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_PayRunStatus record {
    PayRunStatus Data?;
    ProcessResult[] ProcessResults?;
};

public type LaborMetric record {
    string CodeXRefCode?;
    string TypeXRefCode?;
};

public type EmployeeDependentsBeneficiariesCollection record {
    EmployeeDependentBeneficiary[] Items?;
};

public type EmployeeCourseCollection record {
    EmployeeCourse[] Items?;
};

public type DocMgmtSecurityGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeWorkContract record {
    EmployeeWorkContract[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_KpiTargetPattern record {
    KpiTargetPattern[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayeePaymentMethod record {
    string PaymentMethodXrefCode?;
    string PaymentMethodName?;
    string StatementMessage?;
    string PayableTo?;
    boolean CombineEmployee?;
    boolean CombineEarningAndDeduction?;
    boolean ShowEmployeeDetail?;
    boolean AllowNegativeAmounts?;
    string AccountNumber?;
    string TransitNumber?;
    string AccountTypeName?;
    string AccountTypeCode?;
    string BankName?;
    string BankNumber?;
    boolean SuppressPrintOfAdviceStatements?;
    string PaymentFrequencyName?;
    string PaymentFrequencyXRefCode?;
    string StatementLanguageCode?;
    string StatementLanguageName?;
    string BuildingSocietyNumber?;
    string PayeeCode?;
    string PayeeReferenceNumber?;
    string ScheduleStartDate?;
    string ScheduleEndDate?;
    string SchedulePayDate?;
};

public type OperatingHoursRecurExceptionDetails record {
    int:Signed32 RecurrenceType?;
    int:Signed32 RecurrencePeriod?;
    string RecurrenceValue?;
    string RecurrenceEndDate?;
};

public type EarningType record {
    string CodeName?;
    boolean IsGLAllocatedDebit?;
    boolean IsGLAllocatedCredit?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PaginatedPayload_IEnumerable_EmployeeWorkLocationOverride record {
    EmployeeWorkLocationOverride[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type Payload_IEnumerable_DEUEmployeeAccidentInsurance record {
    DEUEmployeeAccidentInsurance[] Data?;
    ProcessResult[] ProcessResults?;
};

public type JobPostingApplicantModel record {
    string Locale?;
    int AppliedOnMillis?;
    JobPostingResponseModel Job?;
    ApplicantDetails Applicant?;
    QuestionsInResponse Questions?;
    CandidateProfileSource CandidateSource?;
};

public type EmployeeWorkLocationOverride record {
    string LocationName?;
    string Description?;
    string ReferenceCode?;
    boolean AllowLegalEntityOverride?;
    string LocationAddressXRefCode?;
    string Address?;
    string Address2?;
    string CityName?;
    string StateName?;
    string StateCode?;
    string PostalCode?;
    string County?;
    string CountryName?;
    string CountryCode?;
    string JeddTaxes?;
    LegalEntityOverride[] LegalEntityOverrideDetails?;
};

public type EmployeeUKStudentLoanCollection record {
    EmployeeUKStudentLoan[] Items?;
};

public type AwardDetails record {
    string Title?;
    string DateMonth?;
    string DateYear?;
    string Description?;
};

public type AnalyticsListValue record {
    # The Id of the list item.  This value would be passed as the parameter value.
    # Multiple Id's can be passed as a parameter value if comma separated.
    int:Signed32 ListValueId?;
    # The name that can be displayed in a list to the user.
    string Name?;
};

public type Payload_IEnumerable_LocationAddresses record {
    LocationAddresses[] Data?;
    ProcessResult[] ProcessResults?;
};

public type LegalEntity record {
    Country Country?;
    Address LegalEntityAddress?;
    string LegalIdNumber?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type DocumentImportQueueResponse record {
    string Status?;
    string JobGuid?;
    string QueueTimestamp?;
    int:Signed32[] DocumentsQueued?;
    ProcessResult[] ProcessResults?;
};

public type OrgLevel record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BackgroundJobLogParameters record {
    string Name?;
    string Value?;
};

public type VolunteerList record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeUSStateTax record {
    EmployeeUSStateTax[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_DeductionDefinition record {
    DeductionDefinition[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Activity record {
    string TimeStart?;
    string TimeEnd?;
    string XRefCode?;
};

public type PositionDetails record {
    string Title?;
    string Company?;
    string Location?;
    string StartDateMonth?;
    string StartDateYear?;
    string EndDateMonth?;
    string EndDateYear?;
    boolean EndCurrent?;
    string Description?;
};

public type DEUEmployeeAccidentInsurance record {
    string LegalEntityXrefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IsExempt?;
    string LastModifiedTimestamp?;
    DEUEmployeeAccidentInsuranceHazardCategoryCollection AccidentInsuranceHazardCategory?;
};

public type AccumulationType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type DeductionPayeeParameter record {
    string PayeeParameterName?;
    string PayeeParameterXRefCode?;
    string Value?;
};

public type DFUnion record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Department record {
    string LedgerCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type AccidentInsuranceHazardCategory record {
    string PRDEUAccidentInsuranceProvider_BBNR_UV?;
    string CategoryNumber?;
    int:Signed32 Percentage?;
};

public type LocationAddress record {
    string Address1?;
    string Address2?;
    string PostalCode?;
    State State?;
    Country Country?;
    string City?;
    string County?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeVolunteerList record {
    EmployeeVolunteerList[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeDefaultLaborMetricsCode record {
    LaborMetricsCode LaborMetricsCode?;
    string LastModifiedTimestamp?;
};

public type EmployeeAddress record {
    string AddressLine1?;
    string AddressLine2?;
    string City?;
    string State?;
    string Country?;
    string PostalCode?;
};

public type PRSIClass record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeEIRateCollection record {
    EmployeeCANEmploymentInsuranceRate[] Items?;
};

public type LimitType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_DEUTaxSocialInsurance record {
    DEUTaxSocialInsurance[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayClass record {
    int:Signed32 SortOrder?;
    decimal DefaultNormalWeeklyHours?;
    string LedgerCode?;
    PayClassGroup PayClassGroup?;
    PayClassFrequency PayClassFrequency?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LegalEntityAddress record {
    string AddressLine1?;
    string AddressLine2?;
    string City?;
    string State?;
    string Country?;
    string PostalCode?;
};

public type EmployeeSkill record {
    Skill Skill?;
    SkillLevel SkillLevel?;
    string EffectiveStart?;
    string EffectiveEnd?;
    Course Course?;
    TrainingProgram TrainingProgram?;
    LMSAssignmentMethod LMSAssignmentMethod?;
    string LastAssignedBy?;
    string LastModifiedTimestamp?;
};

public type LegalEntityWorkSiteState record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LaborCostTimeInterval record {
    string IntervalStartTime?;
    string IntervalEndTime?;
    LaborCostTotalResult Totals?;
};

public type Payload_IEnumerable_EmployeePayrollElectionDeletionModel record {
    EmployeePayrollElectionDeletionModel[] Data?;
    ProcessResult[] ProcessResults?;
};

public type BioSensitivityLevel record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type ClientMetadata record {
    string ServiceVersion?;
    string ServiceUri?;
};

public type EarningPayee record {
    string EarningScheduleName?;
    string EarningScheduleXRefCode?;
    EarningPayeeParameter[] PayeeParameters?;
    EarningPayeeEarningParameter[] PayeeEarningParameters?;
    EarningPayeeEarningLimit[] PayeeEarningLimits?;
    string PayeeName?;
    string PayeeXRefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean Default?;
};

public type PayrollPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BackgroundScreeningProviderPackage record {
    string PackageId?;
    string Name?;
    string Description?;
    boolean IncludeRTW?;
    BackgroundScreeningAssociatedBillingCode[] AssociatedBillingCodes?;
};

public type Payload_IEnumerable_EmployeeCANEmploymentInsuranceRate record {
    EmployeeCANEmploymentInsuranceRate[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayTypeGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeWorkAssignmentManager record {
    EmployeeWorkAssignmentManager[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeEthnicity record {
    string EffectiveStart?;
    string EffectiveEnd?;
    DFEthnicity Ethnicity?;
    DFEthnicity ManagerEthnicity?;
    string LastModifiedTimestamp?;
};

public type EmployeeWorkAssignment record {
    Position Position?;
    Location Location?;
    EmploymentIndicator EmploymentIndicator?;
    EmploymentStatusReason EmploymentStatusReason?;
    string EffectiveStart?;
    string EffectiveEnd?;
    decimal FlatAmount?;
    decimal FTE?;
    boolean IsPAPrimaryWorkSite?;
    boolean IsPrimary?;
    boolean IsStatutory?;
    boolean IsVirtual?;
    string BusinessTitle?;
    JobSetLevel JobSetLevel?;
    decimal LaborPercentage?;
    string LastModifiedTimeStamp?;
    decimal MultiJSalaryAllocationPercent?;
    boolean ParticipateInReciprocalTaxCalculation?;
    decimal TelecommuterPercentage?;
    boolean IsConvenienceOfEmployee?;
    boolean EndSecondaryWorkAssignments?;
    PositionTerm PositionTerm?;
    BankAccountBranchAddress PRBankAccountBranchAddress?;
    WorkLocationOverride WorkLocationOverride?;
    int Rank?;
    decimal JobRate?;
    TipTypeGroup TipTypeGroup?;
    string LedgerCode?;
    PMPositionAssignment PMPositionAssignment?;
    JobClassificationGlobal JobClassificationGlobal?;
};

public type EmployeeUKTaxDetailsCollection record {
    EmployeeUKTaxDetails[] Items?;
};

public type DeductionParameter record {
    ParameterAccessType ParameterAccessType?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_AnalyticsReportDataset record {
    AnalyticsReportDataset Data?;
    ProcessResult[] ProcessResults?;
};

public type LMSCertificationStatus record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeEmploymentAgreementCollection record {
    EmployeeEmploymentAgreement[] Items?;
};

public type EmployeeGLSplits record {
    string EmployeeName?;
    string EmployeeNumber?;
    string EmployeeXRefCode?;
    EmployeeGLSplitSets[] EmployeeGLSplitSets?;
};

public type EmployeeAvailabilityWeeksPostRequestDTO record {
    EmployeeAvailabilityDaysPostRequestDTO[] Days;
};

public type PayrollPayEntryImportHistory record {
    string PayGroupXRefCode?;
    string Currency?;
    string PeriodStart?;
    string PeriodEnd?;
    string PayDate?;
    string PPN?;
    PayrollPayEntryImportHistoryDetails[] Imports?;
};

public type Payload_IEnumerable_UserPayAdjustCodeGroup record {
    UserPayAdjustCodeGroup[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Publications record {
    int:Signed32 _Total?;
    PublicationDetails[] Values?;
};

public type PaginatedPayload_IEnumerable_EmployeePayrollElection record {
    EmployeePayrollElection[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeePrivateHealthInsurance record {
    string HealthInsuranceStartDate?;
    string PrivateHealthInsuranceXrefCode?;
    string PaymentCompletedByXrefCode?;
    decimal TotalContributionHealth?;
    decimal TotalContributionCare?;
    decimal BaseContributionHealth?;
    decimal BaseContributionCare?;
    string LastModifiedTimestamp?;
};

public type BackgroundScreeningAssociatedBillingCode record {
    string BillingCodeId?;
    string Name?;
    string Description?;
};

public type KpiTargetPatternPOST record {
    KpiTargetPatternAssignment[] Assignment?;
    KpiTargetPatternDetail[] Pattern?;
};

public type PayeeParameter record {
    string PayeeParameterName?;
    string PayeeParameterDescription?;
    string PayeeParameterXRefCode?;
    string AccessTypeName?;
    string AccessTypeCode?;
    string ParameterTypeName?;
    string ParameterTypeXRefCode?;
    boolean Required?;
    string Pattern?;
    int:Signed32 MaxLength?;
    string DataTypeCode?;
};

public type PunchExtraData record {
    string DocketXRefCode?;
    string ProjectXRefCode?;
    string PositionXRefCode?;
    string LocationXRefCode?;
    decimal Quantity?;
    string MealWaiver?;
    boolean BreakAttestation?;
    boolean BioFailure?;
    boolean FaceVerificationFailure?;
    PunchLaborMetric[] LaborMetrics?;
    string DocketClockTransferCode?;
    string ProjectClockTransferCode?;
    string PositionClockTransferCode?;
    string LocationClockTransferCode?;
};

public type EmployeePaySummary record {
    string EmployeeXRefCode?;
    string PositionXRefCode?;
    string DepartmentXRefCode?;
    string JobXRefCode?;
    string PayCodeXRefCode?;
    string PayCategoryXRefCode?;
    string PayDate?;
    string BusinessDate?;
    string TimeStart?;
    string TimeEnd?;
    string PunchSegmentStart?;
    string LocationXRefCode?;
    decimal NetHours?;
    int:Signed32 MinuteDuration?;
    decimal Rate?;
    decimal PayAmount?;
    boolean IsPremium?;
    string ProjectXRefCode?;
    string DocketXRefCode?;
    decimal PieceQuantity?;
    int PayExportId?;
    string LaborMetricsCode0XRefCode?;
    string LaborMetricsCode1XRefCode?;
    string LaborMetricsCode2XRefCode?;
    string LaborMetricsCode3XRefCode?;
    string LaborMetricsCode4XRefCode?;
    string LaborMetricsCode5XRefCode?;
    string LaborMetricsCode6XRefCode?;
    string LaborMetricsCode7XRefCode?;
    string LaborMetricsCode8XRefCode?;
    string LaborMetricsCode9XRefCode?;
};

public type CalculationType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PolicyAssociation record {
    string Person?;
    string XRefCode?;
    string Number?;
    string StartDate?;
    string PersonType?;
    string Status?;
    boolean ExemptedFromDataMinimization?;
    string DataManagementCountryCode?;
};

public type Payload_IEnumerable_ReportMetadata record {
    ReportMetadata[] Data?;
    ProcessResult[] ProcessResults?;
};

public type DeductionCode record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeLocationCollection record {
    EmployeeLocation[] Items?;
};

public type EmployeeSchedulePostAPIRequestDTO record {
    string TimeStart;
    string TimeEnd;
    string PositionXRefCode;
    string EmployeeXRefCode?;
    boolean PostShiftBid?;
    EmployeeScheduleMBPostAPIRequestDTO[] Breaks?;
    EmployeeScheduleActivityPostAPIRequestDTO[] Activities?;
    EmployeeScheduleSegmentAPIRequestDTO[] Segments?;
    string DocketXRefCode?;
    string PayAdjCodeXRefCode?;
    string OrgLocationTypeXRefCode?;
    string ProjectXRefCode?;
    string Comment?;
    EmployeeScheduleLaborMetricPostAPIRequestDTO[] LaborMetrics?;
};

public type EmployeePayrollTaxName record {
    string TaxName?;
    string Description?;
};

public type QuestionConditionModel record {
    string id?;
    string value?;
};

public type LaborMetricsCodesForSubmit record {
    string ShortName?;
    string LongName?;
    string EffectiveFrom?;
    string EffectiveEnd?;
    string LaborMetricsCodeXRefCode?;
    string ClockTransferCode?;
    string LedgerCode?;
    string[] OrgUnitXRefCodes?;
    string LaborMetricsTypeXRefCode?;
    boolean IsDeleted?;
};

public type PaginatedPayload_String record {
    string Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type PaginatedPayload_IEnumerable_EmployeePayAdjustment record {
    EmployeePayAdjustment[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type BackgroundScreeningProviderBillingCode record {
    string BillingCodeId?;
    string Name?;
    string Description?;
    BackgroundScreeningAssociatedPackage[] AssociatedPackages?;
};

public type ShiftTradePolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeCourse record {
    EmployeeCourse[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeOnboardingPolicyCollection record {
    EmployeeOnboardingPolicy[] Items?;
};

public type EmployeeWorkContractCollection record {
    EmployeeWorkContract[] Items?;
};

public type AmfOnCUDActionModel record {
    string Type?;
    0|1|2 Action?;
    string Location?;
    record {} Value?;
    record {} Params?;
};

public type UserEmployeeAuthorityTypeAssignmentCollection record {
    AuthorizationAssignment[] Items?;
};

public type DFEthnicity record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeMaritalStatus record {
    EmployeeMaritalStatus[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PersonAddress record {
    string Address1?;
    string Address2?;
    string Address3?;
    string Address4?;
    string Address5?;
    string Address6?;
    string City?;
    string PostalCode?;
    Country Country?;
    State State?;
    ContactInformationType ContactInformationType?;
    boolean IsPayrollMailing?;
    boolean DisplayOnTaxForm?;
    boolean DisplayOnEarningStatement?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string County?;
    string LastModifiedTimestamp?;
};

public type ListValue record {
    # The Id of the list item.  This value would be passed as the parameter value.
    # Multiple Id's can be passed as a parameter value if comma separated.
    int:Signed32 ListValueId?;
    # The name that can be displayed in a list to the user.
    string Name?;
};

public type EmployeeMaritalStatusCollection record {
    EmployeeMaritalStatus[] Items?;
};

public type Payload_IEnumerable_EmployeePayrollElection record {
    EmployeePayrollElection[] Data?;
    ProcessResult[] ProcessResults?;
};

public type ManagerAssignShiftBidDTO record {
    string GroupXRefCode;
    string EmployeeXRefCode;
};

public type CandidateRightToWorkResult record {
    int:Signed32 CandidateRightToWorkResultId?;
    string WorkRightStatus?;
    string Status?;
    string DateIssued?;
    int:Signed32 PartnerIdentifier?;
    string DateCompleted?;
    string WorkRightEffectiveStart?;
    string WorkRightEffectiveEnd?;
    CandidateRTWRejectionReason[] RejectionOrCancellationReasons?;
    CandidateRTWDocument[] Documents?;
};

public type EmergencyContactCollection record {
    EmployeeEmergencyContact[] Items?;
};

public type PaginatedPayload_IEnumerable_BackgroundJobLog record {
    BackgroundJobLog[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeePayGradeRateCollection record {
    EmployeePayGradeRate[] Items?;
};

# This class encapsulates the report data generated during the execution of the report.
public type AnalyticsReportColumnMetadata record {
    # CodeName is a unique name that can be used with code
    # to refer to this specific column.  Its value should be consistent.
    string Name?;
    # This is a name as defined by a user when developing this report.  This name
    # would be a human facing name that would be used on a printed report.
    # This field is used as the key to the values dictionary
    string Description?;
    # This is a string representation of the data type.
    string DataType?;
};

public type BenefitsDFLinkExportBeneficiaryElectionDetail record {
    string RecordType?;
    int:Signed32 UniqueBeneficiaryId?;
    string PlanTypeCode?;
    string PlanSubTypeCode?;
    string PlanXrefCode?;
    string PlanCode?;
    string PolicyNumber?;
    string OptionCode?;
    string CoverageStartDate?;
    string CoverageEndDate?;
    decimal BeneficiaryPercentage?;
    boolean ContingentBeneficiaryIndicator?;
    string EffectiveStartDate?;
    string EffectiveEndDate?;
    string PlanStartDate?;
};

public type EmployeeVOI record {
    EmployeeEarningSummary[] Earnings?;
    string Namespace?;
    EmployeeLegalEntity[] LegalEntities?;
    string NationalIdNumber?;
    string EmployeeXRefCode?;
    string FirstName?;
    string MiddleName?;
    string LastName?;
    string BirthDate?;
    EmployeeAddress EmployeeResidentialAddress?;
};

# Report meta data that defines report parameters.
# Parameter values are supplied by the end-user for execution.
# All parameters must be supplied during execution.
# Not all Parameters have default value.
public type ReportParameterMetadata record {
    # Name of the parameter.
    string Name?;
    # Human readable name of the parameter.
    string DisplayName?;
    # Unique Id of parameter.
    string ReportParameterMetadataId?;
    # Data type of the parameter.
    string DataType?;
    # Operator type of the parameter, such as =, &lt;, &gt;=, etc...
    # Not all parameters have operator type.
    # For example, SQL Parameters don't have operators.
    string Operator?;
    # Default value that will be used if no other value is provided for the parameter.
    # Not all parameters have default value.
    # End-user needs to supply a value in here if the parameter doesn't have value.
    # Reference values should contain Ids and be comma separated. E.g "1,2,3"
    string DefaultValue?;
    # True if a value needs to be supplied.
    boolean IsRequired?;
    # List of available values a parameter can have.
    ListValue[] AvailableValues?;
};

public type PRPayeeEarning record {
    string ShortName?;
    string PayeeXRefCode?;
    string LongName?;
    string PaymentMethodCode?;
    string LastModifiedTimestamp?;
};

public type BackgroundJobLog record {
    int:Signed32 BackgroundJobLogId?;
    string BackgroundJobLogGuid?;
    string Name?;
    string CodeName?;
    string Status?;
    boolean WasScheduled?;
    boolean HasItemLevelErrors?;
    string QueueTimeUtc?;
    string ExecStartTimeUtc?;
    string ExecEndTimeUtc?;
    string SubmittedBy?;
    BackgroundJobLogParameters[] Parameters?;
    string JobInformation?;
    string ErrorInformation?;
    string DebugInformation?;
    string FileList?;
    string LastModifiedTimestampUtc?;
};

public type Payload_IEnumerable_EmployeeOnboardingPolicy record {
    EmployeeOnboardingPolicy[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeePayrollElection record {
    string EmployeeName?;
    string EmployeeNumber?;
    string EmployeeXRefCode?;
    int RowNumber?;
    PayrollElection[] Elections?;
    string CurrentPayRunStatus?;
    string CurrentPayPeriodStart?;
    string CurrentPayPeriodEnd?;
    string PreviousPayPeriodStart?;
    string PreviousPayPeriodEnd?;
};

public type EmployeeDisability record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string EvidenceNumber?;
    string CountryCode?;
    string DisabilityEvidenceIssuingAgencyLocation?;
    string ValidFrom?;
    string ExpiryDate?;
    DisabilityEvidenceIssuingAgency DisabilityEvidenceIssuingAgency?;
    DisabilityEvidenceType DisabilityEvidenceType?;
    DisabilityWorkingTime DisabilityWorkingTime?;
    DisabilityGroup DisabilityGroup?;
    string LastModifiedTimestamp?;
};

public type EmployeePayAdjustCodeGroup record {
    PayAdjCodeGroup PayAdjCodeGroup?;
    string LastModifiedTimestamp?;
};

public type PayClassFrequency record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PayGroupBrief record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EarningLimit record {
    LimitAccessType LimitAccessType?;
    AccumulationType AccumulationType?;
    LimitType LimitType?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeOnboardingPolicy record {
    OnboardingPolicy OnboardingPolicy?;
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IsInternalHire?;
    string LastModifiedTimestamp?;
};

public type CandidateDetails record {
    string FirstName?;
    string LastName?;
    string Headline?;
    string Summary?;
    string PublicProfileUrl?;
    string AdditionalInfo?;
    string PhoneNumber?;
    string HomePhoneNumber?;
    CandidateLocation Location?;
    string Skills?;
    Positions Positions?;
    Educations Educations?;
    Links Links?;
    Awards Awards?;
    Certifications Certifications?;
    Associations Associations?;
    Patents Patents?;
    Publications Publications?;
    MilitaryServices MilitaryServices?;
};

public type Payload_IEnumerable_EmployeeHealthWellness record {
    EmployeeHealthWellness[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_PlanTarget record {
    PlanTarget[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayGroup record {
    PayFrequency PayFrequency?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type CandidateLocation record {
    string City?;
    string PostalCode?;
    string Address1?;
    string Address2?;
    string Address3?;
    string Country?;
    string StateCode?;
    string StateName?;
    string County?;
};

public type Payload_Employee record {
    Employee Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_PayType record {
    PayType[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Skill record {
    SkillType SkillType?;
    SkillLevel[] SkillLevel?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LegacyLaborMetricForSubmit record {
    string ShortName?;
    string LongName?;
    string LegacyLaborMetricType?;
    string LegacyLaborMetricXRefCode?;
};

public type EmployeeScheduleSegmentLaborMetric record {
    string CodeXRefCode?;
    string TypeXRefCode?;
};

public type EmergencyContactPersonAddress record {
    string Address1?;
    string Address2?;
    string Address3?;
    string Address4?;
    string Address5?;
    string Address6?;
    string County?;
    string City?;
    string PostalCode?;
    Country Country?;
    State State?;
    string EffectiveStart?;
    string EffectiveEnd?;
    ContactInformationType ContactInformationType?;
    boolean IsPayrollMailing?;
    boolean DisplayOnTaxForm?;
    boolean DisplayOnEarningStatement?;
    string LastModifiedTimestamp?;
};

public type EmployeeCompensationCollection record {
    EmployeeCompensation[] Items?;
};

public type EmployeeVOE record {
    string Namespace?;
    EmployeeLegalEntity[] LegalEntities?;
    string NationalIdNumber?;
    string EmployeeXRefCode?;
    string FirstName?;
    string MiddleName?;
    string LastName?;
    string BirthDate?;
    EmployeeAddress EmployeeResidentialAddress?;
};

public type PersonManagementExemption record {
    string AppliedByName?;
    string Country?;
    string PersonType?;
    string Name?;
    string Number?;
    string EmploymentStatus?;
    string AppliedOn?;
};

public type Payload_Position record {
    Position Data?;
    ProcessResult[] ProcessResults?;
};

public type Location record {
    boolean PhysicalLocation?;
    string BusinessPhone?;
    string ContactBusinessPhone?;
    string ContactCellPhone?;
    string PostalCode?;
    string CountryCode?;
    string OpeningDate?;
    string ClosingDate?;
    HRConfigurationEntity ComparableLocation?;
    Department Department?;
    Zone Zone?;
    int:Signed32 StartDayOfWeek?;
    City GeoCity?;
    TimeZone Timezone?;
    string County?;
    boolean IsOrgManaged?;
    boolean IsMobileOrg?;
    string PublicName?;
    string ClockTransferCode?;
    string ContactEmail?;
    string ContactName?;
    string LedgerCode?;
    string StateCode?;
    string Address?;
    string Address2?;
    LegalEntity LegalEntity?;
    OrgUnitLegalEntityCollection OrgUnitLegalEntities?;
    OrgUnitParentCollection OrgUnitParents?;
    ChildLocationCollection ChildOrgUnits?;
    OrgUnitLocationTypeCollection OrgUnitLocationTypes?;
    OrgLevel OrgLevel?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeCANTaxStatusCollection record {
    EmployeeCANTaxStatus[] Items?;
};

public type WorkLocationAddress record {
    string AddressLine1?;
    string AddressLine2?;
    string City?;
    string State?;
    string Country?;
    string PostalCode?;
};

public type Payload_IEnumerable_EarningDefinition record {
    EarningDefinition[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PaginatedPayload_IEnumerable_TrainingProgram record {
    TrainingProgram[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type EmployeeIRLTaxRPN record {
    string EffectiveStart?;
    string EffectiveEnd?;
    string EmploymentCessationDate?;
    int:Signed32 TaxYear?;
    string RpnNumber?;
    string EmployeePpsn?;
    string EmploymentID?;
    string RpnIssueDate?;
    string EmployerReference?;
    string FirstName?;
    string FamilyName?;
    string PreviousEmployeePPSN?;
    string IncomeTaxCalculationBasis?;
    boolean ExclusionOrder?;
    decimal YearlyTaxCredits?;
    decimal PayForIncomeTaxToDate?;
    decimal IncomeTaxDeductedToDate?;
    string UscStatus?;
    decimal PayForUSCToDate?;
    decimal UscDeductedToDate?;
    decimal LptToDeduct?;
    boolean PRSIExempt?;
    string PrsiClass?;
    decimal TaxRatePercent1?;
    decimal YearlyRateCutOff1?;
    decimal TaxRatePercent2?;
    decimal UscRatePercent1?;
    decimal YearlyUSCRateCutOff1?;
    decimal UscRatePercent2?;
    decimal YearlyUSCRateCutOff2?;
    decimal UscRatePercent3?;
    decimal YearlyUSCRateCutOff3?;
    decimal UscRatePercent4?;
    string LegalEntityXrefCode?;
    LegalEntity LegalEntity?;
    string LastModifiedTimestamp?;
};

public type EmployeeBalanceTransaction record {
    string TransactionDate?;
    string ExpiryDate?;
    decimal Delta?;
    decimal GrantDelta?;
    int:Signed32 TransactionSource?;
    string TAFWXRefCode?;
    string Comment?;
    string ApprovalStatus?;
};

public type Payload_IEnumerable_LaborValidationRule record {
    LaborValidationRule[] Data?;
    ProcessResult[] ProcessResults?;
};

public type PayrollCountry record {
    string CountryName?;
    string CountryCode?;
    boolean HCMPayrollCountry?;
    boolean ConnectedPayCountry?;
    boolean IPSEnabled?;
    boolean PayGroup?;
    string DefaultTimeZoneName?;
    string DefaultTimeZoneXRefCode?;
};

public type Payload_IEnumerable_EmployeeWorkAssignment record {
    EmployeeWorkAssignment[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeHRPolicy record {
    EmployeeHRPolicy[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmploymentIndicator record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeSchedulePostAPIResponse record {
    string EmployeeScheduleXRefCode?;
    string EmployeeXRefCode?;
    string TimeStart?;
    string TimeEnd?;
};

public type BenefitsDFLinkExportCareProvider record {
    string RecordType?;
    string ProviderIDQualifier?;
    string ProviderId?;
    string RelationshipCode?;
    string EntityIDCode?;
};

public type Payload_IEnumerable_EmployeeTimeAwayFromWork record {
    EmployeeTimeAwayFromWork[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_PayrollPayEntryImportHistory record {
    PayrollPayEntryImportHistory Data?;
    ProcessResult[] ProcessResults?;
};

public type JobStepPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PRTaxResidentCode record {
    string XRefCode?;
    string LastModifiedTimestamp?;
    string ShortName?;
    string LongName?;
};

public type LaborValidationRule record {
    int:Signed32 PolicyId?;
    string PolicyXRefCode?;
    string XRefCode?;
    string Name?;
    string Description?;
    string EffectiveFrom?;
    string EffectiveTo?;
    boolean Active?;
    string CodeName?;
    int:Signed32 Sequence?;
    string ValidationErrorMessage?;
    int:Signed32 SeverityLevel?;
    LaborValidationModel[] Models?;
    LaborValidationQualifier[] Children?;
    LaborValidationQualifier[] Qualifiers?;
};

public type EmploymentAgreementType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeEarningParameterCollection record {
    EmployeeEarningParameter[] Items?;
};

public type UserPayAdjustCodeGroup record {
    PayAdjCodeGroup PayAdjCodeGroup?;
    string LastModifiedTimestamp?;
};

public type ContactInformationType record {
    ContactInformationTypeGroup ContactInformationTypeGroup?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LaborCostResult record {
    string LocationXRefCode?;
    string CalendarDate?;
    string Currency?;
    LaborCostTotalResult Totals?;
    LaborCostTimeInterval[] Intervals?;
};

public type DeductionLimit record {
    LimitAccessType LimitAccessType?;
    AccumulationType AccumulationType?;
    LimitType LimitType?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_AnalyticsReportMetadata record {
    AnalyticsReportMetadata Data?;
    ProcessResult[] ProcessResults?;
};

public type ApplicantResume record {
    string Text?;
    string HrXml?;
    string Html?;
    CandidateDetails Json?;
    FileDetails File?;
};

public type EmployeeEarningSummary record {
    int:Signed32 Year?;
    string NationalIdNumber?;
    string FirstName?;
    string LastName?;
    decimal RateOfPay?;
    EmployeeAddress EmployeeResidentialAddress?;
    decimal GrossEarningYTD?;
    decimal GrossNormalEarningYTD?;
    decimal GrossOverTimeEarningYTD?;
    decimal GrossBonusEarningYTD?;
    decimal GrossCommissionEarningYTD?;
    decimal GrossOtherEarningYTD?;
    boolean EarningGroupingsSumUp?;
    string EmploymentStatus?;
    string EmploymentType?;
    string JobAssignment?;
    string HireDate?;
    string TerminationDate?;
    string PayFrequency?;
    string PayType?;
    string LastPayrollPayDate?;
    string LegalEntityName?;
    string FEIN?;
    LegalEntityAddress LegalEntityAddress?;
};

public type LaborMetricsType record {
    string ClockTransferCode?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type BidderInfo record {
    string EmployeeXRefCode?;
    decimal BaseRate?;
    decimal CurrentWeeklyHours?;
    string SeniorityDate?;
};

public type Payload_IEnumerable_EmployeeManager record {
    EmployeeManager[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeHealthWellness record {
    string TobaccoUser?;
    string DateLastSmoked?;
    string EffectiveStart?;
    string EffectiveEnd?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeTrainingProgram record {
    EmployeeTrainingProgram[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_PayGroupCalendar record {
    PayGroupCalendar Data?;
    ProcessResult[] ProcessResults?;
};

public type ParameterAccessType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type OrgUnitLocationType record {
    OrgLocationType LocationType?;
    string LastModifiedTimestamp?;
};

public type Payload_List_Employee record {
    Employee[] Data?;
    ProcessResult[] ProcessResults?;
};

public type LaborMetricTypeForSubmit record {
    string ShortName?;
    string LongName?;
    string LaborMetricTypeXRefCode?;
    string ClockTransferCode?;
    boolean IsDeleted?;
};

public type EarningCode record {
    EarningType EarningType?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type LegalEntityDEUShortTimeWork record {
    int:Signed32 LegalEntityDEUShortTimeWorkID?;
    string StoppageNumber?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type CandidateScreeningDetailedResult record {
    string ReportIdentifier?;
    string ScreeningType?;
    string Status?;
    string Result?;
    string CompletionDate?;
};

public type EmployeePayrollTax record {
    string TaxAuthority?;
    string TaxType?;
    EmployeePayrollTaxName Name?;
    boolean EmployeeTax?;
    boolean EmployerTax?;
    string LegalEntity?;
    string ResidentCode?;
    boolean ManuallyAddedTax?;
    string[] Addresses?;
    string TaxAuthorityInstance?;
    string LegalEntityXrefCode?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeClockDeviceGroup record {
    EmployeeClockDeviceGroup[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeePayrollTax record {
    EmployeePayrollTax[] Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeConfidentialIdentification record {
    EmployeeConfidentialIdentification[] Data?;
    ProcessResult[] ProcessResults?;
};

public type DeductionPayee record {
    DeductionPayeeParameter[] PayeeParameters?;
    string PayeeName?;
    string PayeeXRefCode?;
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean Default?;
};

public type Payload_EmploymentStatusReason record {
    EmploymentStatusReason Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeCANFederalTaxCollection record {
    EmployeeCANFederalTax[] Items?;
};

public type EmployeePayrollTaxParameterElementName record {
    string ShortName?;
    string LongName?;
    string XRefCode?;
};

public type Payload_LaborMetricType record {
    LaborMetricType Data?;
    ProcessResult[] ProcessResults?;
};

public type CandidateRTWDocumentGenericError record {
    string Code?;
    string Message?;
};

public type EmployeeCompensation record {
    string EmployeeNumber?;
    string EffectiveEnd?;
    string EffectiveStart?;
    PayGrade PayGrade?;
    PayType PayType?;
    PayGroup PayGroup?;
    PayClass PayClass?;
    EmploymentStatusReason EmploymentStatusReason?;
    decimal AlternateRate?;
    decimal AverageDailyHours?;
    decimal AverageOvertimeRate?;
    decimal BaseRate?;
    boolean BaseRateManuallySet?;
    decimal BaseSalary?;
    decimal DailyRate?;
    decimal NormalWeeklyHours?;
    decimal NormalSemiMonthlyHoursTop?;
    decimal NormalSemiMonthlyHoursBottom?;
    string LastPayEditDate?;
    decimal VacationRate?;
    decimal MinimumRate?;
    decimal ControlRate?;
    decimal MaximumRate?;
    decimal RateMidPoint?;
    decimal MinimumSalary?;
    decimal ControlSalary?;
    decimal MaximumSalary?;
    decimal SalaryMidPoint?;
    decimal CompRatio?;
    decimal ChangePercent?;
    decimal ChangeValue?;
    decimal PreviousBaseSalary?;
    decimal PreviousBaseRate?;
    PayPolicy PayPolicy?;
    JobStepPolicy RatePolicy?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_KpiData record {
    KpiData[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmploymentAgreementSettlement record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeHRIncidentCollection record {
    EmployeeHRIncident[] Items?;
};

public type DocMgmtSecurityGroupUserMapCollection record {
    EmployeeDocumentManagementSecurityGroup[] Items?;
};

public type EmployeeDependentsBeneficiariesAddressCollection record {
    EmployeeDependentsBeneficiariesAddress[] Items?;
};

public type EmploymentStatusGroup record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type RelationshipType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

# Report meta data that defines report parameters.
# Parameter values are supplied by the end-user for execution.
# All parameters must be supplied during execution.
# Not all Parameters have default value.
public type AnalyticsReportFilterMetadata record {
    # Name of the parameter.
    string Name?;
    # Description of the Parameter.
    # The description will be localized, based on the Session Culture.
    string Description?;
    # Data type of the parameter.
    string DataType?;
    # Operator type of the parameter, such as =, &lt;, &gt;=, etc...
    # Not all parameters have operator type.
    # For example, SQL Parameters don't have operators.
    string Operator?;
    # True if a value needs to be supplied.
    boolean IsRequired?;
    # Value that will be used.
    # Reference values should contain Ids and be comma separated. E.g "1,2,3"
    string Value?;
    # True if the operator is editable
    boolean Editable?;
    # Sequence of the filter
    int:Signed32 Sequence?;
    # List of available values a parameter can have.
    AnalyticsListValue[] AvailableValues?;
};

public type EVerify record {
    string EVerifyCaseNumber?;
    string EVerifyStatus?;
    string EVerifyStatusDate?;
    string EVerifyStatusDesc?;
};

public type BenefitsDFLinkExportDependentElectionDetail record {
    string RecordType?;
    int:Signed32 EmployeeElectionId?;
    int:Signed32 UniqueDependentId?;
    string PlanTypeCode?;
    string PlanSubTypeCode?;
    string PlanXrefCode?;
    string PlanCode?;
    string PolicyNumber?;
    string OptionCode?;
    string CoverageStartDate?;
    string CoverageEndDate?;
    string EffectiveStartDate?;
    string EffectiveEndDate?;
    string PlanStartDate?;
    BenefitsDFLinkExportCareProvider[] CareProviderDetails?;
};

public type HRConfigurationEntity record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type LaborMetricType record {
    string Name?;
    string Description?;
    string ClockTransferCode?;
    string LaborMetricTypeXRefCode?;
};

public type Payload_ArchiveDocument record {
    ArchiveDocument Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeConfidentialIdentification record {
    string EffectiveStart?;
    string EffectiveEnd?;
    ConfidentialIdentificationType ConfidentialIdentificationType?;
    string CountryCode?;
    string ExpiryDate?;
    string IDNumber?;
    string PlaceOfIssue?;
    string IssueDate?;
    boolean UseForRTW?;
    string RTWDocReview?;
    string RTWDocReviewOn?;
    string LastModifiedTimestamp?;
};

public type EmployeeShortTimeWork record {
    int:Signed32 EmployeeShortTimeWorkId?;
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IncreasedRate?;
    boolean Consent?;
    DEUSTWParticipationReason DEUSTWParticipationReason?;
    LegalEntityDEUShortTimeWork LegalEntityDEUShortTimeWork?;
    string LastModifiedTimestamp?;
};

public type DisabilityWorkingTime record {
    int:Signed32 DisabilityWorkingTimeId?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type FLSAStatus record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeEmploymentType record {
    EmployeeEmploymentType[] Data?;
    ProcessResult[] ProcessResults?;
};

public type ProjectAssignmentType record {
    boolean IsAssignedAll?;
    string[] XrefCodes?;
};

public type SuperannuationContributionType record {
    string LastModifiedTimestamp?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
};

public type Payload_CarrierFeeds record {
    CarrierFeeds Data?;
    ProcessResult[] ProcessResults?;
};

public type Payload_IEnumerable_EmployeeIRLTaxEWSS record {
    EmployeeIRLTaxEWSS[] Data?;
    ProcessResult[] ProcessResults?;
};

public type EmployeeIRLTaxEWSS record {
    string EffectiveStart?;
    string EffectiveEnd?;
    boolean IsEWSSEligible?;
    string LegalEntityXrefCode?;
    LegalEntity LegalEntity?;
    string LastModifiedTimestamp?;
};

public type PersonManagementHistory record {
    string PurgeDate?;
    Validation ValidationMessage?;
    string[] Policy?;
    string Name?;
    string RemovalAction?;
    string ApprovedBy?;
    string PersonType?;
    string TerminationDate?;
};

public type Payee record {
    string Name?;
    string Description?;
    string XRefCode?;
    string PayeeCategoryName?;
    string PayeeCategoryXRefCode?;
    string OperatingCountryCode?;
    string OperatingCountryName?;
    boolean Active?;
    boolean EarningPayee?;
    boolean DeductionPayee?;
    boolean SystemPayee?;
    string ElectronicServiceAddress?;
    string BusinessNumber?;
    string UniqueSuperIdentifier?;
    PayeeAddress Address?;
    PayeePaymentMethod PaymentMethod?;
    PayeeHealthCareProvider HealthCareProvider?;
    PayeeParameter[] PayeeParameters?;
    PayeeStateCoverage[] StateCoverage?;
};

public type OperatingHoursExceptionDay record {
    string ExceptionName?;
    string ExceptionDescription?;
    string ExceptionStartDateTime?;
    string ExceptionEndDateTime?;
    string IsClosed?;
    OperatingHoursRecurExceptionDetails OperatingHoursRecurExceptionDetails?;
};

public type PFRatingScale record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type PositionAssignment record {
    Location Location?;
    decimal BudgetedHeadCount?;
    string EffectiveEnd?;
    string EffectiveStart?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type OperatingHoursDayPattern record {
    string SundayStartTime?;
    string SundayEndTime?;
    string MondayStartTime?;
    string MondayEndTime?;
    string TuesdayStartTime?;
    string TuesdayEndTime?;
    string WednesdayStartTime?;
    string WednesdayEndTime?;
    string ThursdayStartTime?;
    string ThursdayEndTime?;
    string FridayStartTime?;
    string FridayEndTime?;
    string SaturdayStartTime?;
    string SaturdayEndTime?;
};

public type LegalEntityMasterBankAccountSetting record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeEEO record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmployeeSkillCollection record {
    EmployeeSkill[] Items?;
};

public type Segment record {
    string TimeStart?;
    string TimeEnd?;
    decimal NetHours?;
    string DepartmentXRefCode?;
    string JobXRefCode?;
    string PositionXRefCode?;
    string OrgUnitXRefCode?;
    string OrgLocationTypeXRefCode?;
    string PayAdjCodeXRefCode?;
    string DocketXRefCode?;
    string ProjectXRefCode?;
    string Comment?;
    EmployeeScheduleSegmentLaborMetric[] LaborMetrics?;
};

public type Skills record {
    string SkillXRefCode?;
    string SkillLevelXRefCode?;
    boolean IsMandatory?;
};

public type EmployeeEmploymentType record {
    string EffectiveStart?;
    string EffectiveEnd?;
    EmploymentTypeConfig EmploymentType?;
    string TaxPayerId?;
    string DBAName?;
    boolean GamingProfitsDistributions?;
    boolean IR35?;
    PensionTypeConfiguration PensionType?;
    string ContractorTaxFormType?;
    string LastModifiedTimestamp?;
};

public type Payload_IEnumerable_EmployeeUnionMembership record {
    EmployeeUnionMembership[] Data?;
    ProcessResult[] ProcessResults?;
};

public type QuestionsInResponse record {
    QuestionModel[] Questions?;
    string Url?;
    int RetrievedOnMillis?;
    QuestionAnswers[] Answers?;
};

public type DisabilityEvidenceType record {
    int:Signed32 DisabilityEvidenceTypeId?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type ConfidentialIdentificationType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Patents record {
    int:Signed32 _Total?;
    PatentDetails[] Values?;
};

public type Payload_Boolean record {
    boolean Data?;
    ProcessResult[] ProcessResults?;
};

public type Zone record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type WorkPatternShiftType record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type EmergencyContactPersonAddressCollection record {
    EmergencyContactPersonAddress[] Items?;
};

public type EmployeeOccupationalPension record {
    string PensionStartDate?;
    string PensionProviderXrefCode?;
    string PaymentCompletedBy?;
    string MembershipNumber?;
    string LastModifiedTimestamp?;
};

public type EmployeeVolunteerListCollection record {
    EmployeeVolunteerList[] Items?;
};

public type OrgUnitLegalEntity record {
    HRConfigurationEntity LegalEntity?;
    string EffectiveStart?;
    string EffectiveEnd?;
    LegalEntityWorkSiteState LegalEntityWorkSiteState?;
    LegalEntityMasterBankAccountSetting OverrideCustomerFundingIdentifier?;
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};

public type Response record {
    string Identifier?;
};

public type ArchiveDocument record {
    string DocumentType?;
    string DocumentGroup?;
    int:Signed32 UserId?;
    string SourceReportUniqueId?;
    string PublishDateTime?;
    string Title?;
    int:Signed32 PageCount?;
    int:Signed32 CultureId?;
    string Contents?;
    string Link?;
    string FileName?;
    int SizeBytes?;
    string ReportAlternateTitle?;
    string EmployeeXRefCode?;
    boolean IsAvailableOnCloud?;
};

public type PredefinedValue record {
    string XRefCode?;
    string FriendlyName?;
};

public type PaginatedPayload_IEnumerable_DataEntry record {
    DataEntry[] Data?;
    ProcessResult[] ProcessResults?;
    Paging Paging?;
};

public type QuestionModel record {
    string id?;
    string 'type?;
    string question?;
    string text?;
    QuestionOptionModel[] options?;
    boolean required?;
    string format?;
    int:Signed32 'limit?;
    string min?;
    string max?;
    QuestionConditionModel condition?;
    QuestionHierarchicalOptionModel[] hierarchicalOptions?;
    boolean HTML?;
    string fontSize?;
};

public type KpiTargetPatternDetail record {
    int:Signed32 PatternIndex?;
    decimal Value?;
};

public type EmployeeDeductionParameter record {
    DeductionParameter DeductionParameter?;
    decimal Value?;
    decimal PayGroupValue?;
    string LastModifiedTimestamp?;
};

public type LMSEmployeeCertificationCollection record {
    LMSEmployeeCertification[] Items?;
};

public type WorkContractPremiumPolicy record {
    string XRefCode?;
    string ShortName?;
    string LongName?;
    string LastModifiedTimestamp?;
};
