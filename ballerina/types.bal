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

public type LaborMetricsCode record {
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "LaborMetricsType"}
    LaborMetricsType laborMetricsType?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: AppUserSSO_Patch_By_ssoInfo_xRefCode_isValidateOnly_clientNamespace
public type AppUserSSOPatchBySsoInfoXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type BackgroundScreeningPackage record {
    @jsondata:Name {value: "Packages"}
    BackgroundScreeningProviderPackage[] packages?;
    @jsondata:Name {value: "ProviderReference"}
    string providerReference?;
};

# Represents the Queries record for the operation: EmployeeEmploymentAgreement_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeEmploymentAgreementGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeMUSTaxDetails record {
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableDeductionDefinition record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    DeductionDefinition[] data?;
};

# Represents the Queries record for the operation: EarningStatement_Get_By_employeeXRefCode_earningStatementXRefCode_clientNamespace
public type EarningStatementGetByEmployeeXRefCodeEarningStatementXRefCodeClientNamespaceQueries record {
    # Employee XRefCode
    string employeeXRefCode;
};

public type EmployeeUSStateTax record {
    @jsondata:Name {value: "AdoptionDependents"}
    int:Signed32 adoptionDependents?;
    @jsondata:Name {value: "AdditionalAmount"}
    decimal additionalAmount?;
    @jsondata:Name {value: "ExemptionAmount"}
    decimal exemptionAmount?;
    @jsondata:Name {value: "FilingStatus"}
    StateFilingStatus filingStatus?;
    @jsondata:Name {value: "DependentAllowances"}
    int:Signed32 dependentAllowances?;
    @jsondata:Name {value: "AlternateCalculationCodeDisplayName"}
    string alternateCalculationCodeDisplayName?;
    @jsondata:Name {value: "Allowances"}
    int:Signed32 allowances?;
    @jsondata:Name {value: "IsLocked"}
    boolean isLocked?;
    @jsondata:Name {value: "PRYoungEntrepreneurExemptionOptOut"}
    boolean pRYoungEntrepreneurExemptionOptOut?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PersonalAllowances"}
    int:Signed32 personalAllowances?;
    @jsondata:Name {value: "IsTaxExempt"}
    boolean isTaxExempt?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "StateFilingStatusDisplayName"}
    string stateFilingStatusDisplayName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "AlternateCalculationCode"}
    string alternateCalculationCode?;
    @jsondata:Name {value: "AdditionalAllowances"}
    int:Signed32 additionalAllowances?;
    @jsondata:Name {value: "AdditionalTaxPercent"}
    decimal additionalTaxPercent?;
    @jsondata:Name {value: "AdditionalExemptionAmount"}
    decimal additionalExemptionAmount?;
};

public type CandidateRTWRejectionReason record {
    @jsondata:Name {value: "ReasonDescription"}
    string reasonDescription?;
    @jsondata:Name {value: "ReasonCode"}
    string reasonCode?;
};

public type LMSEmployeeCertification record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LMSCertification"}
    LMSCertification lMSCertification?;
    @jsondata:Name {value: "LMSAssignmentMethod"}
    LMSAssignmentMethod lMSAssignmentMethod?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "TrainingProgram"}
    TrainingProgram trainingProgram?;
    @jsondata:Name {value: "LMSCertificationStatus"}
    LMSCertificationStatus lMSCertificationStatus?;
    @jsondata:Name {value: "Course"}
    Course course?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "CertificationNumber"}
    string certificationNumber?;
};

public type EmployeeNZLKiwiSaver record {
};

public type GlobalProperty record {
    @jsondata:Name {value: "IsEditable"}
    boolean isEditable?;
    @jsondata:Name {value: "DataTypeParam"}
    string dataTypeParam?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "DataType"}
    int:Signed32 dataType?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "Sequence"}
    int:Signed32 sequence?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmployeeCardinality"}
    int:Signed32 employeeCardinality?;
    @jsondata:Name {value: "GenerateHREvent"}
    boolean generateHREvent?;
};

public type EmployeeLaborMetrics record {
    @jsondata:Name {value: "LaborMetricsTypeXRefCode"}
    string laborMetricsTypeXRefCode?;
    @jsondata:Name {value: "LaborMetricsTypeName"}
    string laborMetricsTypeName?;
    @jsondata:Name {value: "LaborMetricsCodeName"}
    string laborMetricsCodeName?;
    @jsondata:Name {value: "LaborMetricsCodeXRefCode"}
    string laborMetricsCodeXRefCode?;
};

public type BackgroundScreeningAssociatedPackage record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "IncludeRTW"}
    boolean includeRTW?;
    @jsondata:Name {value: "PackageId"}
    string packageId?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type EmployeeEarningLimitCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEarningLimit[] items?;
};

public type Docket record {
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadDepartment record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Department data?;
};

# Represents the Queries record for the operation: EmployeeUSStateTax_Patch_By_emplyeeUSStateTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUSStateTaxPatchByEmplyeeUSStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeHRIncidentNoteCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeHRIncidentNote[] items?;
};

# Represents the Queries record for the operation: PayrollGL_Post_By_importData_isValidateOnly_clientNamespace
public type PayrollGLPostByImportDataIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: BackgroundScreening_PatchAdjudicationStatus_By_backgroundScreeningAdjudicationStatus_isValidateOnly_clientNamespace
public type BackgroundScreeningPatchAdjudicationStatusByBackgroundScreeningAdjudicationStatusIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeAssignedSexAndGenderIdentity record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeAssignedSexAndGenderIdentity[] data?;
};

public type PayGrade record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeDefaultLabor record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeDefaultLabor[] data?;
};

public type PayloadIEnumerableLMSEmployeeCertification record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LMSEmployeeCertification[] data?;
};

# Represents the Queries record for the operation: Certification_Patch_By_certification_xRefCode_isValidateOnly_clientNamespace
public type CertificationPatchByCertificationXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
    string xRefCode;
};

public type Associations record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    AssociationDetails[] values?;
};

public type PayrollPayeeCategory record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EarningStatementHeader record {
    @jsondata:Name {value: "EarningStatementHeaders"}
    string earningStatementHeaders?;
};

# Represents the Queries record for the operation: Skill_Post_By_skill_isValidateOnly_clientNamespace
public type SkillPostBySkillIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeUSFederalTax_Post_By_employeeUSFederalTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUSFederalTaxPostByEmployeeUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: KpiTargetPattern_Patch_By_orgUnitXRefCode_kpiXRefCode_kpiTargetPatternApiModel_isValidateOnly_clientNamespace
public type KpiTargetPatternPatchByOrgUnitXRefCodeKpiXRefCodeKpiTargetPatternApiModelIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, the PATCH operation validates the
    #                 request without applying the updates to the database. The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
    # KPI reference code
    string kpiXRefCode;
    # Org unit reference code
    string orgUnitXRefCode;
};

public type TimeZone record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeScheduleLaborMetricPostAPIRequestDTO record {
    @jsondata:Name {value: "CodeXRefCode"}
    string codeXRefCode;
    @jsondata:Name {value: "TypeXRefCode"}
    string typeXRefCode;
};

public type Employee record {
    @jsondata:Name {value: "EmployeePin"}
    string employeePin?;
    @jsondata:Name {value: "EmployeeManagers"}
    EmployeeManagerCollection employeeManagers?;
    @jsondata:Name {value: "Gender"}
    string gender?;
    @jsondata:Name {value: "DependentsBeneficiaries"}
    EmployeeDependentsBeneficiariesCollection dependentsBeneficiaries?;
    @jsondata:Name {value: "NZLKiwiSaver"}
    EmployeeNZLKiwiSaver[] nZLKiwiSaver?;
    @jsondata:Name {value: "DEUEmployeeAccidentInsurance"}
    DEUEmployeeAccidentInsuranceCollection dEUEmployeeAccidentInsurance?;
    @jsondata:Name {value: "CANFederalTaxes"}
    EmployeeCANFederalTaxCollection cANFederalTaxes?;
    @jsondata:Name {value: "Addresses"}
    PersonAddressCollection addresses?;
    @jsondata:Name {value: "MaritalStatuses"}
    EmployeeMaritalStatusCollection maritalStatuses?;
    @jsondata:Name {value: "GLSplits"}
    PRGLSplitSetCollection gLSplits?;
    @jsondata:Name {value: "UKStudentLoan"}
    EmployeeUKStudentLoanCollection uKStudentLoan?;
    @jsondata:Name {value: "UserPayAdjustCodeGroups"}
    UserPayAdjCodeGroupCollection userPayAdjustCodeGroups?;
    @jsondata:Name {value: "LastActiveManagers"}
    EmployeeManagerCollection lastActiveManagers?;
    @jsondata:Name {value: "HireDate"}
    string hireDate?;
    @jsondata:Name {value: "BadgeNumber"}
    string badgeNumber?;
    @jsondata:Name {value: "EIRates"}
    EmployeeEIRateCollection eIRates?;
    @jsondata:Name {value: "EntitlementOverrideDate"}
    string entitlementOverrideDate?;
    @jsondata:Name {value: "HighlyCompensatedEmployees"}
    HighlyCompensatedEmployeeCollection highlyCompensatedEmployees?;
    @jsondata:Name {value: "EmployeeAssignedSexAndGenderIdentities"}
    EmployeeAssignedSexAndGenderIdentityCollection employeeAssignedSexAndGenderIdentities?;
    @jsondata:Name {value: "PreviousLastName"}
    string previousLastName?;
    @jsondata:Name {value: "Locations"}
    EmployeeLocationCollection locations?;
    @jsondata:Name {value: "COBRANotificationStatus"}
    int:Signed32 cOBRANotificationStatus?;
    @jsondata:Name {value: "Roles"}
    EmployeeRoleCollection roles?;
    @jsondata:Name {value: "DocumentManagementSecurityGroups"}
    DocMgmtSecurityGroupUserMapCollection documentManagementSecurityGroups?;
    @jsondata:Name {value: "Initials"}
    string initials?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "RegisteredDisabled"}
    string registeredDisabled?;
    @jsondata:Name {value: "EmployeePayAdjustCodeGroups"}
    EmployeePayAdjCodeGroupListCollection employeePayAdjustCodeGroups?;
    @jsondata:Name {value: "MUSTaxes"}
    EmployeeMUSTaxDetailsCollection mUSTaxes?;
    @jsondata:Name {value: "BioSensitivityLevel"}
    BioSensitivityLevel bioSensitivityLevel?;
    @jsondata:Name {value: "AuthorizationAssignments"}
    UserEmployeeAuthorityTypeAssignmentCollection authorizationAssignments?;
    @jsondata:Name {value: "Suffix"}
    string suffix?;
    @jsondata:Name {value: "SSNCountryCode"}
    string sSNCountryCode?;
    @jsondata:Name {value: "PreStartDate"}
    string preStartDate?;
    @jsondata:Name {value: "EstimatedReturnDate"}
    string estimatedReturnDate?;
    @jsondata:Name {value: "EmployeeWorkAssignmentManagers"}
    EmployeeWorkAssignmentManagerCollection employeeWorkAssignmentManagers?;
    @jsondata:Name {value: "DeductionElections"}
    EmployeeDeductionsCollection deductionElections?;
    @jsondata:Name {value: "SeniorityDate"}
    string seniorityDate?;
    @jsondata:Name {value: "NewHireApprovalDate"}
    string newHireApprovalDate?;
    @jsondata:Name {value: "VeteranSeparationDate"}
    string veteranSeparationDate?;
    @jsondata:Name {value: "TrainingPrograms"}
    EmployeeTrainingProgramCollection trainingPrograms?;
    @jsondata:Name {value: "ClockSupervisor"}
    boolean clockSupervisor?;
    @jsondata:Name {value: "Disabilities"}
    EmployeeDisabilityCollection disabilities?;
    @jsondata:Name {value: "EarningElections"}
    EmployeeEarningsCollection earningElections?;
    @jsondata:Name {value: "EmploymentStatuses"}
    EmployeeEmploymentStatusCollection employmentStatuses?;
    @jsondata:Name {value: "NewHireApproved"}
    boolean newHireApproved?;
    @jsondata:Name {value: "EmploymentAgreements"}
    EmployeeEmploymentAgreementCollection employmentAgreements?;
    @jsondata:Name {value: "ClockDeviceGroups"}
    EmployeeClockDeviceGroupCollection clockDeviceGroups?;
    @jsondata:Name {value: "WorkAssignments"}
    EmployeeWorkAssignmentCollection workAssignments?;
    @jsondata:Name {value: "PayPeriodInformation"}
    PayPeriodInformationCollection payPeriodInformation?;
    @jsondata:Name {value: "DateOfDeath"}
    string dateOfDeath?;
    @jsondata:Name {value: "NewHireApprovedBy"}
    string newHireApprovedBy?;
    @jsondata:Name {value: "IRLTaxRPNInfo"}
    EmployeeIRLTaxRPNCollection iRLTaxRPNInfo?;
    @jsondata:Name {value: "FirstTimeAccessVerificationAttempts"}
    int:Signed32 firstTimeAccessVerificationAttempts?;
    @jsondata:Name {value: "EmployeeUKIrregularPaymentDetails"}
    EmployeeUKIrregularPaymentDetailsCollection employeeUKIrregularPaymentDetails?;
    @jsondata:Name {value: "CommonName"}
    string commonName?;
    @jsondata:Name {value: "IRLTaxPAYEExclusionInfo"}
    EmployeeIRLTaxPAYEExclusionCollection iRLTaxPAYEExclusionInfo?;
    @jsondata:Name {value: "DEUTaxSocialInsurance"}
    EmployeeDEUTaxSocialInsuranceCollection dEUTaxSocialInsurance?;
    @jsondata:Name {value: "EmployeeBadge"}
    EmployeeBadge employeeBadge?;
    @jsondata:Name {value: "DEUEmployeeWageTax"}
    DEUEmployeeWageTaxCollection dEUEmployeeWageTax?;
    @jsondata:Name {value: "TerminationDate"}
    string terminationDate?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "EmployeePayrollTaxes"}
    EmployeePayrollTaxCollection employeePayrollTaxes?;
    @jsondata:Name {value: "Nationality"}
    string nationality?;
    @jsondata:Name {value: "SecondLastName"}
    string secondLastName?;
    @jsondata:Name {value: "TaxExempt"}
    boolean taxExempt?;
    @jsondata:Name {value: "RequiresExitInterview"}
    boolean requiresExitInterview?;
    @jsondata:Name {value: "Contacts"}
    PersonContactCollection contacts?;
    @jsondata:Name {value: "HomePhone"}
    string homePhone?;
    @jsondata:Name {value: "EligibleForOnDemandPay"}
    boolean eligibleForOnDemandPay?;
    @jsondata:Name {value: "Badges"}
    EmployeeBadgeCollection badges?;
    @jsondata:Name {value: "SSOAccounts"}
    AppUserSSOCollection sSOAccounts?;
    @jsondata:Name {value: "USStateTaxes"}
    EmployeeUSStateTaxCollection uSStateTaxes?;
    @jsondata:Name {value: "ConfidentialIdentification"}
    EmployeeConfidentialIdentificationCollection confidentialIdentification?;
    @jsondata:Name {value: "HRPolicies"}
    EmployeeHRPolicyCollection hRPolicies?;
    @jsondata:Name {value: "PayrollKey"}
    string payrollKey?;
    @jsondata:Name {value: "CompensationSummary"}
    EmployeeCompensationCollection compensationSummary?;
    @jsondata:Name {value: "USFederalTaxes"}
    EmployeeUSFederalTaxCollection uSFederalTaxes?;
    @jsondata:Name {value: "TerminationNoticeDate"}
    string terminationNoticeDate?;
    @jsondata:Name {value: "WorkContracts"}
    EmployeeWorkContractCollection workContracts?;
    @jsondata:Name {value: "HomeOrganization"}
    Location homeOrganization?;
    @jsondata:Name {value: "AUSSuperannuationRules"}
    EmployeeAUSSuperannuationRulesCollection aUSSuperannuationRules?;
    @jsondata:Name {value: "SendFirstTimeAccessEmail"}
    boolean sendFirstTimeAccessEmail?;
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "GlobalProperties"}
    EmployeeGlobalPropertyValueCollection globalProperties?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "NewXRefCode"}
    string newXRefCode?;
    @jsondata:Name {value: "Culture"}
    Culture culture?;
    @jsondata:Name {value: "EmployeeShortTimeWork"}
    EmployeeShortTimeWorkCollection employeeShortTimeWork?;
    @jsondata:Name {value: "EmploymentTypes"}
    EmployeeEmploymentTypeCollection employmentTypes?;
    @jsondata:Name {value: "VolunteerLists"}
    EmployeeVolunteerListCollection volunteerLists?;
    @jsondata:Name {value: "UKNIDetails"}
    EmployeeUKNIDetailsCollection uKNIDetails?;
    @jsondata:Name {value: "UKPostgraduateLoan"}
    EmployeeUKPostgraduateLoanCollection uKPostgraduateLoan?;
    @jsondata:Name {value: "GenderIdentity"}
    GenderIdentity genderIdentity?;
    @jsondata:Name {value: "ContinuousEmploymentStartDate"}
    string continuousEmploymentStartDate?;
    @jsondata:Name {value: "FederatedId"}
    string federatedId?;
    @jsondata:Name {value: "NameAffixAtBirth"}
    NameAffix nameAffixAtBirth?;
    @jsondata:Name {value: "EmployeeProperties"}
    EmployeePropertyValueCollection employeeProperties?;
    @jsondata:Name {value: "OnboardingPolicies"}
    EmployeeOnboardingPolicyCollection onboardingPolicies?;
    @jsondata:Name {value: "IsAboriginal"}
    string isAboriginal?;
    @jsondata:Name {value: "EmployeeLatestUpdatedTimestamp"}
    string employeeLatestUpdatedTimestamp?;
    @jsondata:Name {value: "OrgUnitInfos"}
    EmployeeOrgUnitInfoCollection orgUnitInfos?;
    @jsondata:Name {value: "NameAffix"}
    NameAffix nameAffix?;
    @jsondata:Name {value: "LSLEligibilityDate"}
    string lSLEligibilityDate?;
    @jsondata:Name {value: "EmployeeCertifications"}
    LMSEmployeeCertificationCollection employeeCertifications?;
    @jsondata:Name {value: "LastNamePrefix"}
    LastNamePrefix lastNamePrefix?;
    @jsondata:Name {value: "BioExempt"}
    boolean bioExempt?;
    @jsondata:Name {value: "COBRANotificationSentDate"}
    string cOBRANotificationSentDate?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "BirthDate"}
    string birthDate?;
    @jsondata:Name {value: "RetirementRequestDate"}
    string retirementRequestDate?;
    @jsondata:Name {value: "MaidenName"}
    string maidenName?;
    @jsondata:Name {value: "DirectDeposits"}
    EmployeeDirectDepositCollection directDeposits?;
    @jsondata:Name {value: "IRLTaxPRSIInfo"}
    EmployeeIRLTaxPRSICollection iRLTaxPRSIInfo?;
    @jsondata:Name {value: "ManagedEmployees"}
    EmployeeWorkAssignmentManagerCollection managedEmployees?;
    @jsondata:Name {value: "PerformanceRatings"}
    EmployeePerformanceRatingCollection performanceRatings?;
    @jsondata:Name {value: "TaxpayerId"}
    string taxpayerId?;
    @jsondata:Name {value: "Courses"}
    EmployeeCourseCollection courses?;
    @jsondata:Name {value: "CANTaxStatuses"}
    EmployeeCANTaxStatusCollection cANTaxStatuses?;
    @jsondata:Name {value: "LastNamePrefixAtBirth"}
    LastNamePrefix lastNamePrefixAtBirth?;
    @jsondata:Name {value: "PhotoExempt"}
    boolean photoExempt?;
    @jsondata:Name {value: "AUSSuperannuation"}
    EmployeeAUSSuperannuationCollection aUSSuperannuation?;
    @jsondata:Name {value: "EligibleForRehire"}
    string eligibleForRehire?;
    @jsondata:Name {value: "IsVisibleMinority"}
    string isVisibleMinority?;
    @jsondata:Name {value: "Skills"}
    EmployeeSkillCollection skills?;
    @jsondata:Name {value: "AUSFederalTaxes"}
    EmployeeAUSFederalTaxCollection aUSFederalTaxes?;
    @jsondata:Name {value: "AvatarUri"}
    string avatarUri?;
    @jsondata:Name {value: "LaborDefaults"}
    EmployeeDefaultLaborCollection laborDefaults?;
    @jsondata:Name {value: "ChecksumTimestamp"}
    string checksumTimestamp?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    @jsondata:Name {value: "PayGradeRates"}
    EmployeePayGradeRateCollection payGradeRates?;
    @jsondata:Name {value: "EligibleForDFWalletPayCard"}
    boolean eligibleForDFWalletPayCard?;
    @jsondata:Name {value: "ExportDate"}
    string exportDate?;
    @jsondata:Name {value: "SocialSecurityNumber"}
    string socialSecurityNumber?;
    @jsondata:Name {value: "OriginalHireDate"}
    string originalHireDate?;
    @jsondata:Name {value: "LoginId"}
    string loginId?;
    @jsondata:Name {value: "IRLTaxEWSSInfo"}
    EmployeeIRLTaxEWSSCollection iRLTaxEWSSInfo?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "Ethnicities"}
    EmployeeEthnicityCollection ethnicities?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "SSNExpiryDate"}
    string sSNExpiryDate?;
    @jsondata:Name {value: "CANStateTaxes"}
    EmployeeCANStateTaxCollection cANStateTaxes?;
    @jsondata:Name {value: "BirthState"}
    string birthState?;
    @jsondata:Name {value: "SchoolYear"}
    SchoolYear schoolYear?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "BirthCountry"}
    string birthCountry?;
    @jsondata:Name {value: "VeteranStatuses"}
    EmployeeVeteransStatusCollection veteranStatuses?;
    @jsondata:Name {value: "USTaxStatuses"}
    EmployeeUSTaxStatusCollection uSTaxStatuses?;
    @jsondata:Name {value: "EmployeePayrollTaxParameters"}
    EmployeePayrollTaxParameterCollection employeePayrollTaxParameters?;
    @jsondata:Name {value: "UnknownBirthDate"}
    boolean unknownBirthDate?;
    @jsondata:Name {value: "UKTaxDetails"}
    EmployeeUKTaxDetailsCollection uKTaxDetails?;
    @jsondata:Name {value: "PreferredLastName"}
    string preferredLastName?;
    @jsondata:Name {value: "PPACAOverrideDate"}
    string pPACAOverrideDate?;
    @jsondata:Name {value: "CitizenshipType"}
    CitizenshipType citizenshipType?;
    @jsondata:Name {value: "HealthWellnessDetails"}
    EmployeeHealthWellnessCollection healthWellnessDetails?;
    @jsondata:Name {value: "HRIncidents"}
    EmployeeHRIncidentCollection hRIncidents?;
    @jsondata:Name {value: "EmergencyContacts"}
    EmergencyContactCollection emergencyContacts?;
    @jsondata:Name {value: "FirstTimeAccessEmailSentCount"}
    int:Signed32 firstTimeAccessEmailSentCount?;
    @jsondata:Name {value: "BirthCity"}
    string birthCity?;
    @jsondata:Name {value: "LastPayrollNewHireExportDate"}
    string lastPayrollNewHireExportDate?;
    @jsondata:Name {value: "UserAccount"}
    AppUser userAccount?;
    @jsondata:Name {value: "ProfessionalTitle"}
    string professionalTitle?;
    @jsondata:Name {value: "UnionMemberships"}
    EmployeeUnionCollection unionMemberships?;
};

# Represents the Queries record for the operation: EmployeeRawPunches_Post_By_punch_isValidateOnly_clientNamespace
public type EmployeeRawPunchesPostByPunchIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
};

public type BusinessUnit record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "BusinessUnitParents"}
    BusinessUnitParentAssignment[] businessUnitParents?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "BusinessUnitGlobalId"}
    string businessUnitGlobalId?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type JobSOC record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeBalanceTransactionPatchResponse record {
    @jsondata:Name {value: "EmployeeBalanceTransactionXRefCode"}
    string employeeBalanceTransactionXRefCode?;
};

public type PayloadContactInformationType record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ContactInformationType data?;
};

public type EmployeeEmploymentTypeCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEmploymentType[] items?;
};

public type EmployeeHighlyCompensatedEmployeeIndicator record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "IsHCE"}
    boolean isHCE?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeUKIrregularPaymentDetailsCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUKIrregularPaymentDetails[] items?;
};

# Represents the Queries record for the operation: PRGLSplitSet_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type PRGLSplitSetGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type JobPostingResponseModel record {
    @jsondata:Name {value: "JobRequisitionId"}
    string jobRequisitionId?;
    @jsondata:Name {value: "JobLocation"}
    string jobLocation?;
    @jsondata:Name {value: "JobUrl"}
    string jobUrl?;
    @jsondata:Name {value: "JobMeta"}
    string jobMeta?;
    @jsondata:Name {value: "JobCompany"}
    string jobCompany?;
    @jsondata:Name {value: "JobTitle"}
    string jobTitle?;
    @jsondata:Name {value: "JobId"}
    string jobId?;
};

public type EmployeeIRLTaxPRSICollection record {
    @jsondata:Name {value: "Items"}
    EmployeeIRLTaxPRSI[] items?;
};

public type EmployeeManagerCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeManager[] items?;
};

public type PayrollElection record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "ArrearMultipleLimitOption"}
    decimal arrearMultipleLimitOption?;
    @jsondata:Name {value: "ExternalXrefCode"}
    string externalXrefCode?;
    @jsondata:Name {value: "DefaultPayee"}
    string defaultPayee?;
    @jsondata:Name {value: "IsNew"}
    boolean isNew?;
    @jsondata:Name {value: "ScheduleXRefCode"}
    string scheduleXRefCode?;
    @jsondata:Name {value: "Source"}
    string source?;
    @jsondata:Name {value: "EmployeePayeeEarnings"}
    PRPayeeEarning[] employeePayeeEarnings?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "PayeePayableTo"}
    string payeePayableTo?;
    @jsondata:Name {value: "IsOptOut"}
    int:Signed32 isOptOut?;
    @jsondata:Name {value: "EmployeeEarningPayeeParameters"}
    EmployeeEarningPayeeParameter[] employeeEarningPayeeParameters?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "EmployeePayeeDeductions"}
    PRPayeeDeduction[] employeePayeeDeductions?;
    @jsondata:Name {value: "IsCreatedByBenefits"}
    boolean isCreatedByBenefits?;
    @jsondata:Name {value: "EmployeeEarningLimits"}
    PayrollEmployeeEarningLimit[] employeeEarningLimits?;
    @jsondata:Name {value: "IsBlocked"}
    boolean isBlocked?;
    @jsondata:Name {value: "ElectionXrefCode"}
    string electionXrefCode?;
    @jsondata:Name {value: "TypeCode"}
    string typeCode?;
    @jsondata:Name {value: "EmployeeDeductionParams"}
    PayrollEmployeeDeductionParameter[] employeeDeductionParams?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmployeeEarningParams"}
    PayrollEmployeeEarningParameter[] employeeEarningParams?;
    @jsondata:Name {value: "Code"}
    string code?;
    @jsondata:Name {value: "EmployeeDeductionPayeeParameters"}
    EmployeeDeductionPayeeParameter[] employeeDeductionPayeeParameters?;
    @jsondata:Name {value: "DefaultPayeeXRefCode"}
    string defaultPayeeXRefCode?;
    @jsondata:Name {value: "Type"}
    string type?;
    @jsondata:Name {value: "ContinuePaymentOnStatutoryPay"}
    boolean continuePaymentOnStatutoryPay?;
    @jsondata:Name {value: "SourceTypeXRefCode"}
    string sourceTypeXRefCode?;
    @jsondata:Name {value: "Schedule"}
    string schedule?;
    @jsondata:Name {value: "CreatedDate"}
    string createdDate?;
    @jsondata:Name {value: "EarningDeductionXRefCode"}
    string earningDeductionXRefCode?;
    @jsondata:Name {value: "PensionTracingNumber"}
    string pensionTracingNumber?;
    @jsondata:Name {value: "EmployeeDeductionLimits"}
    PayrollEmployeeDeductionLimit[] employeeDeductionLimits?;
    @jsondata:Name {value: "DeptJobXRefCode"}
    string deptJobXRefCode?;
};

public type EmployeeGLSplitSetDetailLaborMetricCodes record {
    @jsondata:Name {value: "LaborMetricsTypeXRefCode"}
    string laborMetricsTypeXRefCode?;
    @jsondata:Name {value: "LaborMetricsTypeName"}
    string laborMetricsTypeName?;
    @jsondata:Name {value: "LaborMetricsCodeName"}
    string laborMetricsCodeName?;
    @jsondata:Name {value: "LaborMetricsCodeXRefCode"}
    string laborMetricsCodeXRefCode?;
};

public type PayloadLaborMetricCodes record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LaborMetricCodes data?;
};

public type PayloadIEnumerableEmployeeUSStateTax record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUSStateTax[] data?;
};

public type DeductionType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: Payee_Patch_By_payees_isValidateOnly_clientNamespace
public type PayeePatchByPayeesIsValidateOnlyClientNamespaceQueries record {
    # If true, only validate the request. Otherwise, validate and save
    boolean isValidateOnly?;
};

public type LaborCostTotalResult record {
    @jsondata:Name {value: "LaborHours"}
    decimal laborHours?;
    @jsondata:Name {value: "LaborCost"}
    decimal laborCost?;
};

# Represents the Queries record for the operation: EmployeeHCE_Post_By_highlyCompensatedEmpoyee_xRefCode_isValidateOnly_clientNamespace
public type EmployeeHCEPostByHighlyCompensatedEmpoyeeXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type SafetyHealthType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BackgroundScreeningProviderStatuses record {
    @jsondata:Name {value: "AdjudicationStatuses"}
    string[] adjudicationStatuses?;
    @jsondata:Name {value: "OrderStatuses"}
    string[] orderStatuses?;
    @jsondata:Name {value: "ProviderReference"}
    string providerReference?;
    @jsondata:Name {value: "ResultStatuses"}
    string[] resultStatuses?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxPRSI_Patch_By_employeeIRLTaxPRSI_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxPRSIPatchByEmployeeIRLTaxPRSIXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeCANStateTax record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeCANStateTax[] data?;
};

public type EmployeeEarningParameter record {
    @jsondata:Name {value: "Value"}
    decimal value?;
    @jsondata:Name {value: "EarningParameter"}
    EarningParameter earningParameter?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayGroupValue"}
    decimal payGroupValue?;
};

public type WithholdingVariationAmountType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableAnalyticsReportDefinitions record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    AnalyticsReportDefinitions[] data?;
};

public type ScheduleChangePolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadLaborMetricType record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LaborMetricType data?;
};

# Represents the Queries record for the operation: EmployeeEmploymentStatus_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeEmploymentStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: LocationAddresses_Patch_By_payrollLocationAddresses_xRefCode_isValidateOnly_clientNamespace
public type LocationAddressesPatchByPayrollLocationAddressesXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
    # The unique identifier (external reference code) of the position. The value provided must be the exact match for a position; otherwise, a bad request (400) error will be returned
    string xRefCode;
};

public type EmploymentAgreementDuration record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxEWSS_Post_By_employeeIRLTaxEWSS_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxEWSSPostByEmployeeIRLTaxEWSSXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type AppUserSSOCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeSSOAccount[] items?;
};

# Represents the Queries record for the operation: EmployeeUKIrregularPaymentDetails_Patch_By_employeeUKIrregularPaymentDetails_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKIrregularPaymentDetailsPatchByEmployeeUKIrregularPaymentDetailsXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type TipTypeGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeVeteransStatus record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "VeteransStatus"}
    DFVeteransStatus veteransStatus?;
    @jsondata:Name {value: "IsVevraa"}
    boolean isVevraa?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmploymentTypeConfig record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type FileDetails record {
    @jsondata:Name {value: "ContentType"}
    string contentType?;
    @jsondata:Name {value: "FileName"}
    string fileName?;
    @jsondata:Name {value: "Data"}
    string data?;
};

public type PayloadIEnumerableEmployeeSchedule record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeSchedule[] data?;
};

public type EmployeeWorkAssignmentManagerCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeWorkAssignmentManager[] items?;
};

# Represents the Queries record for the operation: EmployeeUKIrregularPaymentDetails_Post_By_employeeUKIrregularPaymentDetails_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKIrregularPaymentDetailsPostByEmployeeUKIrregularPaymentDetailsXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type CandidateApplicationStatusUpdatesPaginationModel record {
    @jsondata:Name {value: "ApplicationStatusUpdates"}
    CandidateApplicationStatusUpdatesModel[] applicationStatusUpdates?;
    @jsondata:Name {value: "HasUnretrievedStatuses"}
    string hasUnretrievedStatuses?;
};

# Represents the Queries record for the operation: PersonAddress_Patch_By_personAddress_xRefCode_isValidateOnly_clientNamespace
public type PersonAddressPatchByPersonAddressXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EarningCountry record {
    @jsondata:Name {value: "EarningTypeXRefCode"}
    string earningTypeXRefCode?;
    @jsondata:Name {value: "CountryName"}
    string countryName?;
    @jsondata:Name {value: "TaxComplianceName"}
    string taxComplianceName?;
    @jsondata:Name {value: "EarningTypeName"}
    string earningTypeName?;
    @jsondata:Name {value: "TaxComplianceXRefCode"}
    string taxComplianceXRefCode?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
};

public type PRGLSplitSetCollection record {
    @jsondata:Name {value: "Items"}
    PRGLSplitSet[] items?;
};

public type AuthorizationAssignment record {
    @jsondata:Name {value: "AuthorizedPersonnelXrefCode"}
    string authorizedPersonnelXrefCode?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AuthorityType"}
    AuthorityType authorityType?;
    @jsondata:Name {value: "AuthorizedPersonnelFirstName"}
    string authorizedPersonnelFirstName?;
    @jsondata:Name {value: "AuthorizedPersonnelLastName"}
    string authorizedPersonnelLastName?;
    @jsondata:Name {value: "AuthorizedPersonnelMiddleName"}
    string authorizedPersonnelMiddleName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeDeductionLimit record {
    @jsondata:Name {value: "LimitPercent"}
    decimal limitPercent?;
    @jsondata:Name {value: "DeductionLimit"}
    DeductionLimit deductionLimit?;
    @jsondata:Name {value: "PayGroupLimitPercent"}
    decimal payGroupLimitPercent?;
    @jsondata:Name {value: "LimitAmount"}
    decimal limitAmount?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayGroupLimitAmount"}
    decimal payGroupLimitAmount?;
};

public type Awards record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    AwardDetails[] values?;
};

# Represents the Queries record for the operation: EmployeeAccidentInsurance_Post_By_dEUEmployeeAccidentInsurance_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAccidentInsurancePostByDEUEmployeeAccidentInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EarningPayeeEarningLimit record {
    @jsondata:Name {value: "LimitPercent"}
    decimal limitPercent?;
    @jsondata:Name {value: "EarningLimitXRefCode"}
    string earningLimitXRefCode?;
    @jsondata:Name {value: "LimitAmount"}
    decimal limitAmount?;
    @jsondata:Name {value: "LimitTypeXRefCode"}
    string limitTypeXRefCode?;
    @jsondata:Name {value: "LimitTypeName"}
    string limitTypeName?;
};

public type PayloadIEnumerableEmployeeAUSFederalTax record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeAUSFederalTax[] data?;
};

public type PayloadIEnumerableEmployeeHRIncident record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeHRIncident[] data?;
};

# Represents the Queries record for the operation: OrgUnits_Post_By_orgUnit_isValidateOnly_calibrateOrg_clientNamespace
public type OrgUnitsPostByOrgUnitIsValidateOnlyCalibrateOrgClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
    # This parameter accepts TRUE or FALSE values to determine whether the Org Recalculation process is to be triggered. The default value is TRUE if parameter is not specified
    string calibrateOrg?;
};

public type WorkContract record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeAUSSuperannuationRulesCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeAUSSuperannuationRules[] items?;
};

public type MealBreaks record {
    @jsondata:Name {value: "TimeStartRaw"}
    string timeStartRaw?;
    @jsondata:Name {value: "TimeEndRaw"}
    string timeEndRaw?;
    @jsondata:Name {value: "Type"}
    string type?;
    @jsondata:Name {value: "StartExceptionCode"}
    string startExceptionCode?;
    @jsondata:Name {value: "IsAutoInjected"}
    boolean isAutoInjected?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "EndExceptionCode"}
    string endExceptionCode?;
    @jsondata:Name {value: "LastModifiedTimestampUtc"}
    string lastModifiedTimestampUtc?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "PunchXRefCode"}
    string punchXRefCode?;
};

public type CarrierFeeds record {
    @jsondata:Name {value: "Header"}
    BenefitsDFLinkExportCarrierInfo header?;
    @jsondata:Name {value: "EmployeeRecords"}
    BenefitsDFLinkExportRecord[] employeeRecords?;
};

# Represents the Queries record for the operation: EmployeeBalanceTransactions_Get_By_employeeXRefCode_balanceXRefCode_startDate_endDate_clientNamespace
public type EmployeeBalanceTransactionsGetByEmployeeXRefCodeBalanceXRefCodeStartDateEndDateClientNamespaceQueries record {
    # A case-sensitive field that identifies a unique balance
    string balanceXRefCode;
    # Period end date to determine which employee balance periods to retrieve. If omitted, the period start date will be used. If the period start date is also omitted, today's date will be used. Example: 2020-01-01T00:00:00
    string endDate?;
    # A case-sensitive field that identifies a unique employee
    string employeeXRefCode;
    # Period start date to determine which employee balance periods to retrieve. If omitted, today's date will be used. Example: 2020-01-01T00:00:00
    string startDate?;
};

# Represents the Queries record for the operation: EmployeeDEUTaxSocialInsurance_Post_By_deuEmployeeSocialInsurance_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDEUTaxSocialInsurancePostByDeuEmployeeSocialInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeBalanceTransactions_Patch_By_employeeBalanceTransaction_employeeBalanceTransactionId_isValidateOnly_clientNamespace
public type EmployeeBalanceTransactionsPatchByEmployeeBalanceTransactionEmployeeBalanceTransactionIdIsValidateOnlyClientNamespaceQueries record {
    string employeeBalanceTransactionId;
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeCANEmploymentInsuranceRate record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeCANEmploymentInsuranceRate[] data?;
};

public type PayloadIEnumerableEmploymentStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmploymentStatus[] data?;
};

public type DeductionCountry record {
    @jsondata:Name {value: "CountryName"}
    string countryName?;
    @jsondata:Name {value: "TaxTypeCode"}
    string taxTypeCode?;
    @jsondata:Name {value: "TaxComplianceName"}
    string taxComplianceName?;
    @jsondata:Name {value: "TaxComplianceXRefCode"}
    string taxComplianceXRefCode?;
    @jsondata:Name {value: "TaxTypeName"}
    string taxTypeName?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
};

public type PayloadIEnumerableEmployeeAUSSuperannuationRules record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeAUSSuperannuationRules[] data?;
};

# Represents the Queries record for the operation: EmployeeShortTimeWork_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeShortTimeWorkGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeeLocation_Post_By_location_xRefCode_isValidateOnly_clientNamespace
public type EmployeeLocationPostByLocationXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type HRIncidentType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeBalanceTransactionPostResponse record {
    @jsondata:Name {value: "EmployeeBalanceTransactionXRefCode"}
    string employeeBalanceTransactionXRefCode?;
};

public type Validation record {
    @jsondata:Name {value: "Errors"}
    string[] errors?;
    @jsondata:Name {value: "Warnings"}
    string[] warnings?;
};

public type PayloadIEnumerableEmployeeIRLTaxPAYEExclusion record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeIRLTaxPAYEExclusion[] data?;
};

public type PRGLSplitSetDetail record {
    @jsondata:Name {value: "PRGLSplitSetDetailMetricCodes"}
    PRGLSplitSetDetailMetricCodeCollection pRGLSplitSetDetailMetricCodes?;
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "LaborPercentage"}
    decimal laborPercentage?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type DataEntryDeleteModel record {
    @jsondata:Name {value: "DataEntryXRefCode"}
    int dataEntryXRefCode?;
};

public type ProcessResult record {
    @jsondata:Name {value: "Context"}
    string context?;
    @jsondata:Name {value: "Message"}
    string message?;
    @jsondata:Name {value: "Level"}
    string level?;
    @jsondata:Name {value: "Code"}
    string code?;
};

# Represents the Queries record for the operation: Employees_Get_By_employeeNumber_displayName_socialSecurityNumber_employmentStatusXRefCode_orgUnitXRefCode_departmentXRefCode_jobXRefCode_positionXRefCode_payClassXRefCode_payGroupXRefCode_payPolicyXRefCode_payTypeXRefCode_payrollPolicyXRefCode_filterHireStartDate_filterHireEndDate_filterTerminationStartDate_filterTerminationEndDate_filterUpdatedStartDate_filterUpdatedEndDate_filterUpdatedEntities_filterOriginalHireStartDate_filterOriginalHireEndDate_filterSeniorityStartDate_filterSeniorityEndDate_filterBaseSalaryFrom_filterBaseSalaryTo_filterBaseRateFrom_filterBaseRateTo_contextDate_clientNamespace
public type EmployeesGetByEmployeeNumberDisplayNameSocialSecurityNumberEmploymentStatusXRefCodeOrgUnitXRefCodeDepartmentXRefCodeJobXRefCodePositionXRefCodePayClassXRefCodePayGroupXRefCodePayPolicyXRefCodePayTypeXRefCodePayrollPolicyXRefCodeFilterHireStartDateFilterHireEndDateFilterTerminationStartDateFilterTerminationEndDateFilterUpdatedStartDateFilterUpdatedEndDateFilterUpdatedEntitiesFilterOriginalHireStartDateFilterOriginalHireEndDateFilterSeniorityStartDateFilterSeniorityEndDateFilterBaseSalaryFromFilterBaseSalaryToFilterBaseRateFromFilterBaseRateToContextDateClientNamespaceQueries record {
    # The end date used when searching for employees with updates (and newly effective records) in a specified timeframe. When a value is provided for this parameter, a filterUpdatedStartDate value must also be provided.   Example: 2017-01-01T13:24:56
    string filterUpdatedEndDate?;
    # Employee Name. A partial value can be provided for a wider search
    string displayName?;
    # Social Security Number of the employee. A partial value can be provided for a wider search
    string socialSecurityNumber?;
    # Pay policy xrefcode value, which can be client-specific. Use this to search employees having the given pay policy. Use a ContextDate value to search for employees with a given pay policy as of a point in time. Otherwise, the search will use the current date and time
    string payPolicyXRefCode?;
    # Payroll policy xrefcode value, which can be client-specific. Use this to search employees having the given payroll policy. Use a ContextDate value to search for employees with a given payroll policy as of a point in time. Otherwise, the search will use the current date and time
    string payrollPolicyXRefCode?;
    # Use to search for employees with original hire date values less than or equal to the specified value. Typically this parameter is used in conjunction with filterSeniorityStartDate to search for employees seniority date in a given timeframe. Example: 2017-01-01T13:24:56
    string filterSeniorityEndDate?;
    # Use to search for employees with termination date values less than or equal to the specified value. Typically this parameter is used in conjunction with filterTerminationStartDate to search for employees terminated in a given timeframe. Example: 2017-01-01T13:24:56
    string filterTerminationEndDate?;
    # Use to search employees with changes to specific employee sub-entities. These sub-entity names, based on the employee model, can be provided in a comma-separated value, e.g. filterUpdatedEntities=EmploymentStatuses,WorkAssignments,Addresses. The base Employee is always searched by default. This parameter requires that filterUpdatedStartDate/filterUpdatedEndDate range is provided, otherwise it is ignored and all relevant employee entities are searched
    string filterUpdatedEntities?;
    # Use to search for employees base rate less than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseRateFrom to search for employees base rate in a given range. Example: 40
    decimal filterBaseRateTo?;
    # Position xrefcode value, which can be client-specific. Use this to search employees' work assignments having the given position. Use a ContextDate value to search for employees with a given position as of a point in time. Otherwise, the search will use the current date and time
    string positionXRefCode?;
    # Use to search for employees base salary less than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseSalaryFrom to search for employees base salary in a given range. Example: 40000
    decimal filterBaseSalaryTo?;
    # Organizational units' xrefcode. Use this to search all levels of the employees’ organization including department, location, region, corporate, etc. Use a ContextDate value to search for employees with a specific value as of a point in time.  Otherwise, the search will use the current date and time
    string orgUnitXRefCode?;
    # Employment identification number assigned to an employee.  A partial value can be provided for a wider search
    string employeeNumber?;
    # Use to search for employees whose most recent hire date is greater than or equal to the specified value (e.g. 2017-01-01T13:24:56). Use with filterHireEndDate to search for employees hired or rehired in a given timeframe
    string filterHireStartDate?;
    # Use to search for employees base salary greater than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseSalaryTo to search for employees base salary in a given range. Example: 20000
    decimal filterBaseSalaryFrom?;
    # Job xrefcode value, which can be client-specific. Use this to search employees' work assignments having the given job. Use a ContextDate value to search for employees with a given job as of a point in time. Otherwise, the search will use the current date and time
    string jobXRefCode?;
    # Pay type xrefcode value, which can be client-specific. Use this to search employees having the given pay type. Use a ContextDate value to search for employees with a given pay type as of a point in time. Otherwise, the search will use the current date and time
    string payTypeXRefCode?;
    # Employment status xrefcode, which can be client-specific. Use this to search employees having the given employment status. Use a ContextDate value to search for employees with a given status as of a point in time. Otherwise, the search will use the current date and time
    string employmentStatusXRefCode?;
    # The beginning date used when searching for employees with updates (and newly effective records) in a specified timeframe. When a value is provided for this parameter, a filterUpdatedEndDate value must also be provided. Because this search is conducted across all entities in the HR data model regardless of whether the requesting user has access to them, it is possible that the query will return XRefCode of employees with changes in which the consuming application is not interested.  Example: 2017-01-01T13:24:56
    string filterUpdatedStartDate?;
    # Use to search for employees with original hire date values greater than or equal to the specified value. Typically this parameter is used in conjunction with filterOriginialHireEndDate to search for employees who were originally hired in a given timeframe. Example: 2017-01-01T13:24:56
    string filterOriginalHireStartDate?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # Use to search for employees with original hire date values less than or equal to the specified value. Typically this parameter is used in conjunction with filterOriginialHireStartDate to search for employees who were originally hired in a given timeframe. Example: 2017-01-01T13:24:56
    string filterOriginalHireEndDate?;
    # Use to search for employees with seniority date values greater than or equal to the specified value. Typically this parameter is used in conjunction with filterSeniorityEndDate to search for employees seniority date in a given timeframe. Example: 2017-01-01T13:24:56
    string filterSeniorityStartDate?;
    # Use to search for employees with termination date values greater than or equal to the specified value. Typically this parameter is used in conjunction with FilterTerminationStartDate to search for employees terminated in a given timeframe. Example: 2017-01-01T13:24:56
    string filterTerminationStartDate?;
    # Use to search for employees whose most recent hire date is less than or equal to the specified value. Typically this parameter is used in conjunction with FilterHireStartDate to search for employees hired or rehired in a given timeframe. Example: 2017-01-01T13:24:56
    string filterHireEndDate?;
    # Pay group xrefcode value, which can be client-specific. Use this to search employees having the given pay group. Use a ContextDate value to search for employees with a given pay group as of a point in time. Otherwise, the search will use the current date and time
    string payGroupXRefCode?;
    # Pay class xrefcode value, which can be client-specific. Use this to search employees having the given pay class. Use a ContextDate value to search for employees with a given pay class as of a point in time. Otherwise, the search will use the current date and time
    string payClassXRefCode?;
    # Department xrefcode value, which can be client-specific. Use this to search employees' work assignments having the given department.Use a ContextDate value to search for employees with a given department as of a point in time. Otherwise, the search will use the current date and time
    string departmentXRefCode?;
    # Use to search for employees base rate greater than or equal to the specified value. Typically this parameter is used in conjunction with filterBaseRateTo to search for employees base rate in a given range. Example: 10
    decimal filterBaseRateFrom?;
};

public type BenefitsDFLinkExportCarrierInfo record {
    @jsondata:Name {value: "CarrierName"}
    string carrierName?;
    @jsondata:Name {value: "CTCReceiverId"}
    string cTCReceiverId?;
    @jsondata:Name {value: "EmployerFEINNumber"}
    string employerFEINNumber?;
    @jsondata:Name {value: "EmployerDivisionNumber"}
    string employerDivisionNumber?;
    @jsondata:Name {value: "CreateDate"}
    string createDate?;
    @jsondata:Name {value: "FileFormatMajorVersion"}
    string fileFormatMajorVersion?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "MasterPolicyNumber"}
    string masterPolicyNumber?;
    @jsondata:Name {value: "ClientId"}
    string clientId?;
    @jsondata:Name {value: "CarrierFEINNumber"}
    string carrierFEINNumber?;
    @jsondata:Name {value: "CorrelationId"}
    string correlationId?;
    @jsondata:Name {value: "FileFormatMinorVersion"}
    string fileFormatMinorVersion?;
    @jsondata:Name {value: "EmployerName"}
    string employerName?;
    @jsondata:Name {value: "PlanStartDate"}
    string planStartDate?;
};

# Represents the Queries record for the operation: EmployeeEmploymentStatus_Patch_By_employmentStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEmploymentStatusPatchByEmploymentStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type State record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type EmployeeUSTaxStatus record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "TaxPropertyCollection"}
    TaxPropertyCollection taxPropertyCollection?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayGroupCalendarDetails record {
    @jsondata:Name {value: "PayrollCommitted"}
    boolean payrollCommitted?;
    @jsondata:Name {value: "SupervisorDate"}
    string supervisorDate?;
    @jsondata:Name {value: "ChecklistClosedBy"}
    int:Signed32 checklistClosedBy?;
    @jsondata:Name {value: "TimeCollectionEndDate"}
    string timeCollectionEndDate?;
    @jsondata:Name {value: "GLAccrualPercent"}
    decimal gLAccrualPercent?;
    @jsondata:Name {value: "ApproveByDate"}
    string approveByDate?;
    @jsondata:Name {value: "PeriodEndDate"}
    string periodEndDate?;
    @jsondata:Name {value: "Locked"}
    boolean locked?;
    @jsondata:Name {value: "LockedBy"}
    int:Signed32 lockedBy?;
    @jsondata:Name {value: "ImpoundBy"}
    string impoundBy?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "ChecklistClosed"}
    boolean checklistClosed?;
    @jsondata:Name {value: "FuturePunchesEnabled"}
    boolean futurePunchesEnabled?;
    @jsondata:Name {value: "Transmitted"}
    boolean transmitted?;
    @jsondata:Name {value: "TransmittedBy"}
    int:Signed32 transmittedBy?;
    @jsondata:Name {value: "AutoLockDate"}
    string autoLockDate?;
    @jsondata:Name {value: "ArrearsStart"}
    string arrearsStart?;
    @jsondata:Name {value: "ArrearsEnd"}
    string arrearsEnd?;
    @jsondata:Name {value: "ApprovedDate"}
    string approvedDate?;
    @jsondata:Name {value: "PayPeriod"}
    string payPeriod?;
    @jsondata:Name {value: "OffsetPayPeriodEndDate"}
    string offsetPayPeriodEndDate?;
    @jsondata:Name {value: "Approved"}
    boolean approved?;
    @jsondata:Name {value: "LedgerCode2"}
    string ledgerCode2?;
    @jsondata:Name {value: "TimeCollectionStartDate"}
    string timeCollectionStartDate?;
    @jsondata:Name {value: "OffsetPayPeriodStartDate"}
    string offsetPayPeriodStartDate?;
    @jsondata:Name {value: "ContractPayDate"}
    string contractPayDate?;
    @jsondata:Name {value: "DataGateClose"}
    string dataGateClose?;
    @jsondata:Name {value: "PeriodStartDate"}
    string periodStartDate?;
    @jsondata:Name {value: "LedgerCode1"}
    string ledgerCode1?;
    @jsondata:Name {value: "ApprovedBy"}
    int:Signed32 approvedBy?;
    @jsondata:Name {value: "Closed"}
    boolean closed?;
    @jsondata:Name {value: "TransmittedDate"}
    string transmittedDate?;
    @jsondata:Name {value: "TransmitByDate"}
    string transmitByDate?;
    @jsondata:Name {value: "LockDate"}
    string lockDate?;
    @jsondata:Name {value: "CommitByDate"}
    string commitByDate?;
    @jsondata:Name {value: "PayPeriodSuffix"}
    string payPeriodSuffix?;
    @jsondata:Name {value: "ClosedDate"}
    string closedDate?;
    @jsondata:Name {value: "DataGateOpen"}
    string dataGateOpen?;
    @jsondata:Name {value: "ChecklistClosedDate"}
    string checklistClosedDate?;
    @jsondata:Name {value: "ClosedBy"}
    int:Signed32 closedBy?;
};

public type DocMgmtFileProcessedResponse record {
    @jsondata:Name {value: "DocumentGUID"}
    string documentGUID?;
    @jsondata:Name {value: "Message"}
    string message?;
    @jsondata:Name {value: "UploadStatus"}
    string uploadStatus?;
    @jsondata:Name {value: "Index"}
    int:Signed32 index?;
};

public type EmployeeUKPostgraduateLoanCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUKPostgraduateLoan[] items?;
};

# Represents the Queries record for the operation: EmployeeSchedulesDelta_Get_By_orgUnitXRefCode_scheduleChangesFromDate_scheduleChangesToDate_unscheduledEmployeeDays_unscheduledEmployeeOption_schedulePostedOption_excludeNonProductiveShifts_pageSize_clientNamespace
public type EmployeeSchedulesDeltaGetByOrgUnitXRefCodeScheduleChangesFromDateScheduleChangesToDateUnscheduledEmployeeDaysUnscheduledEmployeeOptionSchedulePostedOptionExcludeNonProductiveShiftsPageSizeClientNamespaceQueries record {
    # Optional Date until which to look for changes to schedules Example: 2017-02-01T13:24:56
    string scheduleChangesToDate?;
    # Return Unscheduled Employee Days Option possible values are None, PrimaryOnly, SecondaryOnly and Both
    0|1|2|3 unscheduledEmployeeOption?;
    # Date from which to look for changes to schedules from Example: 2017-01-01T13:24:56
    string scheduleChangesFromDate;
    # Whether or not to exclude schedules that are entirely or partially marked as non-productive
    boolean excludeNonProductiveShifts?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # Whether or not to include only schedules that are posted or not - possible values are:  All, Posted, Unposted
    0|1|2 schedulePostedOption?;
    # The unique identifier (external reference code) of the org unit. Schedules fetched will belong to this org unit (or children thereof)
    string orgUnitXRefCode;
    # Number of days from scheduleChangesFromDate date to return unscheduled employee free days for (Maximum : 60)
    int:Signed32 unscheduledEmployeeDays?;
};

public type EmployeePerformanceRating record {
    @jsondata:Name {value: "ReviewPeriodEndDate"}
    string reviewPeriodEndDate?;
    @jsondata:Name {value: "PerformanceRatingScale"}
    PFRatingScale performanceRatingScale?;
    @jsondata:Name {value: "ReviewDate"}
    string reviewDate?;
    @jsondata:Name {value: "Comments"}
    string comments?;
    @jsondata:Name {value: "RatingScore"}
    decimal ratingScore?;
    @jsondata:Name {value: "NextReviewDate"}
    string nextReviewDate?;
    @jsondata:Name {value: "PerformanceCycle"}
    PerformanceCycle performanceCycle?;
    @jsondata:Name {value: "PerformanceRating"}
    PerformanceRating performanceRating?;
    @jsondata:Name {value: "ReviewPeriodStartDate"}
    string reviewPeriodStartDate?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Reviewer"}
    BaseEmployeeSubset reviewer?;
};

# Represents the Queries record for the operation: BackgroundScreening_PatchPII_By_backgroundScreeningReport_isValidateOnly_clientNamespace
public type BackgroundScreeningPatchPIIByBackgroundScreeningReportIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: LocationAddresses_Get_By_ShortName_CountryCode_StateProvinceCode_clientNamespace
public type LocationAddressesGetByShortNameCountryCodeStateProvinceCodeClientNamespaceQueries record {
    @http:Query {name: "StateProvinceCode"}
    string stateProvinceCode?;
    # Filter the location addresses by their ShortName. The service defaults to NULL if the requester does not specify a value
    @http:Query {name: "ShortName"}
    string shortName?;
    @http:Query {name: "CountryCode"}
    string countryCode?;
};

public type CertificationDetails record {
    @jsondata:Name {value: "StartDateMonth"}
    string startDateMonth?;
    @jsondata:Name {value: "EndDateYear"}
    string endDateYear?;
    @jsondata:Name {value: "EndCurrent"}
    boolean endCurrent?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "EndDateMonth"}
    string endDateMonth?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "StartDateYear"}
    string startDateYear?;
};

public type PayPeriodInformationCollection record {
    @jsondata:Name {value: "Items"}
    PayPeriodInformation[] items?;
};

# Represents the Queries record for the operation: EmployeeCANTaxStatus_Post_By_employeeCANTaxStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCANTaxStatusPostByEmployeeCANTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayrollEmployeeEarningLimit record {
    @jsondata:Name {value: "LimitPercent"}
    decimal limitPercent?;
    @jsondata:Name {value: "LimitAmount"}
    decimal limitAmount?;
    @jsondata:Name {value: "LimitTypeCodeName"}
    string limitTypeCodeName?;
    @jsondata:Name {value: "ShortNameFormattedPercent"}
    string shortNameFormattedPercent?;
    @jsondata:Name {value: "PayGroupDefaultLimitPercent"}
    decimal payGroupDefaultLimitPercent?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayGroupDefaultLimitAmount"}
    decimal payGroupDefaultLimitAmount?;
    @jsondata:Name {value: "ShortNameFormattedAmount"}
    string shortNameFormattedAmount?;
    @jsondata:Name {value: "PREarningLimitXRefCode"}
    string pREarningLimitXRefCode?;
};

public type JobFunction record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "UsableForExternalPosting"}
    boolean usableForExternalPosting?;
    @jsondata:Name {value: "Level"}
    int:Signed32 level?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BenefitsDFLinkExportContact record {
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "ContactInformationType"}
    string contactInformationType?;
    @jsondata:Name {value: "ContactInformation"}
    string contactInformation?;
    @jsondata:Name {value: "ContactInformationCategoryCode"}
    int:Signed32 contactInformationCategoryCode?;
};

# Represents the Queries record for the operation: JobFeeds_Get_By_companyName_parentCompanyName_internalJobBoardCode_includeActivePostingOnly_lastUpdateTimeFrom_lastUpdateTimeTo_datePostedFrom_datePostedTo_htmlDescription_clientNamespace
public type JobFeedsGetByCompanyNameParentCompanyNameInternalJobBoardCodeIncludeActivePostingOnlyLastUpdateTimeFromLastUpdateTimeToDatePostedFromDatePostedToHtmlDescriptionClientNamespaceQueries record {
    # A starting timestamp of job posting date. Example: 2017-01-01T13:24:56
    string datePostedFrom?;
    # A starting timestamp of last updated job posting. Example: 2017-01-01T13:24:56
    string lastUpdateTimeFrom?;
    # An ending timestamp of last updated job posting. Example: 2017-02-01T13:24:56
    string lastUpdateTimeTo?;
    # XRefCode of Job Board. Example: CANDIDATEPORTAL
    string internalJobBoardCode?;
    # Company name. Example: XYZ Co
    string companyName?;
    # If true, then exclude inactive postings from the result. If False, then the 'Last Update Time From' and 'Last Update Time To' parameters are required and the range specified between the 'Last Update Time From' and 'Last Update Time To' parameters must not be larger than 1 month. Example: True
    boolean includeActivePostingOnly?;
    # An ending timestamp of job posting date. Example: 2017-02-01T13:24:56
    string datePostedTo?;
    # A flag to feed the jobs over with html formatting or plain text description
    boolean htmlDescription?;
    # Parent Company name. Example: Ceridian
    string parentCompanyName?;
};

public type PersonAddressCollection record {
    @jsondata:Name {value: "Items"}
    PersonAddress[] items?;
};

public type PatentDetails record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "PatentNumber"}
    string patentNumber?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "DateYear"}
    string dateYear?;
    @jsondata:Name {value: "Url"}
    string url?;
    @jsondata:Name {value: "DateMonth"}
    string dateMonth?;
};

# Represents the Queries record for the operation: EmployeeWorkAssigmentManager_Patch_By_ewam_xRefCode_isValidateOnly_clientNamespace
public type EmployeeWorkAssigmentManagerPatchByEwamXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeGlobalPropertyValue record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeGlobalPropertyValue[] data?;
};

public type PaginatedPayloadIEnumerableEmployeePayAdjustment record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeePayAdjustment[] data?;
};

public type SubordinateEntityReferences record {
    @jsondata:Name {value: "EntityReferences"}
    string[] entityReferences?;
};

# Represents the Queries record for the operation: EmployeePayAdjustCodeGroup_Post_By_employeePayAdjCodeGroupList_xRefCode_isValidateOnly_clientNamespace
public type EmployeePayAdjustCodeGroupPostByEmployeePayAdjCodeGroupListXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadOperatingHours record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    OperatingHours data?;
};

# Represents the Queries record for the operation: PlanTargets_Get_By_planTargetXRefCode_orgUnitXRefCode_kpiXRefCode_zoneXRefCode_isActive_clientNamespace
public type PlanTargetsGetByPlanTargetXRefCodeOrgUnitXRefCodeKpiXRefCodeZoneXRefCodeIsActiveClientNamespaceQueries record {
    # The unique identifier of the zone
    string zoneXRefCode?;
    # The unique identifier of the KPI
    string kpiXRefCode?;
    # Select to filter only active plan targets
    boolean isActive?;
    # Unique identifier of the Org
    string orgUnitXRefCode?;
    # The unique identifier of the plan target
    string planTargetXRefCode?;
};

# Represents the Queries record for the operation: EmployeeAUSFederalTax_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeAUSFederalTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PayAdjCode record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeUKPostgraduateLoan_Patch_By_employeeUKPostgraduateLoan_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKPostgraduateLoanPatchByEmployeeUKPostgraduateLoanXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeCANTaxStatus record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ProvinceCode"}
    string provinceCode?;
    @jsondata:Name {value: "TaxPropertyCollection"}
    TaxPropertyCollection taxPropertyCollection?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxPAYEExclusion_Post_By_employeeIRLTaxPAYEExclusion_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxPAYEExclusionPostByEmployeeIRLTaxPAYEExclusionXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: PayClasses_Get_By_contextDate_clientNamespace
public type PayClassesGetByContextDateClientNamespaceQueries record {
    # The Context Date value is an “as-of” date used to determine which PayClass data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
};

public type TrainingProgramCourse record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "Course"}
    Course course?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeePayAdjustment record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "IsPremium"}
    boolean isPremium?;
    @jsondata:Name {value: "Hours"}
    decimal hours?;
    @jsondata:Name {value: "EmployeeAuthorized"}
    boolean employeeAuthorized?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "AdjustPeriodStartDate"}
    string adjustPeriodStartDate?;
    @jsondata:Name {value: "EmployeePayAdjustXRefCode"}
    string employeePayAdjustXRefCode?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "ManagerComment"}
    string managerComment?;
    @jsondata:Name {value: "LastModifiedTimestampUtc"}
    string lastModifiedTimestampUtc?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "EmployeeComment"}
    string employeeComment?;
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "Rate"}
    decimal rate?;
    @jsondata:Name {value: "Amount"}
    decimal amount?;
    @jsondata:Name {value: "AdjustPeriodEndDate"}
    string adjustPeriodEndDate?;
    @jsondata:Name {value: "PayAdjustmentCodeXRefCode"}
    string payAdjustmentCodeXRefCode?;
    @jsondata:Name {value: "PayCategoryXRefCode"}
    string payCategoryXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    EmployeePayAdjustmentLaborMetrics[] laborMetrics?;
    @jsondata:Name {value: "ManagerAuthorized"}
    boolean managerAuthorized?;
    @jsondata:Name {value: "ReferenceDate"}
    string referenceDate?;
};

public type PayloadIEnumerablePlanTarget record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PlanTarget[] data?;
};

public type PayloadObject record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    record {} data?;
};

# This class encapsulates the report data generated during the execution of the report
public type Report record {
    # Reference Code for the Report.
    # This is a unique, human readable, code used to identify the Report
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    # An array of Dictionary objects which contain the report data. 
    # Each dictionary object represents a row: the key is column name and the values is the column value for the row
    @jsondata:Name {value: "Rows"}
    record {|string...;|}[] rows?;
};

public type KpiTargetPattern record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Pattern"}
    KpiTargetPatternDetail[] pattern?;
    @jsondata:Name {value: "PatternLength"}
    int:Signed32 patternLength?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "PatternOffset"}
    int:Signed32 patternOffset?;
    @jsondata:Name {value: "KpiXRefCode"}
    string kpiXRefCode?;
    @jsondata:Name {value: "ZoneXRefCode"}
    string zoneXRefCode?;
};

# Represents the Queries record for the operation: TrainingProgram_Post_By_trainingProgram_isValidateOnly_clientNamespace
public type TrainingProgramPostByTrainingProgramIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
};

public type DeductionDefinition record {
    @jsondata:Name {value: "SystemDeduction"}
    boolean systemDeduction?;
    @jsondata:Name {value: "AllowPayee"}
    boolean allowPayee?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "PayeeCategoryName"}
    string payeeCategoryName?;
    @jsondata:Name {value: "Countries"}
    DeductionCountry[] countries?;
    @jsondata:Name {value: "PayeeCategoryXRefCode"}
    string payeeCategoryXRefCode?;
    @jsondata:Name {value: "AllowArrears"}
    boolean allowArrears?;
    @jsondata:Name {value: "SourceTypeName"}
    string sourceTypeName?;
    @jsondata:Name {value: "Name"}
    string name?;
    @jsondata:Name {value: "Active"}
    boolean active?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "SourceTypeXRefCode"}
    string sourceTypeXRefCode?;
    @jsondata:Name {value: "Payees"}
    DeductionPayee[] payees?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    @jsondata:Name {value: "WorkersComp"}
    boolean workersComp?;
};

public type SchoolYear record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxRPN_Patch_By_employeeRPN_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxRPNPatchByEmployeeRPNXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeRole record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeRole[] data?;
};

public type PRGLSplitSetDetailMetricCode record {
    @jsondata:Name {value: "LaborMetricsCode"}
    LaborMetricsCode laborMetricsCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeCANStateTax record {
    @jsondata:Name {value: "AdditionalAmount"}
    decimal additionalAmount?;
    @jsondata:Name {value: "IncomeLessThanClaim"}
    boolean incomeLessThanClaim?;
    @jsondata:Name {value: "LabourSponsoredFunds"}
    decimal labourSponsoredFunds?;
    @jsondata:Name {value: "TotalClaimAmount"}
    decimal totalClaimAmount?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EstimatedExpense"}
    decimal estimatedExpense?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AuthorizedTaxCredits"}
    decimal authorizedTaxCredits?;
    @jsondata:Name {value: "EstimatedRemuneration"}
    decimal estimatedRemuneration?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "MaintenanceDeduction"}
    decimal maintenanceDeduction?;
    @jsondata:Name {value: "QuebecDevelopmentFunds"}
    decimal quebecDevelopmentFunds?;
    @jsondata:Name {value: "HasQuebecHealthContributionExemption"}
    boolean hasQuebecHealthContributionExemption?;
    @jsondata:Name {value: "PrescribedAreaDeduction"}
    decimal prescribedAreaDeduction?;
};

# Represents the Queries record for the operation: EmployeeAuthorizationAssignment_Post_By_employeeAuthorityTypeAssignment_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAuthorizationAssignmentPostByEmployeeAuthorityTypeAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PersonContactCollection record {
    @jsondata:Name {value: "Items"}
    PersonContact[] items?;
};

public type EmployeeDirectDeposit record {
    @jsondata:Name {value: "BankName"}
    string bankName?;
    @jsondata:Name {value: "IsPercentage"}
    boolean isPercentage?;
    @jsondata:Name {value: "RequiresPreNote"}
    boolean requiresPreNote?;
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "IsRemainder"}
    boolean isRemainder?;
    @jsondata:Name {value: "NumberOfPreNoteDays"}
    int:Signed32 numberOfPreNoteDays?;
    @jsondata:Name {value: "PrenoteFileRunPayDate"}
    string prenoteFileRunPayDate?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "BuildingSocietyNumber"}
    string buildingSocietyNumber?;
    @jsondata:Name {value: "AccountNumber"}
    string accountNumber?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "BankNumber"}
    string bankNumber?;
    @jsondata:Name {value: "DepositNumber"}
    int:Signed32 depositNumber?;
    @jsondata:Name {value: "IsSpecialDisbursementAccount"}
    boolean isSpecialDisbursementAccount?;
    @jsondata:Name {value: "PayCardType"}
    string payCardType?;
    @jsondata:Name {value: "IsMultiSourceAccount"}
    boolean isMultiSourceAccount?;
    @jsondata:Name {value: "FinancialInstitution"}
    FinancialInstitution financialInstitution?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "PayMethod"}
    PayMethod payMethod?;
    @jsondata:Name {value: "PrenoteFileSentOn"}
    string prenoteFileSentOn?;
    @jsondata:Name {value: "DepositValue"}
    decimal depositValue?;
    @jsondata:Name {value: "RoutingTransitNumber"}
    string routingTransitNumber?;
    @jsondata:Name {value: "AccountHolder"}
    string accountHolder?;
};

public type ApplicantDetails record {
    @jsondata:Name {value: "Email"}
    string email?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "HomePhoneNumber"}
    string homePhoneNumber?;
    @jsondata:Name {value: "FullName"}
    string fullName?;
    @jsondata:Name {value: "AdditionalDocuments"}
    FileDetails[] additionalDocuments?;
    @jsondata:Name {value: "PhoneNumber"}
    string phoneNumber?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "CoverLetter"}
    string coverLetter?;
    @jsondata:Name {value: "UseEmailForLogin"}
    boolean useEmailForLogin?;
    @jsondata:Name {value: "Resume"}
    ApplicantResume resume?;
};

# Represents the Queries record for the operation: AppUserSSO_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type AppUserSSOGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeIRLTaxPAYEExclusionCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeIRLTaxPAYEExclusion[] items?;
};

public type PaginatedPayloadIEnumerableCourse record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    Course[] data?;
};

public type EmployeeClockDeviceGroup record {
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ClockDeviceGroup"}
    ClockDeviceGroup clockDeviceGroup?;
};

public type EmployeePayrollElectionDeletionModel record {
    @jsondata:Name {value: "Elections"}
    EmployeeElectionAPIDeletionModel[] elections?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
};

public type PayloadAnalyticsDatasetMetadata record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    AnalyticsDatasetMetadata data?;
};

public type PayloadIEnumerablePlanLaborCategoryCode record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PlanLaborCategoryCode[] data?;
};

public type EmployeePayrollTaxParameterCollection record {
    @jsondata:Name {value: "Items"}
    EmployeePayrollTaxParameter[] items?;
};

public type PayloadJob record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Job data?;
};

public type EmployeeExportParams record {
    @jsondata:Name {value: "DeltaOption"}
    string deltaOption?;
    @jsondata:Name {value: "ContextDateOption"}
    string contextDateOption?;
    @jsondata:Name {value: "AmfEntity"}
    string amfEntity?;
    @jsondata:Name {value: "PageSize"}
    int:Signed32 pageSize?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "DeltaDate"}
    string deltaDate?;
    @jsondata:Name {value: "ExcludeTerminatedEmployeesOlderThanXDays"}
    int:Signed32 excludeTerminatedEmployeesOlderThanXDays?;
    @jsondata:Name {value: "AmfLevel"}
    string amfLevel?;
    @jsondata:Name {value: "AmfLevelValue"}
    string amfLevelValue?;
    @jsondata:Name {value: "ContextDateRangeTo"}
    string contextDateRangeTo?;
    @jsondata:Name {value: "ExportAllEmployeeDetailOnDelta"}
    boolean exportAllEmployeeDetailOnDelta?;
    @jsondata:Name {value: "ContextDateRangeFrom"}
    string contextDateRangeFrom?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "Expand"}
    string expand?;
    @jsondata:Name {value: "PayGroupXRefCode"}
    string payGroupXRefCode?;
    @jsondata:Name {value: "ContextDate"}
    string contextDate?;
};

# Represents the Queries record for the operation: PayrollPayEntry_QuickEntryPatch_By_quickEntries_isValidateOnly_clientNamespace
public type PayrollPayEntryQuickEntryPatchByQuickEntriesIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, PATCH operations validate the request without updating the item. The default value is FALSE. Note, PATCH operation will only validate data structure
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeBalancePeriods_Get_By_employeeXRefCode_asOfDate_startDate_endDate_clientNamespace
public type EmployeeBalancePeriodsGetByEmployeeXRefCodeAsOfDateStartDateEndDateClientNamespaceQueries record {
    # Period end date to determine which employee balance periods to retrieve. If omitted, the period start date will be used. If the period start date is also omitted, today's date will be used. Example: 2020-01-01T00:00:00
    string endDate?;
    # A case-sensitive field that identifies a unique employee
    string employeeXRefCode;
    # The date as of which to calculate the current values for the employee balance periods returned. If omitted, current values will be calculated as of today. Example: 2020-01-01T00:00:00
    string asOfDate?;
    # Period start date to determine which employee balance periods to retrieve. If omitted, today's date will be used. Example: 2020-01-01T00:00:00
    string startDate?;
};

public type PayeeHealthCareProvider record {
    @jsondata:Name {value: "ForwardingOffice"}
    int:Signed32 forwardingOffice?;
    @jsondata:Name {value: "U2Percentage"}
    decimal u2Percentage?;
    @jsondata:Name {value: "DataCollectionPoint"}
    int:Signed32 dataCollectionPoint?;
    @jsondata:Name {value: "AdditionalContributionPercentage"}
    decimal additionalContributionPercentage?;
    @jsondata:Name {value: "U1Percentage"}
    decimal u1Percentage?;
    @jsondata:Name {value: "InstitutionCode"}
    int:Signed32 institutionCode?;
    @jsondata:Name {value: "EffectiveFrom"}
    string effectiveFrom?;
    @jsondata:Name {value: "HealthCareBusinessNumber"}
    int:Signed32 healthCareBusinessNumber?;
    @jsondata:Name {value: "HealthInsuranceType"}
    int:Signed32 healthInsuranceType?;
    @jsondata:Name {value: "HealthCareSuccessorBusinessNumber"}
    int:Signed32 healthCareSuccessorBusinessNumber?;
    @jsondata:Name {value: "EffectiveTo"}
    string effectiveTo?;
};

public type EmployeeGlobalPropertyValueCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeGlobalPropertyValue[] items?;
};

# Represents the Queries record for the operation: LaborMetrics_Patch_By_laborMetricsCodeData_isValidateOnly_clientNamespace
public type LaborMetricsPatchByLaborMetricsCodeDataIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeEmploymentStatusCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEmploymentStatus[] items?;
};

public type EmployeeWorkPatternCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeWorkPattern[] items?;
};

public type StateFilingStatus record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "PayrollOutput"}
    string payrollOutput?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "CalculationCode"}
    string calculationCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "StateFilingStatusCode"}
    string stateFilingStatusCode?;
};

public type EmployeeGLSplitSetDetails record {
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "LaborPercentage"}
    decimal laborPercentage?;
    @jsondata:Name {value: "EmployeeGLSplitSetDetailLaborMetricCodeDetails"}
    EmployeeGLSplitSetDetailLaborMetricCodes[] employeeGLSplitSetDetailLaborMetricCodeDetails?;
};

# Represents the Queries record for the operation: EmployeeConfidentialIdentification_Patch_By_employeeConfidentialIdentification_xRefCode_isValidateOnly_clientNamespace
public type EmployeeConfidentialIdentificationPatchByEmployeeConfidentialIdentificationXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeEthnicityCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEthnicity[] items?;
};

public type PayeeAddress record {
    @jsondata:Name {value: "AddressLine3"}
    string addressLine3?;
    @jsondata:Name {value: "AddressLine2"}
    string addressLine2?;
    @jsondata:Name {value: "AddressLine1"}
    string addressLine1?;
    @jsondata:Name {value: "CountryName"}
    string countryName?;
    @jsondata:Name {value: "StateProvinceName"}
    string stateProvinceName?;
    @jsondata:Name {value: "StateProvinceCode"}
    string stateProvinceCode?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
};

public type PunchLaborMetric record {
    @jsondata:Name {value: "CodeXRefCode"}
    string codeXRefCode?;
    @jsondata:Name {value: "CodeClockTransferCode"}
    string codeClockTransferCode?;
    @jsondata:Name {value: "TypeXRefCode"}
    string typeXRefCode?;
    @jsondata:Name {value: "TypeClockTransferCode"}
    string typeClockTransferCode?;
};

public type PayloadIEnumerablePosition record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Position[] data?;
};

public type EmployeeGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeSSOAccount record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeSSOAccount[] data?;
};

public type LaborMetrics record {
    @jsondata:Name {value: "LaborMetricsTypeXRefCode"}
    string laborMetricsTypeXRefCode?;
    @jsondata:Name {value: "LaborMetricsCodeXRefCode"}
    string laborMetricsCodeXRefCode?;
};

# Represents the Queries record for the operation: PersonContact_Patch_By_personContact_xRefCode_isValidateOnly_clientNamespace
public type PersonContactPatchByPersonContactXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayrollPayEntryImportHistoryErrorDetails record {
    @jsondata:Name {value: "LineContent"}
    string lineContent?;
    @jsondata:Name {value: "ErrorMessage"}
    string errorMessage?;
    @jsondata:Name {value: "LineNumber"}
    int:Signed32 lineNumber?;
};

# Represents the Queries record for the operation: EmployeePropertyValue_Patch_By_employeePropertyValue_xRefCode_isValidateOnly_clientNamespace
public type EmployeePropertyValuePatchByEmployeePropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type DEUEmployeeAccidentInsuranceHazardCategoryCollection record {
    @jsondata:Name {value: "Items"}
    AccidentInsuranceHazardCategory[] items?;
};

public type PayloadIEnumerableEmployeeClockDeviceGroup record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeClockDeviceGroup[] data?;
};

# Represents the Queries record for the operation: ExtensibleProperty_Get_By_typeCode_entityType_countryCode_entityXRefCode_elementXRefCode_activeAll_clientNamespace
public type ExtensiblePropertyGetByTypeCodeEntityTypeCountryCodeEntityXRefCodeElementXRefCodeActiveAllClientNamespaceQueries record {
    string activeAll;
    string elementXRefCode;
};

public type PayloadIEnumerableEmployeeEthnicity record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeEthnicity[] data?;
};

# Represents the Queries record for the operation: EmployeeUKPostgraduateLoan_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeUKPostgraduateLoanGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    string contextDateRangeFrom?;
    string contextDate?;
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeeExportJobs_Post_By_export_isValidateOnly_clientNamespace
public type EmployeeExportJobsPostByExportIsValidateOnlyClientNamespaceQueries record {
    # This parameter used to run a test case without fail
    boolean isValidateOnly?;
};

public type CandidateProfileSource record {
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "CandidateProfileSourceAdditionalInfo"}
    string candidateProfileSourceAdditionalInfo?;
};

# Represents the Queries record for the operation: ShiftBidding_Get_By_OrgUnitXRefCode_EmployeeXRefCode_ScheduleStartDate_ScheduleEndDate_clientNamespace
public type ShiftBiddingGetByOrgUnitXRefCodeEmployeeXRefCodeScheduleStartDateScheduleEndDateClientNamespaceQueries record {
    # The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    @http:Query {name: "OrgUnitXRefCode"}
    string orgUnitXRefCode;
    # Date to represent the start of the schedule period for which Shift Bids should be retrieved
    @http:Query {name: "ScheduleStartDate"}
    string scheduleStartDate;
    # Date to represent the end of the schedule period for which Shift Bids should be retrieved
    @http:Query {name: "ScheduleEndDate"}
    string scheduleEndDate;
};

public type EmployeeShiftBidDTO record {
    @jsondata:Name {value: "BidState"}
    string bidState;
    @jsondata:Name {value: "GroupXRefCode"}
    string groupXRefCode;
};

public type EmployeePaySummaryRetro record {
    @jsondata:Name {value: "LaborMetricsCode4XRefCode"}
    string laborMetricsCode4XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode3XRefCode"}
    string laborMetricsCode3XRefCode?;
    @jsondata:Name {value: "BusinessDate"}
    string businessDate?;
    @jsondata:Name {value: "IsPremium"}
    boolean isPremium?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "LaborMetricsCode1XRefCode"}
    string laborMetricsCode1XRefCode?;
    @jsondata:Name {value: "PieceQuantity"}
    decimal pieceQuantity?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "LaborMetricsCode2XRefCode"}
    string laborMetricsCode2XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode8XRefCode"}
    string laborMetricsCode8XRefCode?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "LaborMetricsCode9XRefCode"}
    string laborMetricsCode9XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode0XRefCode"}
    string laborMetricsCode0XRefCode?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "PunchSegmentStart"}
    string punchSegmentStart?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
    @jsondata:Name {value: "MinuteDuration"}
    int:Signed32 minuteDuration?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "PayCodeXRefCode"}
    string payCodeXRefCode?;
    @jsondata:Name {value: "IsRetro"}
    boolean isRetro?;
    @jsondata:Name {value: "PayAmount"}
    decimal payAmount?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "Rate"}
    decimal rate?;
    @jsondata:Name {value: "PayExportId"}
    int payExportId?;
    @jsondata:Name {value: "PayCategoryXRefCode"}
    string payCategoryXRefCode?;
    @jsondata:Name {value: "LaborMetricsCode7XRefCode"}
    string laborMetricsCode7XRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "LaborMetricsCode6XRefCode"}
    string laborMetricsCode6XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode5XRefCode"}
    string laborMetricsCode5XRefCode?;
};

public type PaginatedPayloadIEnumerableEmployeeGLSplits record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeeGLSplits[] data?;
};

# Represents the Queries record for the operation: ShiftBidding_Post_By_OrgUnitXRefCode_body_isValidateOnly_violationLevel_clientNamespace
public type ShiftBiddingPostByOrgUnitXRefCodeBodyIsValidateOnlyViolationLevelClientNamespaceQueries record {
    boolean isValidateOnly?;
    0|1|2|3|4 violationLevel?;
};

public type PayloadIEnumerablePRGLSplitSet record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PRGLSplitSet[] data?;
};

# Represents the Queries record for the operation: CandidateSourcing_Get_By_companyName_parentCompanyName_internalJobBoardCode_includeActivePostingOnly_lastUpdateTimeFrom_lastUpdateTimeTo_datePostedFrom_datePostedTo_htmlDescription_clientNamespace
public type CandidateSourcingGetByCompanyNameParentCompanyNameInternalJobBoardCodeIncludeActivePostingOnlyLastUpdateTimeFromLastUpdateTimeToDatePostedFromDatePostedToHtmlDescriptionClientNamespaceQueries record {
    # A starting timestamp of job posting date. Example: 2017-01-01T13:24:56
    string datePostedFrom?;
    # A starting timestamp of last updated job posting. Example: 2017-01-01T13:24:56
    string lastUpdateTimeFrom?;
    # An ending timestamp of last updated job posting. Example: 2017-02-01T13:24:56
    string lastUpdateTimeTo?;
    # XRefCode of Job Board. Example: CANDIDATEPORTAL
    string internalJobBoardCode?;
    # Company name. Example: XYZ Co
    string companyName?;
    # If true, then exclude inactive postings from the result. If False, then the 'Last Update Time From' and 'Last Update Time To' parameters are required and the range specified between the 'Last Update Time From' and 'Last Update Time To' parameters must not be larger than 1 month. Example: True
    boolean includeActivePostingOnly?;
    # An ending timestamp of job posting date. Example: 2017-02-01T13:24:56
    string datePostedTo?;
    # A flag to feed the jobs over with html formatting or plain text description
    boolean htmlDescription?;
    # Parent Company name. Example: Ceridian
    string parentCompanyName?;
};

public type PayloadIEnumerableEmployeeSkill record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeSkill[] data?;
};

public type EmployeeDependentsBeneficiariesAddress record {
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "Address3"}
    string address3?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "Address1"}
    string address1?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "County"}
    string county?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Address6"}
    string address6?;
    @jsondata:Name {value: "Address4"}
    string address4?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "Address5"}
    string address5?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "ContactInformationType"}
    ContactInformationType contactInformationType?;
};

public type ClientPayrollCountryUpdate record {
    @jsondata:Name {value: "ConnectedPayCountry"}
    boolean connectedPayCountry?;
    @jsondata:Name {value: "HCMPayrollCountry"}
    boolean hCMPayrollCountry?;
    @jsondata:Name {value: "DefaultTimeZoneXRefCode"}
    string defaultTimeZoneXRefCode?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
};

public type EmployeeScheduleSegmentAPIRequestDTO record {
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode;
    @jsondata:Name {value: "PayAdjCodeXRefCode"}
    string payAdjCodeXRefCode?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "OrgLocationTypeXRefCode"}
    string orgLocationTypeXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    EmployeeScheduleLaborMetricPostAPIRequestDTO[] laborMetrics?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd;
    @jsondata:Name {value: "TimeStart"}
    string timeStart;
};

public type CourseType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BackgroundScreeningStatus record {
    @jsondata:Name {value: "ScreeningStatus"}
    string screeningStatus?;
    @jsondata:Name {value: "ScreeningRequestId"}
    string screeningRequestId?;
    @jsondata:Name {value: "ScreeningResult"}
    string screeningResult?;
};

# Represents the Queries record for the operation: EmployeeDefaultLabor_Patch_By_employeeDefaultLabor_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDefaultLaborPatchByEmployeeDefaultLaborXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeOrgUnitInformation record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeOrgUnitInformation[] data?;
};

public type PayloadPayrollPayEntryImportHistory record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PayrollPayEntryImportHistory data?;
};

public type EmployeeWorkAssignmentCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeWorkAssignment[] items?;
};

public type BackgroundScreeningStatusUrlReport record {
    @jsondata:Name {value: "ScreeningStatus"}
    BackgroundScreeningReportScreeningStatus screeningStatus?;
    @jsondata:Name {value: "ScreeningRequestId"}
    string screeningRequestId?;
    @jsondata:Name {value: "Url"}
    string url?;
    @jsondata:Name {value: "CandidatePII"}
    CandidatePersonalIdentifiableInformation candidatePII?;
    @jsondata:Name {value: "DetailedResults"}
    CandidateScreeningDetailedResult[] detailedResults?;
    @jsondata:Name {value: "CandidateRightToWorkResults"}
    CandidateRightToWorkResult candidateRightToWorkResults?;
};

public type ManagerShiftBid record {
    @jsondata:Name {value: "EmployeeSchedule"}
    EmployeeSchedule employeeSchedule?;
    @jsondata:Name {value: "QualifyingBids"}
    int qualifyingBids?;
    @jsondata:Name {value: "EmployeeScheduleXRefCodes"}
    string[] employeeScheduleXRefCodes?;
    @jsondata:Name {value: "GroupXRefCode"}
    string groupXRefCode?;
    @jsondata:Name {value: "BiddingEmployees"}
    BidderInfo[] biddingEmployees?;
};

public type EmployeeManager record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "ManagerFirstName"}
    string managerFirstName?;
    @jsondata:Name {value: "ManagerBadgeNumber"}
    string managerBadgeNumber?;
    @jsondata:Name {value: "DerivationMethod"}
    int:Signed32 derivationMethod?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ManagerLastName"}
    string managerLastName?;
    @jsondata:Name {value: "ManagerXRefCode"}
    string managerXRefCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ManagerMiddleName"}
    string managerMiddleName?;
};

public type PaginatedPayloadIEnumerableBaseProject record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    BaseProject[] data?;
};

public type LaborValidationModel record {
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "XRefCode"}
    record {} xRefCode?;
};

public type EmployeeSSOAccount record {
    @jsondata:Name {value: "LoginName"}
    string loginName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PaginatedPayloadIEnumerableEmployeePaySummaryRetro record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeePaySummaryRetro[] data?;
};

public type Positions record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    PositionDetails[] values?;
};

# Represents the Queries record for the operation: TimeOff_Get_By_xRefCode_filterTAFWStartDate_filterTAFWEndDate_status_clientNamespace
public type TimeOffGetByXRefCodeFilterTAFWStartDateFilterTAFWEndDateStatusClientNamespaceQueries record {
    # Inclusive period end date to determine which employee time away from work data to retrieve. Format: YYYY-MM-DD
    string filterTAFWEndDate;
    # Inclusive period start date to determine which employee time away from work data to retrieve. Format: YYYY-MM-DD
    string filterTAFWStartDate;
    # A case-sensitive field containing status for time away from work values. Examples: [APPROVED,PENDING,CANCELED,DENIED,CANCELPENDING]
    string status;
};

public type QuestionOptionModel record {
    string label?;
    string value?;
};

# Represents the Queries record for the operation: BenefitsDFLinkExports_GetBenefitsDFLinkOpenEnrollmentExport_By_carrierXRefCode_planStartDate_planEndDate_payrollEarningAccumulationXRefCodes_clientNamespace
public type BenefitsDFLinkExportsGetBenefitsDFLinkOpenEnrollmentExportByCarrierXRefCodePlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesClientNamespaceQueries record {
    # A reference code that maps to a given carrier
    string carrierXRefCode;
    # A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations
    string payrollEarningAccumulationXRefCodes?;
    # The plan start date
    string planStartDate;
    # The plan end date
    string planEndDate?;
};

public type JobClassificationGlobal record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: TimeOff_Post_By_timeOff_isValidateOnly_clientNamespace
public type TimeOffPostByTimeOffIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type DEUEmployeeWageTaxCollection record {
    @jsondata:Name {value: "Items"}
    DEUEmployeeWageTax[] items?;
};

# Represents the Queries record for the operation: EmployeePropertyValue_Post_By_employeePropertyValue_xRefCode_isValidateOnly_clientNamespace
public type EmployeePropertyValuePostByEmployeePropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeAUSFederalTax record {
    @jsondata:Name {value: "AdditionalTaxType"}
    AdditionalTaxType additionalTaxType?;
    @jsondata:Name {value: "ClaimTaxFreeThreshold"}
    boolean claimTaxFreeThreshold?;
    @jsondata:Name {value: "WithholdingVariationAmount"}
    decimal withholdingVariationAmount?;
    @jsondata:Name {value: "ClaimingZoneOverseasorCarerOffset"}
    boolean claimingZoneOverseasorCarerOffset?;
    @jsondata:Name {value: "MedicareLevyExemptionType"}
    MedicareLevyExemptionType medicareLevyExemptionType?;
    @jsondata:Name {value: "ResidentCode"}
    PRTaxResidentCode residentCode?;
    @jsondata:Name {value: "FlatComissionerInstalmentRate"}
    decimal flatComissionerInstalmentRate?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "WithholdingVariationAmountType"}
    WithholdingVariationAmountType withholdingVariationAmountType?;
    @jsondata:Name {value: "STSLDebt"}
    boolean sTSLDebt?;
    @jsondata:Name {value: "DoesWithholdingVariationIncludeSTSLDebt"}
    boolean doesWithholdingVariationIncludeSTSLDebt?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "WithholdingVariationType"}
    WithholdingVariationType withholdingVariationType?;
    @jsondata:Name {value: "MedicareLevyReductionClaimed"}
    boolean medicareLevyReductionClaimed?;
    @jsondata:Name {value: "TFNExemptionReason"}
    TFNExemptionReason tFNExemptionReason?;
    @jsondata:Name {value: "SeniorAndPensionersTaxOffset"}
    boolean seniorAndPensionersTaxOffset?;
    @jsondata:Name {value: "CombineWeeklyTotalIncomelessthanTableA"}
    boolean combineWeeklyTotalIncomelessthanTableA?;
    @jsondata:Name {value: "AmountClaimedforTaxOffset"}
    decimal amountClaimedforTaxOffset?;
    @jsondata:Name {value: "NumberofDependentChildren"}
    int:Signed32 numberofDependentChildren?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayBasis"}
    string payBasis?;
    @jsondata:Name {value: "Spouse"}
    boolean spouse?;
    @jsondata:Name {value: "IsContractorSuperLiabilityOnly"}
    boolean isContractorSuperLiabilityOnly?;
    @jsondata:Name {value: "ApplyMedicareForWorkingHolidayMaker"}
    boolean applyMedicareForWorkingHolidayMaker?;
    @jsondata:Name {value: "IsUpwardVariation"}
    boolean isUpwardVariation?;
    @jsondata:Name {value: "EarningGroup"}
    PREarningAccumulator earningGroup?;
};

public type MilitaryServiceDetails record {
    @jsondata:Name {value: "StartDateMonth"}
    string startDateMonth?;
    @jsondata:Name {value: "EndDateYear"}
    string endDateYear?;
    @jsondata:Name {value: "EndCurrent"}
    boolean endCurrent?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "EndDateMonth"}
    string endDateMonth?;
    @jsondata:Name {value: "Branch"}
    string branch?;
    @jsondata:Name {value: "Rank"}
    string rank?;
    @jsondata:Name {value: "Commendations"}
    string commendations?;
    @jsondata:Name {value: "ServiceCountry"}
    string serviceCountry?;
    @jsondata:Name {value: "StartDateYear"}
    string startDateYear?;
};

public type EmployeeDeduction record {
    @jsondata:Name {value: "Position"}
    Position position?;
    @jsondata:Name {value: "Deduction"}
    Deduction deduction?;
    @jsondata:Name {value: "ElectionSchedule"}
    ElectionSchedule electionSchedule?;
    @jsondata:Name {value: "ElectionStartPayPeriodStartDate"}
    string electionStartPayPeriodStartDate?;
    @jsondata:Name {value: "ElectionStartPayGroup"}
    PayGroup electionStartPayGroup?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "ContinuePaymentOnStatutoryPay"}
    boolean continuePaymentOnStatutoryPay?;
    @jsondata:Name {value: "IsOptOut"}
    int:Signed32 isOptOut?;
    @jsondata:Name {value: "EmployeeDeductionParameters"}
    EmployeeDeductionParameterCollection employeeDeductionParameters?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "EmployeeDeductionLimits"}
    EmployeeDeductionLimitCollection employeeDeductionLimits?;
    @jsondata:Name {value: "IsBlocked"}
    boolean isBlocked?;
    @jsondata:Name {value: "Location"}
    Location location?;
};

public type EmployeeWorkContract record {
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "ContractWorkPercent"}
    decimal contractWorkPercent?;
    @jsondata:Name {value: "WorkPatterns"}
    EmployeeWorkPatternCollection workPatterns?;
    @jsondata:Name {value: "FullTimeHours"}
    decimal fullTimeHours?;
    @jsondata:Name {value: "WorkContract"}
    WorkContract workContract?;
    @jsondata:Name {value: "BaseComplementaryHours"}
    decimal baseComplementaryHours?;
    @jsondata:Name {value: "WorkPatternLengthDays"}
    int:Signed32 workPatternLengthDays?;
    @jsondata:Name {value: "BaseHours"}
    decimal baseHours?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "AverageNumOfDays"}
    decimal averageNumOfDays?;
    @jsondata:Name {value: "CreateShiftOnHolidays"}
    boolean createShiftOnHolidays?;
    @jsondata:Name {value: "EndDate"}
    string endDate?;
};

public type LaborValidationMetricFilterXRefCodes record {
    @jsondata:Name {value: "Criteria"}
    LaborValidationModel[] criteria?;
};

public type PerformanceCycle record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "CycleEndDate"}
    string cycleEndDate?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "CycleStartDate"}
    string cycleStartDate?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeBadge record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeBadge[] data?;
};

public type PayFrequency record {
    @jsondata:Name {value: "PayFrequencyType"}
    string payFrequencyType?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadBackgroundJobLog record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    BackgroundJobLog data?;
};

# Represents the Queries record for the operation: EmployeeDefaultLabor_Post_By_employeeDefaultLabor_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDefaultLaborPostByEmployeeDefaultLaborXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type BenefitsDFLinkExportEarningGroupingResults record {
    @jsondata:Name {value: "LegalEntityReferenceCode"}
    string legalEntityReferenceCode?;
    @jsondata:Name {value: "QTDHours"}
    decimal qTDHours?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "EarningGroupingReferenceCode"}
    string earningGroupingReferenceCode?;
    @jsondata:Name {value: "CurrentHours"}
    decimal currentHours?;
    @jsondata:Name {value: "MTDHours"}
    decimal mTDHours?;
    @jsondata:Name {value: "YTDHours"}
    decimal yTDHours?;
};

# Represents the Queries record for the operation: EmergencyContact_Post_By_emergencyContact_xRefCode_isValidateOnly_clientNamespace
public type EmergencyContactPostByEmergencyContactXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type LimitAccessType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeAssignedSexAndGenderIdentity_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeAssignedSexAndGenderIdentityGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: LaborMetrics_Post_By_laborMetricsCodeData_isValidateOnly_clientNamespace
public type LaborMetricsPostByLaborMetricsCodeDataIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeePropertyOption record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeVolunteerList_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeVolunteerListGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeePaySummariesRetro_GetEmployeePaySummaries_By_payGroupXRefCode_periodStartDate_periodEndDate_payDate_employeeXRefCode_locationXRefCode_payCategoryXRefCode_onlyRetros_payExportId_pageSize_clientNamespace
public type EmployeePaySummariesRetroGetEmployeePaySummariesByPayGroupXRefCodePeriodStartDatePeriodEndDatePayDateEmployeeXRefCodeLocationXRefCodePayCategoryXRefCodeOnlyRetrosPayExportIdPageSizeClientNamespaceQueries record {
    # The unique identifier of the Pay export data to be retrieved. The value provided must be the exact match for a Pay export
    int payExportId?;
    # The start date of the pay calendar to be retrieved. The value provided must be the exact match for an effective start of a pay calendar
    string periodStartDate?;
    # Filters only Retro Employee Pay Summaries (defaults to false)
    boolean onlyRetros?;
    # The unique identifier (external reference code) of the payCategory to be retrieved. The value provided must be the exact match for a payCategory
    string payCategoryXRefCode?;
    # Number of records to be loaded (defaults to a 1000 records)
    int:Signed32 pageSize?;
    # The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee
    string employeeXRefCode?;
    # The unique identifier (external reference code) of the pay group to be retrieved. The value provided must be the exact match for a pay group
    string payGroupXRefCode;
    # The unique identifier (external reference code) of the location to be retrieved. The value provided must be the exact match for a location
    string locationXRefCode?;
    # The end date of the pay calendar to be retrieved. The value provided must be the exact match for an effective end of a pay calendar
    string periodEndDate?;
    # The pay date of the pay calendar to be retrieved. The value provided must be the exact match for a pay date of a pay calendar
    string payDate?;
};

# Represents the Queries record for the operation: EmployeeUKStudentLoan_Post_By_employeeUKStudentLoan_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKStudentLoanPostByEmployeeUKStudentLoanXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerablePayType record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PayType[] data?;
};

public type PayloadIEnumerableEmployeeHRPolicy record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeHRPolicy[] data?;
};

# Represents the Queries record for the operation: Skill_Get_By_pageSize_xRefCode_clientNamespace
public type SkillGetByPageSizeXRefCodeClientNamespaceQueries record {
    # The page size for the pagination (Default is 1000)
    int:Signed32 pageSize?;
    # The xrefcode filter for the skill
    string xRefCode?;
};

public type JobSetLevel record {
    @jsondata:Name {value: "JobSet"}
    JobSet jobSet?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmergencyContactPersonContactCollection record {
    @jsondata:Name {value: "Items"}
    EmergencyContactPersonContact[] items?;
};

public type EmployeeRoleCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeRole[] items?;
};

# Represents the Queries record for the operation: PayrollPayEntry_TimeDataPost_By_importData_isValidateOnly_clientNamespace
public type PayrollPayEntryTimeDataPostByImportDataIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
};

public type BenefitsDFLinkExportProperty record {
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "PropertyTypeCode"}
    string propertyTypeCode?;
    @jsondata:Name {value: "EffectiveEndDate"}
    string effectiveEndDate?;
    @jsondata:Name {value: "PropertyValue"}
    string propertyValue?;
    @jsondata:Name {value: "EffectiveStartDate"}
    string effectiveStartDate?;
    @jsondata:Name {value: "PropertyValueTypeCode"}
    int:Signed32 propertyValueTypeCode?;
};

# Represents the Queries record for the operation: EarningDefinition_Get_By_countryCodes_earningXRefCodes_taxComplianceXRefCodes_earningTypeXRefCodes_clientNamespace
public type EarningDefinitionGetByCountryCodesEarningXRefCodesTaxComplianceXRefCodesEarningTypeXRefCodesClientNamespaceQueries record {
    # List of country codes with comma separator to filter the result base on country
    string countryCodes?;
    # List of Tax Compliance Reference Codes (EarningCodeXRefCodes) with comma separator to filter the result
    string taxComplianceXRefCodes?;
    # List of Earning Type Reference Codes with comma separator to filter the result
    string earningTypeXRefCodes?;
    # List of Earning Reference Codes with comma separator to filter the result
    string earningXRefCodes?;
};

# Represents the Queries record for the operation: Departments_Get_By_xRefCode_isValidateOnly_clientNamespace
public type DepartmentsGetByXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeUSFederalTax record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUSFederalTax[] data?;
};

# Represents the Queries record for the operation: EmployeeOnboardingPolicies_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeOnboardingPoliciesGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: DeductionDefinition_Get_By_countryCodes_deductionXRefCodes_taxComplianceXRefCodes_taxTypeCodes_systemDeduction_clientNamespace
public type DeductionDefinitionGetByCountryCodesDeductionXRefCodesTaxComplianceXRefCodesTaxTypeCodesSystemDeductionClientNamespaceQueries record {
    # &gt;List of country codes with comma separator to filter the result base on country
    string countryCodes?;
    # Set to True to get only System Defined Deduction, or set to False to get only User Defined Deductions
    boolean systemDeduction?;
    # List of Tax Compliance Reference Codes (DeductionCodeXRefCodes) with comma separator to filter the result
    string taxComplianceXRefCodes?;
    # List of Deduction Reference Codes with comma separator to filter the result
    string deductionXRefCodes?;
    # List of Tax Type Codes with comma separator to filter the result
    string taxTypeCodes?;
};

# Represents the Queries record for the operation: EmployeeWorkLocationOverride_Post_By_workLocationOverrides_isValidateOnly_clientNamespace
public type EmployeeWorkLocationOverridePostByWorkLocationOverridesIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
};

public type EmployeeDeductionsCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDeduction[] items?;
};

public type ScheduleLaborMetricExtended record {
    @jsondata:Name {value: "CodeXRefCode"}
    string codeXRefCode?;
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "TypeXRefCode"}
    string typeXRefCode?;
};

public type EmployeeLegalEntity record {
    @jsondata:Name {value: "WorkLocationAddress"}
    WorkLocationAddress workLocationAddress?;
    @jsondata:Name {value: "OriginalHireDate"}
    string originalHireDate?;
    @jsondata:Name {value: "FEIN"}
    string fEIN?;
    @jsondata:Name {value: "TerminationDate"}
    string terminationDate?;
    @jsondata:Name {value: "LegalEntityAddress"}
    LegalEntityAddress legalEntityAddress?;
    @jsondata:Name {value: "EmploymentStatus"}
    string employmentStatus?;
    @jsondata:Name {value: "PayType"}
    string payType?;
    @jsondata:Name {value: "EmploymentType"}
    string employmentType?;
    @jsondata:Name {value: "HourlyRate"}
    decimal hourlyRate?;
    @jsondata:Name {value: "PayFrequency"}
    string payFrequency?;
    @jsondata:Name {value: "NormalWeeklyHours"}
    decimal normalWeeklyHours?;
    @jsondata:Name {value: "LegalEntityName"}
    string legalEntityName?;
    @jsondata:Name {value: "HireDate"}
    string hireDate?;
    @jsondata:Name {value: "JobAssignment"}
    string jobAssignment?;
    @jsondata:Name {value: "LastPayrollPayDate"}
    string lastPayrollPayDate?;
    @jsondata:Name {value: "BaseSalary"}
    decimal baseSalary?;
};

# Represents the Queries record for the operation: Projects_Post_By_projectData_isValidateOnly_clientNamespace
public type ProjectsPostByProjectDataIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: ExtensibleProperty_Delete_By_typeCode_entityType_countryCode_entityXRefCode_isValidateOnly_clientNamespace
public type ExtensiblePropertyDeleteByTypeCodeEntityTypeCountryCodeEntityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type PayGroupCalendar record {
    @jsondata:Name {value: "CollectionFrequency"}
    string collectionFrequency?;
    @jsondata:Name {value: "Calendar"}
    PayGroupCalendarDetails[] calendar?;
    @jsondata:Name {value: "PayGroupXRefCode"}
    string payGroupXRefCode?;
    @jsondata:Name {value: "Frequency"}
    string frequency?;
    @jsondata:Name {value: "Country"}
    string country?;
    @jsondata:Name {value: "PayGroupName"}
    string payGroupName?;
    @jsondata:Name {value: "PayrollFrequency"}
    string payrollFrequency?;
    @jsondata:Name {value: "DayStartOfWeek"}
    string dayStartOfWeek?;
};

# Represents the Queries record for the operation: DocMgmtSecurityGroup_Patch_By_docMgmtSecurityGroupUserMap_xRefCode_isValidateOnly_clientNamespace
public type DocMgmtSecurityGroupPatchByDocMgmtSecurityGroupUserMapXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: Availability_Get_By_xRefCode_filterAvailabilityStartDate_filterAvailabilityEndDate_clientNamespace
public type AvailabilityGetByXRefCodeFilterAvailabilityStartDateFilterAvailabilityEndDateClientNamespaceQueries record {
    # Inclusive period end date to determine which employee availability data to retrieve . Example: 2017-01-01T00:00:00
    string filterAvailabilityEndDate;
    # Inclusive period start date to determine which employee availability data to retrieve . Example: 2017-01-01T00:00:00
    string filterAvailabilityStartDate;
};

public type PayloadIEnumerableEmployeeUSTaxStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUSTaxStatus[] data?;
};

public type HRIncidentAction record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LMSAssignmentMethod record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: AppUserSSO_Delete_By_employeeXRefCode_loginName_isValidateOnly_clientNamespace
public type AppUserSSODeleteByEmployeeXRefCodeLoginNameIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, this operation is validated without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: Positions_Post_By_position_isValidateOnly_clientNamespace
public type PositionsPostByPositionIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type AnalyticsDatasetMetadata record {
    @jsondata:Name {value: "Status"}
    string status?;
    # Difference between report row counts
    @jsondata:Name {value: "DifferenceCount"}
    int:Signed32 differenceCount?;
    # Ended refresh Timestamp
    @jsondata:Name {value: "EndedTimestamp"}
    string endedTimestamp?;
    # Report Parameters
    @jsondata:Name {value: "Parameters"}
    string parameters?;
    # Report Id
    @jsondata:Name {value: "ReportId"}
    int:Signed32 reportId?;
    # Total number of pages for given dataset
    @jsondata:Name {value: "TotalPages"}
    int:Signed32 totalPages?;
    # Started refresh Timestamp
    @jsondata:Name {value: "StartedTimestamp"}
    string startedTimestamp?;
    # Last modified timestamp of report
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    # RefreshStatus
    @jsondata:Name {value: "RefreshStatus"}
    string refreshStatus?;
    # Dataset Id
    @jsondata:Name {value: "DatasetId"}
    string datasetId?;
    # Report Filters
    @jsondata:Name {value: "Filters"}
    string filters?;
    # Created Date of report
    @jsondata:Name {value: "CreatedDate"}
    string createdDate?;
    # Row count in the dataset
    @jsondata:Name {value: "RowCount"}
    string rowCount?;
};

public type PayloadIEnumerableEmploymentStatusReason record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmploymentStatusReason[] data?;
};

# This class encapsulates the report data generated during the execution of the report
public type ReportColumnMetadata record {
    # CodeName is a unique name that can be used with code
    # to refer to this specific column.  Its value should be consistent
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    # This is a name as defined by a user when developing this report.  This name
    # would be a human facing name that would be used on a printed report.
    # This field is used as the key to the values dictionary
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    # This is a string representation of the data type
    @jsondata:Name {value: "DataType"}
    string dataType?;
};

public type EmployeeAUSSuperannuationRules record {
    @jsondata:Name {value: "MinimumContributionAmount"}
    decimal minimumContributionAmount?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ApplyQuarterlyMaxBaseCapForEmployerSuperannuation"}
    boolean applyQuarterlyMaxBaseCapForEmployerSuperannuation?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "OverrideMinBaseForEmployerSuperannuation"}
    boolean overrideMinBaseForEmployerSuperannuation?;
};

public type PayloadIEnumerableEmployeePayrollTaxParameter record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePayrollTaxParameter[] data?;
};

# Represents the Queries record for the operation: AmfBulkAPI_Post_By_export_isValidateOnly_clientNamespace
public type AmfBulkAPIPostByExportIsValidateOnlyClientNamespaceQueries record {
    # This parameter used to run a test case without fail
    boolean isValidateOnly?;
};

public type OrgLocationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BenefitsDFLinkExportEmployeeElectionDetail record {
    @jsondata:Name {value: "CoverageEndDate"}
    string coverageEndDate?;
    @jsondata:Name {value: "ElectionId"}
    int:Signed32 electionId?;
    @jsondata:Name {value: "OptionCode"}
    string optionCode?;
    @jsondata:Name {value: "RequestedCoverageAmount"}
    decimal requestedCoverageAmount?;
    @jsondata:Name {value: "CareProviderDetails"}
    BenefitsDFLinkExportCareProvider[] careProviderDetails?;
    @jsondata:Name {value: "PlanTypeCode"}
    string planTypeCode?;
    @jsondata:Name {value: "EmployeePerPayCost"}
    decimal employeePerPayCost?;
    @jsondata:Name {value: "CoverageMultiplier"}
    decimal coverageMultiplier?;
    @jsondata:Name {value: "EOIStatusCode"}
    int:Signed32 eOIStatusCode?;
    @jsondata:Name {value: "RateXrefCode"}
    string rateXrefCode?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "EmployeeDeductionScheduleCode"}
    string employeeDeductionScheduleCode?;
    @jsondata:Name {value: "EmployeeContributionPercentage"}
    decimal employeeContributionPercentage?;
    @jsondata:Name {value: "PlanSubTypeCode"}
    string planSubTypeCode?;
    @jsondata:Name {value: "PreAgeReducedCoverageAmount"}
    decimal preAgeReducedCoverageAmount?;
    @jsondata:Name {value: "ElectionDate"}
    string electionDate?;
    @jsondata:Name {value: "EffectiveEndDate"}
    string effectiveEndDate?;
    @jsondata:Name {value: "PlanCode"}
    string planCode?;
    @jsondata:Name {value: "PolicyNumber"}
    string policyNumber?;
    @jsondata:Name {value: "PlanEndDate"}
    string planEndDate?;
    @jsondata:Name {value: "CoverageAmount"}
    decimal coverageAmount?;
    @jsondata:Name {value: "CarrierPerPayCost"}
    decimal carrierPerPayCost?;
    @jsondata:Name {value: "EmployeeAnnualCost"}
    decimal employeeAnnualCost?;
    @jsondata:Name {value: "EmployerAnnualCost"}
    decimal employerAnnualCost?;
    @jsondata:Name {value: "PlanXrefCode"}
    string planXrefCode?;
    @jsondata:Name {value: "EmployeeContributionAmount"}
    decimal employeeContributionAmount?;
    @jsondata:Name {value: "CoverageStartDate"}
    string coverageStartDate?;
    @jsondata:Name {value: "EmployerDeductionScheduleCode"}
    string employerDeductionScheduleCode?;
    @jsondata:Name {value: "EmployerContributionPercentage"}
    decimal employerContributionPercentage?;
    @jsondata:Name {value: "CarrierAnnualCost"}
    decimal carrierAnnualCost?;
    @jsondata:Name {value: "EmployerPerPayCost"}
    decimal employerPerPayCost?;
    @jsondata:Name {value: "EmployerContributionAmount"}
    decimal employerContributionAmount?;
    @jsondata:Name {value: "EffectiveStartDate"}
    string effectiveStartDate?;
    @jsondata:Name {value: "PlanStartDate"}
    string planStartDate?;
};

public type PayloadIEnumerableJobFeed record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    JobFeed[] data?;
};

public type PayloadIEnumerableEmployeeIRLTaxRPN record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeIRLTaxRPN[] data?;
};

public type EmployeePayAdjustmentPostResponse record {
    @jsondata:Name {value: "EmployeePayAdjustXRefCode"}
    string employeePayAdjustXRefCode?;
};

public type ChildLocation record {
    @jsondata:Name {value: "OrgUnitLegalEntities"}
    OrgUnitLegalEntityCollection orgUnitLegalEntities?;
    @jsondata:Name {value: "OrgLevel"}
    OrgLevel orgLevel?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "OrgUnitLocationTypes"}
    OrgUnitLocationTypeCollection orgUnitLocationTypes?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "OrgUnitParents"}
    OrgUnitParentCollection orgUnitParents?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeePayGradeRate record {
    @jsondata:Name {value: "ControlSalary"}
    decimal controlSalary?;
    @jsondata:Name {value: "MaximumSalary"}
    decimal maximumSalary?;
    @jsondata:Name {value: "MaximumRate"}
    decimal maximumRate?;
    @jsondata:Name {value: "WorkAssignmentEffectiveStart"}
    string workAssignmentEffectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "SalaryMidPoint"}
    decimal salaryMidPoint?;
    @jsondata:Name {value: "MinimumRate"}
    decimal minimumRate?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "MinimumSalary"}
    decimal minimumSalary?;
    @jsondata:Name {value: "WorkAssignmentEffectiveEnd"}
    string workAssignmentEffectiveEnd?;
    @jsondata:Name {value: "ControlRate"}
    decimal controlRate?;
    @jsondata:Name {value: "RateMidPoint"}
    decimal rateMidPoint?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "PayGrade"}
    PayGrade payGrade?;
};

public type PayloadClientPayrollCountry record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ClientPayrollCountry data?;
};

public type ScheduleActivityExtended record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type EmployeePayrollTaxParameterElement record {
    @jsondata:Name {value: "Value"}
    string value?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Name"}
    EmployeePayrollTaxParameterElementName name?;
};

# Represents the Queries record for the operation: BenefitsDFLinkMultiCarrierExports_GetBenefitsDFLinkMultiCarrierOpenEnrollmentExport_By_carrierXRefCodes_planStartDate_planEndDate_payrollEarningAccumulationXRefCodes_clientNamespace
public type BenefitsDFLinkMultiCarrierExportsGetBenefitsDFLinkMultiCarrierOpenEnrollmentExportByCarrierXRefCodesPlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesClientNamespaceQueries record {
    # A comma delimited list of reference codes, mapping to a list of individual carriers
    string carrierXRefCodes;
    # A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations
    string payrollEarningAccumulationXRefCodes?;
    # The plan start date
    string planStartDate;
    # The plan end date
    string planEndDate?;
};

public type CandidateRTWDocumentDetails record {
    @jsondata:Name {value: "Value"}
    string value?;
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: EmployeeManagers_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeManagersGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmploymentAgreementPopulation record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LaborDemandItem record {
    @jsondata:Name {value: "AxisXRefCode"}
    string axisXRefCode?;
    @jsondata:Name {value: "ServiceHours"}
    decimal serviceHours?;
    @jsondata:Name {value: "Hours"}
    decimal hours?;
    @jsondata:Name {value: "ActivityXRefCode"}
    string activityXRefCode?;
    @jsondata:Name {value: "Time"}
    string time?;
    @jsondata:Name {value: "NonServiceHours"}
    decimal nonServiceHours?;
    @jsondata:Name {value: "ZoneXRefCode"}
    string zoneXRefCode?;
    @jsondata:Name {value: "Day"}
    string day?;
    @jsondata:Name {value: "LaborMeasureXRefCode"}
    string laborMeasureXRefCode?;
};

# Represents the Queries record for the operation: EmployeeCANStateTax_Patch_By_employeeCANStateTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCANStateTaxPatchByEmployeeCANStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableAnalyticsReportMetadata record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    AnalyticsReportMetadata[] data?;
};

public type EarningPayeeParameter record {
    @jsondata:Name {value: "PayeeParameterXRefCode"}
    string payeeParameterXRefCode?;
    @jsondata:Name {value: "Value"}
    string value?;
    @jsondata:Name {value: "PayeeParameterName"}
    string payeeParameterName?;
};

public type QuestionHierarchicalOptionModel record {
    QuestionConditionModel condition?;
    QuestionOptionModel[] options?;
    string id?;
};

# Represents the Queries record for the operation: EmployeeUnion_Patch_By_employeeUnion_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUnionPatchByEmployeeUnionXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type LegalEntityOverride record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "BankBranchAddressXRefCode"}
    string bankBranchAddressXRefCode?;
    @jsondata:Name {value: "LegalEntityName"}
    string legalEntityName?;
    @jsondata:Name {value: "BankBranchAddressName"}
    string bankBranchAddressName?;
    @jsondata:Name {value: "WorkSiteXRefCode"}
    string workSiteXRefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "WorkSiteStateCode"}
    string workSiteStateCode?;
    @jsondata:Name {value: "WorkSiteName"}
    string workSiteName?;
    @jsondata:Name {value: "OverrideCustomerFundingIdentiferXRefCode"}
    string overrideCustomerFundingIdentiferXRefCode?;
    @jsondata:Name {value: "WorkSiteNumber"}
    string workSiteNumber?;
    @jsondata:Name {value: "OverrideCustomerFundingIdentiferName"}
    string overrideCustomerFundingIdentiferName?;
};

public type Document record {
    @jsondata:Name {value: "UploadedDate"}
    string uploadedDate?;
    @jsondata:Name {value: "DocumentGUID"}
    string documentGUID?;
    @jsondata:Name {value: "FileName"}
    string fileName?;
    @jsondata:Name {value: "DocumentType"}
    DocumentType documentType?;
    @jsondata:Name {value: "UploadedBy"}
    UploadedBy uploadedBy?;
    @jsondata:Name {value: "DocumentName"}
    string documentName?;
};

public type PayloadIEnumerableEmployeeCourse record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeCourse[] data?;
};

public type EntitlementPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type ClockDeviceGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeCANTaxStatus_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeCANTaxStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type WithholdingVariationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeUKStudentLoan_Patch_By_employeeUKStudentLoan_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKStudentLoanPatchByEmployeeUKStudentLoanXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeCANTaxStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeCANTaxStatus[] data?;
};

public type OrgUnitParent record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "ParentOrgUnit"}
    HRConfigurationEntity parentOrgUnit?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PaginatedPayloadIEnumerableEmployee record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    Employee[] data?;
};

public type PayloadIEnumerableEmployeeIRLTaxPRSI record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeIRLTaxPRSI[] data?;
};

public type PayloadAnalyticsReportDataset record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    AnalyticsReportDataset data?;
};

public type PropertyValue record {
    @jsondata:Name {value: "SavedAt"}
    string savedAt?;
    @jsondata:Name {value: "IsElementActive"}
    boolean isElementActive?;
    @jsondata:Name {value: "ElementXRefCode"}
    string elementXRefCode?;
    @jsondata:Name {value: "ElementName"}
    string elementName?;
    @jsondata:Name {value: "SavedBy"}
    int:Signed32 savedBy?;
    @jsondata:Name {value: "Value"}
    string value?;
    @jsondata:Name {value: "ElementDefaultValue"}
    string elementDefaultValue?;
};

public type TaxAuthorityInstanceDetails record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "EmployeeTax"}
    boolean employeeTax?;
    @jsondata:Name {value: "EmployerTax"}
    boolean employerTax?;
    @jsondata:Name {value: "TaxAuthorityInstance"}
    string taxAuthorityInstance?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type ElectionSchedule record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type ShiftRotation record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeHealthWellnessCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeHealthWellness[] items?;
};

public type PRSIExemptReason record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayHolidayGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type AuthorizationPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type Project record {
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BaseEmployeeSubset record {
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "PreviousLastName"}
    string previousLastName?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "Initials"}
    string initials?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "SecondLastName"}
    string secondLastName?;
    @jsondata:Name {value: "PreferredLastName"}
    string preferredLastName?;
    @jsondata:Name {value: "Suffix"}
    string suffix?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "NewXRefCode"}
    string newXRefCode?;
    @jsondata:Name {value: "CommonName"}
    string commonName?;
    @jsondata:Name {value: "MaidenName"}
    string maidenName?;
};

public type PayloadIEnumerableReportMetadata record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ReportMetadata[] data?;
};

public type AssignedSexComplianceCode record {
    @jsondata:Name {value: "ComplianceCode"}
    string complianceCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeUKTaxDetails record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUKTaxDetails[] data?;
};

# Represents the Queries record for the operation: EmployeeDirectDeposit_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeDirectDepositGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PayloadIEnumerablePayClass record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PayClass[] data?;
};

public type SkillLevel record {
    @jsondata:Name {value: "RankOrder"}
    int:Signed32 rankOrder?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeePayrollTaxParameter_Patch_By_employeePayrollTaxParameters_xRefCode_isValidateOnly_clientNamespace
public type EmployeePayrollTaxParameterPatchByEmployeePayrollTaxParametersXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type EmployeeAvailabilityDaysPostRequestDTO record {
    @jsondata:Name {value: "IsAvailable"}
    boolean isAvailable;
    @jsondata:Name {value: "EndTime1"}
    string endTime1?;
    @jsondata:Name {value: "StartTime2"}
    string startTime2?;
    @jsondata:Name {value: "EndTime2"}
    string endTime2?;
    @jsondata:Name {value: "StartTime1"}
    string startTime1?;
};

public type Certifications record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    CertificationDetails[] values?;
};

# Represents the Queries record for the operation: EmployeeGLSplits_Patch_By_glSplits_isValidateOnly_clientNamespace
public type EmployeeGLSplitsPatchByGlSplitsIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, PATCH operations validate the request without queue the import. The default value is FALSE. Note, PATCH operation will only validate data structure
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: OperatingHours_PatchOperatingHoursException_By_OperatingHoursExceptionAPIPostPayload_isValidateOnly_clientNamespace
public type OperatingHoursPatchOperatingHoursExceptionByOperatingHoursExceptionAPIPostPayloadIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type LaborMetricsCodePostPatchResponse record {
    @jsondata:Name {value: "LaborMetricsCodePostPatchResponseXRefCode"}
    string laborMetricsCodePostPatchResponseXRefCode?;
};

public type LinkDetails record {
    @jsondata:Name {value: "Url"}
    string url?;
};

public type EmployeeDependentBeneficiary record {
    @jsondata:Name {value: "SocialSecurityNumber"}
    string socialSecurityNumber?;
    @jsondata:Name {value: "SocialSecurityDisabilityAwardDate"}
    string socialSecurityDisabilityAwardDate?;
    @jsondata:Name {value: "TobaccoUser"}
    string tobaccoUser?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "IsDisabled"}
    boolean isDisabled?;
    @jsondata:Name {value: "IsActiveDependent"}
    boolean isActiveDependent?;
    @jsondata:Name {value: "SSNExpiryDate"}
    string sSNExpiryDate?;
    @jsondata:Name {value: "Gender"}
    string gender?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "DateLastSmoked"}
    string dateLastSmoked?;
    @jsondata:Name {value: "IsStudent"}
    boolean isStudent?;
    @jsondata:Name {value: "Addresses"}
    EmployeeDependentsBeneficiariesAddressCollection addresses?;
    @jsondata:Name {value: "MaritalStatus"}
    MaritalStatus maritalStatus?;
    @jsondata:Name {value: "Contacts"}
    EmployeeDependentsBeneficiariesContactCollection contacts?;
    @jsondata:Name {value: "IsActiveBeneficiary"}
    boolean isActiveBeneficiary?;
    @jsondata:Name {value: "Relationship"}
    RelationshipType relationship?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "IsDependent"}
    boolean isDependent?;
    @jsondata:Name {value: "IsBeneficiary"}
    boolean isBeneficiary?;
    @jsondata:Name {value: "BirthDate"}
    string birthDate?;
};

public type LaborValidationFilters record {
    @jsondata:Name {value: "FilterXRefCodes"}
    LaborValidationMetricFilterXRefCodes[] filterXRefCodes?;
    @jsondata:Name {value: "LaborValidationPolicyXRefCode"}
    string laborValidationPolicyXRefCode?;
};

public type FinancialInstitution record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type TrainingProgram record {
    @jsondata:Name {value: "TrainingProgramCode"}
    string trainingProgramCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "TrainingProgramCourse"}
    TrainingProgramCourse[] trainingProgramCourse?;
};

public type EmployeePayrollTaxCollection record {
    @jsondata:Name {value: "Items"}
    EmployeePayrollTax[] items?;
};

public type EarningDefinition record {
    @jsondata:Name {value: "PRPensionPaymentType"}
    string pRPensionPaymentType?;
    @jsondata:Name {value: "AllowPayee"}
    boolean allowPayee?;
    @jsondata:Name {value: "Generated"}
    boolean generated?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "PayeeCategoryName"}
    string payeeCategoryName?;
    @jsondata:Name {value: "SeparateCheckXRefCode"}
    string separateCheckXRefCode?;
    @jsondata:Name {value: "Countries"}
    EarningCountry[] countries?;
    @jsondata:Name {value: "PayeeCategoryXRefCode"}
    string payeeCategoryXRefCode?;
    @jsondata:Name {value: "GrossedUp"}
    boolean grossedUp?;
    @jsondata:Name {value: "SeparateCheckName"}
    string separateCheckName?;
    @jsondata:Name {value: "PayEntryRates"}
    boolean payEntryRates?;
    @jsondata:Name {value: "SourceTypeName"}
    string sourceTypeName?;
    @jsondata:Name {value: "Name"}
    string name?;
    @jsondata:Name {value: "PREarningBenefitCategory"}
    string pREarningBenefitCategory?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "SourceTypeXRefCode"}
    string sourceTypeXRefCode?;
    @jsondata:Name {value: "EIRefund"}
    boolean eIRefund?;
    @jsondata:Name {value: "Payees"}
    EarningPayee[] payees?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
};

public type WorkLocationOverride record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "LocationAddress"}
    LocationAddress locationAddress?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "County"}
    string county?;
    @jsondata:Name {value: "LocationName"}
    string locationName?;
};

public type EmployeeUKNIDetailsCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUKNIDetails[] items?;
};

public type EmployeeDependentsBeneficiariesContact record {
    @jsondata:Name {value: "Extension"}
    string extension?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsUnlistedNumber"}
    boolean isUnlistedNumber?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ContactNumber"}
    string contactNumber?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ContactInformationType"}
    ContactInformationType contactInformationType?;
};

public type PayloadEmployeeVOE record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeVOE data?;
};

public type TFNExemptionReason record {
    @jsondata:Name {value: "PayrollShortName"}
    string payrollShortName?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadEmployeeVOI record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeVOI data?;
};

# Represents the Queries record for the operation: AnalyticsReports_GetDatasetAsync_By_datasetId_page_DatasetPageSize_clientNamespace
public type AnalyticsReportsGetDatasetAsyncByDatasetIdPageDatasetPageSizeClientNamespaceQueries record {
    @http:Query {name: "DatasetPageSize"}
    string datasetPageSize?;
    string page?;
};

public type EmployeeTrainingProgramCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeTrainingProgram[] items?;
};

public type EmployeeUKStudentLoan record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "StudentLoanPlanType"}
    int:Signed32 studentLoanPlanType?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeDocumentManagementSecurityGroup record {
    @jsondata:Name {value: "DocMgmtSecurityGroup"}
    DocMgmtSecurityGroup docMgmtSecurityGroup?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type OnboardingPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeAUSSuperannuationRules_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeAUSSuperannuationRulesGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PRGLSplitSetDetailCollection record {
    @jsondata:Name {value: "Items"}
    PRGLSplitSetDetail[] items?;
};

# Represents the Queries record for the operation: EmployeePropertyValue_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeePropertyValueGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PayloadIEnumerableEmployeeHealthWellness record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeHealthWellness[] data?;
};

# Represents the Queries record for the operation: EmployeeUKPostgraduateLoan_Post_By_employeeUKPostgraduateLoan_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKPostgraduateLoanPostByEmployeeUKPostgraduateLoanXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeIRLTaxPRSI record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntity"}
    LegalEntity legalEntity?;
    @jsondata:Name {value: "PRSIExemptReasonXrefCode"}
    string pRSIExemptReasonXrefCode?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "PrsiClass"}
    PRSIClass prsiClass?;
    @jsondata:Name {value: "CompanyDirector"}
    string companyDirector?;
    @jsondata:Name {value: "PrsiExemptReason"}
    PRSIExemptReason prsiExemptReason?;
    @jsondata:Name {value: "PRSIExempt"}
    boolean pRSIExempt?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PRSIClassXrefCode"}
    string pRSIClassXrefCode?;
    @jsondata:Name {value: "CommunityEmployment"}
    boolean communityEmployment?;
};

# Represents the Queries record for the operation: EmployeeEmploymentStatus_Replace_By_employmentStatus_xRefCode_replaceFrom_replaceTo_isValidateOnly_clientNamespace
public type EmployeeEmploymentStatusReplaceByEmploymentStatusXRefCodeReplaceFromReplaceToIsValidateOnlyClientNamespaceQueries record {
    # The date from which all EmploymentStatuses will be replaced
    string replaceFrom?;
    # When a TRUE value is used in this parameter, validate the request without applying updates to the database
    boolean isValidateOnly?;
    # The date up to which all EmploymentStatuses will be replaced
    string replaceTo?;
};

public type HighlyCompensatedEmployeeCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeHighlyCompensatedEmployeeIndicator[] items?;
};

# Represents the Queries record for the operation: EmployeeClockDeviceGroup_Patch_By_clockDeviceGroup_xRefCode_isValidateOnly_clientNamespace
public type EmployeeClockDeviceGroupPatchByClockDeviceGroupXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadPayGroupCalendar record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PayGroupCalendar data?;
};

public type PayloadIEnumerableEmployeeUKNIDetails record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUKNIDetails[] data?;
};

public type PayloadIEnumerableExtensibleProperty record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ExtensibleProperty[] data?;
};

public type PayPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeIRLTaxEWSSCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeIRLTaxEWSS[] items?;
};

public type PositionTerm record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: OrgUnits_Patch_By_orgUnit_xRefCode_isValidateOnly_replaceExisting_calibrateOrg_clientNamespace
public type OrgUnitsPatchByOrgUnitXRefCodeIsValidateOnlyReplaceExistingCalibrateOrgClientNamespaceQueries record {
    # This parameter accepts a comma-separated list of OrgUnit sub-entities where the respective data provided will replace all existing records. This currently applies to OrgUnitLocationTypes sub-entities, which are considered as a list and are not effective dated
    string replaceExisting?;
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
    # This parameter accepts TRUE or FALSE values to determine whether the Org Recalculation process is to be triggered. The default value is TRUE if parameter is not specified
    string calibrateOrg?;
};

public type HRIncidentBodyPart record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type MedicareLevyExemptionType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type AppUser record {
    @jsondata:Name {value: "Display24HourTime"}
    boolean display24HourTime?;
    @jsondata:Name {value: "AllowNativeAuthentication"}
    boolean allowNativeAuthentication?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "IsApproved"}
    boolean isApproved?;
};

# Represents the Queries record for the operation: PayrollElections_Post_By_payrollElections_isValidateOnly_AutoUpdateExisting_clientNamespace
public type PayrollElectionsPostByPayrollElectionsIsValidateOnlyAutoUpdateExistingClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
    # If TRUE, all other elections of the same employee will be end-dated. The default value is FALSE
    @http:Query {name: "AutoUpdateExisting"}
    boolean autoUpdateExisting?;
};

# Represents the Queries record for the operation: PayrollTaxData_Get_By_countryCodes_clientNamespace
public type PayrollTaxDataGetByCountryCodesClientNamespaceQueries record {
    # List of three letter country codes with comma separator to filter the result
    string countryCodes?;
};

# Represents the Queries record for the operation: ShiftBidding_Get_By_OrgUnitXRefCode_ScheduleStartDate_ScheduleEndDate_ActiveBids_clientNamespace
public type ShiftBiddingGetByOrgUnitXRefCodeScheduleStartDateScheduleEndDateActiveBidsClientNamespaceQueries record {
    # Specifies whether to return bids with or without active employee bid requests. When no value is supplied, all shift bids will be returned
    @http:Query {name: "ActiveBids"}
    boolean activeBids?;
    # Date to represent the start of the schedule period for which Shift Bids should be retrieved
    @http:Query {name: "ScheduleStartDate"}
    string scheduleStartDate;
    # Date to represent the end of the schedule period for which Shift Bids should be retrieved
    @http:Query {name: "ScheduleEndDate"}
    string scheduleEndDate;
};

public type DataEntry record {
    @jsondata:Name {value: "BusinessDate"}
    string businessDate?;
    @jsondata:Name {value: "DoNotDisburseToPayee"}
    boolean doNotDisburseToPayee?;
    @jsondata:Name {value: "PeriodStart"}
    string periodStart?;
    @jsondata:Name {value: "WorkLocation"}
    string workLocation?;
    @jsondata:Name {value: "TaxAuthorityInstance"}
    string taxAuthorityInstance?;
    @jsondata:Name {value: "PayOutAccurals"}
    boolean payOutAccurals?;
    @jsondata:Name {value: "PeriodEnd"}
    string periodEnd?;
    @jsondata:Name {value: "WorkersCompAccountName"}
    string workersCompAccountName?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "OrderedAmountTypeXRefCode"}
    string orderedAmountTypeXRefCode?;
    @jsondata:Name {value: "Currency"}
    string currency?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "LegalEntityName"}
    string legalEntityName?;
    @jsondata:Name {value: "PayGroupXRefCode"}
    string payGroupXRefCode?;
    @jsondata:Name {value: "DataEntryXRefCode"}
    int dataEntryXRefCode?;
    @jsondata:Name {value: "CheckTemplateXRefCode"}
    string checkTemplateXRefCode?;
    @jsondata:Name {value: "CodeXRefCode"}
    string codeXRefCode?;
    @jsondata:Name {value: "LaborPercent"}
    boolean laborPercent?;
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "SavedAt"}
    string savedAt?;
    @jsondata:Name {value: "Rate"}
    decimal rate?;
    @jsondata:Name {value: "LimitAmount"}
    decimal limitAmount?;
    @jsondata:Name {value: "TrailingTaxationPeriodStart"}
    string trailingTaxationPeriodStart?;
    @jsondata:Name {value: "FLSAAdjustEndDate"}
    string fLSAAdjustEndDate?;
    @jsondata:Name {value: "DisposableEarningAmount"}
    decimal disposableEarningAmount?;
    @jsondata:Name {value: "PayPeriodsForTax"}
    int:Signed32 payPeriodsForTax?;
    @jsondata:Name {value: "DocketName"}
    string docketName?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    EmployeeLaborMetrics[] laborMetrics?;
    @jsondata:Name {value: "WorkersCompAccountNumber"}
    string workersCompAccountNumber?;
    @jsondata:Name {value: "EmployeeName"}
    string employeeName?;
    @jsondata:Name {value: "ImportIdentifier"}
    string importIdentifier?;
    @jsondata:Name {value: "CheckTemplateName"}
    string checkTemplateName?;
    @jsondata:Name {value: "ApplyROEMapping"}
    boolean applyROEMapping?;
    @jsondata:Name {value: "Message"}
    string message?;
    @jsondata:Name {value: "Hours"}
    decimal hours?;
    @jsondata:Name {value: "ProjectName"}
    string projectName?;
    @jsondata:Name {value: "DebitArrears"}
    boolean debitArrears?;
    @jsondata:Name {value: "SavedBy"}
    string savedBy?;
    @jsondata:Name {value: "PayrollFrequencyType"}
    string payrollFrequencyType?;
    @jsondata:Name {value: "PayPeriodNumber"}
    string payPeriodNumber?;
    @jsondata:Name {value: "PPN"}
    string pPN?;
    @jsondata:Name {value: "WorkLocationXRefCode"}
    string workLocationXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "OrderPercent"}
    decimal orderPercent?;
    @jsondata:Name {value: "ImportSet"}
    string importSet?;
    @jsondata:Name {value: "JobAssignmentXRefCode"}
    string jobAssignmentXRefCode?;
    @jsondata:Name {value: "WorkersCompCode"}
    string workersCompCode?;
    @jsondata:Name {value: "OrderedAmountType"}
    string orderedAmountType?;
    @jsondata:Name {value: "Replace"}
    boolean replace?;
    @jsondata:Name {value: "TrailingTaxationPeriodEnd"}
    string trailingTaxationPeriodEnd?;
    @jsondata:Name {value: "Amount"}
    decimal amount?;
    @jsondata:Name {value: "EditSet"}
    string editSet?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "JobAssignmentName"}
    string jobAssignmentName?;
    @jsondata:Name {value: "OffCyclePayRunXrefCode"}
    string offCyclePayRunXrefCode?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "EntryType"}
    string entryType?;
    @jsondata:Name {value: "LegalEntityIdNumber"}
    string legalEntityIdNumber?;
    @jsondata:Name {value: "CodeType"}
    string codeType?;
    @jsondata:Name {value: "PayrollFrequencyName"}
    string payrollFrequencyName?;
    @jsondata:Name {value: "FLSAAdjustStartDate"}
    string fLSAAdjustStartDate?;
    @jsondata:Name {value: "SourceSystem"}
    string sourceSystem?;
};

public type PaginatedPayloadIEnumerablePolicyAssociation record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    PolicyAssociation[] data?;
};

public type PaginatedPayloadIEnumerableEmployeeScheduleExtended record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeeScheduleExtended[] data?;
};

public type EmployeeDisabilityCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDisability[] items?;
};

# Represents the Queries record for the operation: EmployeeOnboardingPolicies_Post_By_employeeOnboardingPolicy_xRefCode_isValidateOnly_clientNamespace
public type EmployeeOnboardingPoliciesPostByEmployeeOnboardingPolicyXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeEIRate_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeEIRateGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type LaborDemand record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "SchedulePeriodStart"}
    string schedulePeriodStart?;
    @jsondata:Name {value: "LaborDemands"}
    LaborDemandItem[] laborDemands?;
};

# Represents the Queries record for the operation: Reports_GetReportAsync_By_xRefCode_pageSize_clientNamespace
public type ReportsGetReportAsyncByXRefCodePageSizeClientNamespaceQueries record {
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # A list of key value pairs for those reports which take as input user supplied parameter values
    record {|string...;|} reportParameters?;
};

public type EmployeeDefaultLabor record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Project"}
    Project project?;
    @jsondata:Name {value: "PayAdjCode"}
    PayAdjCode payAdjCode?;
    @jsondata:Name {value: "Position"}
    Position position?;
    @jsondata:Name {value: "Docket"}
    Docket docket?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmployeeDefaultLaborMetricsCodes"}
    EmployeeDefaultLaborMetricsCodeCollection employeeDefaultLaborMetricsCodes?;
    @jsondata:Name {value: "Location"}
    Location location?;
};

public type EmployeeHRPolicy record {
    @jsondata:Name {value: "SignOff"}
    boolean signOff?;
    @jsondata:Name {value: "SignOffDate"}
    string signOffDate?;
    @jsondata:Name {value: "HRPolicy"}
    HRPolicy hRPolicy?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeRole record {
    @jsondata:Name {value: "IsDefault"}
    boolean isDefault?;
    @jsondata:Name {value: "Role"}
    Role role?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "IsPrestartRole"}
    boolean isPrestartRole?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: LaborMetricTypes_PostLaborMetricType_By_laborMetricTypeData_isValidateOnly_clientNamespace
public type LaborMetricTypesPostLaborMetricTypeByLaborMetricTypeDataIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeMUSTaxDetailsCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeMUSTaxDetails[] items?;
};

public type UploadedBy record {
    @jsondata:Name {value: "LoginId"}
    string loginId?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
};

# Represents the Queries record for the operation: Jobs_Post_By_job_isValidateOnly_clientNamespace
public type JobsPostByJobIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH (job update) operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadListPayee record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Payee[] data?;
};

public type ProjectsPostResponse record {
    @jsondata:Name {value: "ProjectsPostResponseXRefCode"}
    string projectsPostResponseXRefCode?;
};

public type NameAffix record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LaborMetricCodes record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "OrgXRefCodes"}
    string[] orgXRefCodes?;
    @jsondata:Name {value: "LaborMetricsTypeXRefCode"}
    string laborMetricsTypeXRefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "LaborMetricsCodeXRefCode"}
    string laborMetricsCodeXRefCode?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type LastNamePrefix record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: DataEntry_Get_By_payGroupXRefCode_entryType_periodStartDate_periodEndDate_payDate_ppn_orgUnitXRefCode_codeType_codeXRefCode_employeeXRefCode_projectXRefCodes_sinceLastModifiedTimestamp_source_pageSize_clientNamespace
public type DataEntryGetByPayGroupXRefCodeEntryTypePeriodStartDatePeriodEndDatePayDatePpnOrgUnitXRefCodeCodeTypeCodeXRefCodeEmployeeXRefCodeProjectXRefCodesSinceLastModifiedTimestampSourcePageSizeClientNamespaceQueries record {
    # The pay run period start date
    string periodStartDate?;
    # The type of the data entry codes
    string codeType?;
    # Number of records to be loaded
    int:Signed32 pageSize?;
    # Last modified timestamp to load entries since
    string sinceLastModifiedTimestamp?;
    # The employee reference code
    string employeeXRefCode?;
    string 'source?;
    # The data entry code reference code
    string codeXRefCode?;
    # The comma separated project reference codes
    string projectXRefCodes?;
    # The pay run period end date
    string periodEndDate?;
    # The user org unit reference code to load data entries from (in org unit hierarchy)
    string orgUnitXRefCode?;
    # The pay run pay date
    string payDate?;
    # The pay run's pay period number (format: ##-##)
    string ppn?;
};

public type PaginatedPayloadReport record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    Report data?;
};

# Represents the Queries record for the operation: EmployeeHRPolicy_Post_By_employeeHRPolicy_xRefCode_isValidateOnly_clientNamespace
public type EmployeeHRPolicyPostByEmployeeHRPolicyXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
};

public type ExtensibleProperty record {
    @jsondata:Name {value: "EntityType"}
    string entityType?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "SavedAt"}
    string savedAt?;
    @jsondata:Name {value: "PropertyValues"}
    PropertyValue[] propertyValues?;
    @jsondata:Name {value: "EntityName"}
    string entityName?;
    @jsondata:Name {value: "TypeCode"}
    string typeCode?;
    @jsondata:Name {value: "EntityXRefCode"}
    string entityXRefCode?;
    @jsondata:Name {value: "SavedBy"}
    int:Signed32 savedBy?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
};

# Represents the Queries record for the operation: EmployeePayrollTaxParameter_Get_By_xRefCode_contextDateRangeFrom_contextDateRangeTo_taxAuthorityInstance_legalEntityXRefCode_clientNamespace
public type EmployeePayrollTaxParameterGetByXRefCodeContextDateRangeFromContextDateRangeToTaxAuthorityInstanceLegalEntityXRefCodeClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates. The service defaults to the current day if the requester does not specify a value. Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Governmental Authority having jurisdiction over the assessment, determination, collection or imposition of any tax. The value provided must be an exact match to an authority assigned to the employee. Example: USA-00000000-001
    string taxAuthorityInstance?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates. The service defaults to null if the requester does not specify a value. Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
    # The unique reference code which identifies the organization that the federal tax authorities recognize. The value provided must be an exact match to the Legal Entity reference to which the employee is assigned
    string legalEntityXRefCode?;
};

# Represents the Queries record for the operation: ClientPayrollCountry_Get_By_countryCodes_hcmPayroll_connectedPay_payGroup_clientNamespace
public type ClientPayrollCountryGetByCountryCodesHcmPayrollConnectedPayPayGroupClientNamespaceQueries record {
    # Comma separated list of country codes to filter the results
    string countryCodes?;
    # Flag to filter countries for HCM Payroll
    boolean hcmPayroll?;
    # Flag to filter countries for Connected Pay
    boolean connectedPay?;
    # Flag to filter countries having pay group(s)
    boolean payGroup?;
};

public type BenefitsDFLinkExportEarningGroupingCustomPeriodResults record {
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "CustomPeriodXrefCode"}
    string customPeriodXrefCode?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "Hours"}
    decimal hours?;
    @jsondata:Name {value: "EarningGroupingXrefCode"}
    string earningGroupingXrefCode?;
};

public type OperatingHours record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "OperatingHours"}
    OperatingHoursItem[] operatingHours?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
};

# Represents the Queries record for the operation: EmployeeHealthWellness_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeHealthWellnessGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeOrgUnitInfoCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeOrgUnitInformation[] items?;
};

public type EmployeeSchedulePayCalendar record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "CalendarStart"}
    string calendarStart?;
    @jsondata:Name {value: "CalendarEnd"}
    string calendarEnd?;
};

public type EmployeeClockDeviceGroupCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeClockDeviceGroup[] items?;
};

# Represents the Queries record for the operation: EmployeeHCE_Patch_By_highlyCompensatedEmpoyee_xRefCode_isValidateOnly_clientNamespace
public type EmployeeHCEPatchByHighlyCompensatedEmpoyeeXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeScheduleExtended record {
    @jsondata:Name {value: "EmployeeScheduleXRefCode"}
    string employeeScheduleXRefCode?;
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "OrgUnitCode"}
    string orgUnitCode?;
    @jsondata:Name {value: "OrgUnitLedgerCode"}
    string orgUnitLedgerCode?;
    @jsondata:Name {value: "ProjectName"}
    string projectName?;
    @jsondata:Name {value: "JobName"}
    string jobName?;
    @jsondata:Name {value: "OrgUnitIsStore"}
    boolean orgUnitIsStore?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "Segments"}
    Segment[] segments?;
    @jsondata:Name {value: "OrgLocationTypeName"}
    string orgLocationTypeName?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "Skills"}
    Skills[] skills?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "OrgUnitClockCode"}
    string orgUnitClockCode?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "EmployeePropertyValues"}
    record {|string...;|} employeePropertyValues?;
    @jsondata:Name {value: "PayAdjCodeXRefCode"}
    string payAdjCodeXRefCode?;
    @jsondata:Name {value: "Activities"}
    ScheduleActivityExtended[] activities?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "Breaks"}
    Breaks[] breaks?;
    @jsondata:Name {value: "Position"}
    EmployeeSchedulePosition position?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "OrgUnitName"}
    string orgUnitName?;
    @jsondata:Name {value: "PayAdjCodeName"}
    string payAdjCodeName?;
    @jsondata:Name {value: "OrgLocationTypeXRefCode"}
    string orgLocationTypeXRefCode?;
    @jsondata:Name {value: "Employee"}
    ScheduleEmployee employee?;
    @jsondata:Name {value: "DocketName"}
    string docketName?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    ScheduleLaborMetricExtended[] laborMetrics?;
    @jsondata:Name {value: "DepartmentName"}
    string departmentName?;
    @jsondata:Name {value: "Published"}
    boolean published?;
    @jsondata:Name {value: "PayCalendar"}
    EmployeeSchedulePayCalendar payCalendar?;
};

public type EmployeeBalanceTransactionForSubmit record {
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "Value"}
    decimal value?;
    @jsondata:Name {value: "BalanceXRefCode"}
    string balanceXRefCode?;
    @jsondata:Name {value: "TransactionDate"}
    string transactionDate?;
};

public type PRPayeeDeduction record {
    @jsondata:Name {value: "PayeeXRefCode"}
    string payeeXRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "PaymentMethodCode"}
    string paymentMethodCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PaginatedPayloadIEnumerableEmployeePayrollElection record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeePayrollElection[] data?;
};

public type EmployeeAvailability record {
    @jsondata:Name {value: "IsDefault"}
    boolean isDefault?;
    @jsondata:Name {value: "UnAvailable"}
    boolean unAvailable?;
    @jsondata:Name {value: "EndTime1"}
    string endTime1?;
    @jsondata:Name {value: "StartTime2"}
    string startTime2?;
    @jsondata:Name {value: "EndTime2"}
    string endTime2?;
    @jsondata:Name {value: "DateOfRequest"}
    string dateOfRequest?;
    @jsondata:Name {value: "StartTime1"}
    string startTime1?;
};

public type GLSplitSetUpsert record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "GLSplitSetDetails"}
    EmployeeGLSplitSetDetailUpsert[] gLSplitSetDetails?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "DeptJobXRefCode"}
    string deptJobXRefCode?;
};

public type Earning record {
    @jsondata:Name {value: "CreditJournalNumber"}
    string creditJournalNumber?;
    @jsondata:Name {value: "IsGenerated"}
    boolean isGenerated?;
    @jsondata:Name {value: "CalculationType"}
    CalculationType calculationType?;
    @jsondata:Name {value: "IsDecliningBalance"}
    boolean isDecliningBalance?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "DebitJournalNumber"}
    string debitJournalNumber?;
    @jsondata:Name {value: "EarningCode"}
    EarningCode earningCode?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: DocMgmtSecurityGroup_Post_By_docMgmtSecurityGroupUserMap_xRefCode_isValidateOnly_clientNamespace
public type DocMgmtSecurityGroupPostByDocMgmtSecurityGroupUserMapXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeePunch record {
    @jsondata:Name {value: "TimeStartRaw"}
    string timeStartRaw?;
    @jsondata:Name {value: "TimeEndRaw"}
    string timeEndRaw?;
    @jsondata:Name {value: "BusinessDate"}
    string businessDate?;
    @jsondata:Name {value: "StartExceptionCode"}
    string startExceptionCode?;
    @jsondata:Name {value: "FuturePunch"}
    boolean futurePunch?;
    @jsondata:Name {value: "MealBreaks"}
    MealBreaks[] mealBreaks?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "IsOnCall"}
    boolean isOnCall?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
    @jsondata:Name {value: "EndExceptionCode"}
    string endExceptionCode?;
    @jsondata:Name {value: "ManagerComment"}
    string managerComment?;
    @jsondata:Name {value: "PayAdjustmentXRefCode"}
    string payAdjustmentXRefCode?;
    @jsondata:Name {value: "LastModifiedTimestampUtc"}
    string lastModifiedTimestampUtc?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "EmployeeComment"}
    string employeeComment?;
    @jsondata:Name {value: "PunchStatus"}
    string punchStatus?;
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "DocketQuantity"}
    decimal docketQuantity?;
    @jsondata:Name {value: "PunchXRefCode"}
    string punchXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "AssumedTimeEnd"}
    string assumedTimeEnd?;
    @jsondata:Name {value: "LaborMetrics"}
    LaborMetrics[] laborMetrics?;
    @jsondata:Name {value: "Transfers"}
    Transfers[] transfers?;
    @jsondata:Name {value: "AssumedTimeStart"}
    string assumedTimeStart?;
};

# Represents the Queries record for the operation: LocationAddresses_Post_By_payrollLocationAddresses_isValidateOnly_clientNamespace
public type LocationAddressesPostByPayrollLocationAddressesIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type EarningPayeeEarningParameter record {
    @jsondata:Name {value: "ElementParamName"}
    string elementParamName?;
    @jsondata:Name {value: "Value"}
    decimal value?;
    @jsondata:Name {value: "ElementParamCodeName"}
    string elementParamCodeName?;
};

public type DocumentType record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
};

public type JobFamily record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type ProjectForSubmit record {
    @jsondata:Name {value: "ProjectTypeXRefCode"}
    string projectTypeXRefCode?;
    @jsondata:Name {value: "ProjectPriority"}
    int:Signed32 projectPriority?;
    @jsondata:Name {value: "ProjectPhaseXRefCode"}
    string projectPhaseXRefCode?;
    @jsondata:Name {value: "DepartmentAssignment"}
    ProjectAssignmentType departmentAssignment?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "BudgetAmount"}
    decimal budgetAmount?;
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "EmployeeAssignment"}
    ProjectAssignmentType employeeAssignment?;
    @jsondata:Name {value: "AccountNum"}
    string accountNum?;
    @jsondata:Name {value: "CertifiedPayrollProjectNumber"}
    string certifiedPayrollProjectNumber?;
    @jsondata:Name {value: "ProductModuleXRefCode"}
    string productModuleXRefCode?;
    @jsondata:Name {value: "PctComplete"}
    decimal pctComplete?;
    @jsondata:Name {value: "CreationOrgUnitXRefCodes"}
    string[] creationOrgUnitXRefCodes?;
    @jsondata:Name {value: "DueDate"}
    string dueDate?;
    @jsondata:Name {value: "DeptJobAssignment"}
    ProjectAssignmentType deptJobAssignment?;
    @jsondata:Name {value: "IFRSClassification"}
    boolean iFRSClassification?;
    @jsondata:Name {value: "ParentProjectXRefCode"}
    string parentProjectXRefCode?;
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "BudgetHours"}
    decimal budgetHours?;
    @jsondata:Name {value: "TaxLocationAddressXRefCode"}
    string taxLocationAddressXRefCode?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "CompletedDate"}
    string completedDate?;
    @jsondata:Name {value: "IsResidentAddressUsedForTaxation"}
    boolean isResidentAddressUsedForTaxation?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "ProductGroupXRefCode"}
    string productGroupXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "PayCodeXRefCodeChargeToHours"}
    ProjectAssignmentType payCodeXRefCodeChargeToHours?;
    @jsondata:Name {value: "ProjectClientXRefCode"}
    string projectClientXRefCode?;
    @jsondata:Name {value: "PayCodeXRefCodeChargeToAmount"}
    ProjectAssignmentType payCodeXRefCodeChargeToAmount?;
    @jsondata:Name {value: "IsCOEProject"}
    boolean isCOEProject?;
};

public type EmployeeLocation record {
    @jsondata:Name {value: "IsDefault"}
    boolean isDefault?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "EmployeeLocationAuthorities"}
    EmployeeLocationAuthorityCollection employeeLocationAuthorities?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Location"}
    Location location?;
};

public type PaginatedPayloadEarningStatementHeader record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EarningStatementHeader data?;
};

# Represents the Queries record for the operation: LaborDemands_Get_By_orgUnitXRefCode_schedulePeriodStart_filterFrom_filterTo_zoneXRefCode_activityXRefCode_laborMeasureXRefCode_axisXRefCode_clientNamespace
public type LaborDemandsGetByOrgUnitXRefCodeSchedulePeriodStartFilterFromFilterToZoneXRefCodeActivityXRefCodeLaborMeasureXRefCodeAxisXRefCodeClientNamespaceQueries record {
    # End of range (optional) - defaults to a week from schedulePeriodStart if not supplied. Format yyyy-mm-dd
    string filterTo?;
    # Start of schedule period of the labor demand. Format yyyy-mm-dd
    string schedulePeriodStart;
    # Start of range (optional) - defaults to schedulePeriodStart if not supplied. Format yyyy-mm-dd
    string filterFrom?;
    # The unique identifier of the labor measure
    string laborMeasureXRefCode?;
    # The unique identifier of the axis
    string axisXRefCode?;
    # The unique identifier of the zone
    string zoneXRefCode?;
    # Unique identifier of the Org
    string orgUnitXRefCode;
    # The unique identifier of the activity
    string activityXRefCode?;
};

public type CitizenshipType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BenefitsDFLinkExportOrgUnit record {
    @jsondata:Name {value: "LegalEntity"}
    string legalEntity?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "OrgUnitCode"}
    string orgUnitCode?;
    @jsondata:Name {value: "OrgLevelCode"}
    string orgLevelCode?;
    @jsondata:Name {value: "OrgUnitLedgerCode"}
    string orgUnitLedgerCode?;
    @jsondata:Name {value: "OrgUnitName"}
    string orgUnitName?;
    @jsondata:Name {value: "OrgUnitWorkSiteZipCode"}
    string orgUnitWorkSiteZipCode?;
};

public type EmployeeLocationAuthorityCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeLocationAuthority[] items?;
};

# Represents the Queries record for the operation: LaborValidationPolicy_SearchLaborValidationPolicy_By_laborValidationFilterParams_pageSize_clientNamespace
public type LaborValidationPolicySearchLaborValidationPolicyByLaborValidationFilterParamsPageSizeClientNamespaceQueries record {
    int:Signed32 pageSize?;
};

public type EmployeePropertyValueCollection record {
    @jsondata:Name {value: "Items"}
    EmployeePropertyValue[] items?;
};

public type EmployeeSchedulePolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeProperty record {
    @jsondata:Name {value: "IsEditable"}
    boolean isEditable?;
    @jsondata:Name {value: "DataTypeParam"}
    string dataTypeParam?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "DataType"}
    int:Signed32 dataType?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "Sequence"}
    int:Signed32 sequence?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmployeeCardinality"}
    int:Signed32 employeeCardinality?;
    @jsondata:Name {value: "GenerateHREvent"}
    boolean generateHREvent?;
};

public type PayloadPayClass record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PayClass data?;
};

public type JobSet record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "Grade"}
    int:Signed32 grade?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadAnalyticsReportMetadata record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    AnalyticsReportMetadata data?;
};

public type ImportSetModel record {
    @jsondata:Name {value: "DataEntries"}
    DataEntryDeleteModel[] dataEntries?;
    @jsondata:Name {value: "ImportSetName"}
    string importSetName?;
};

public type BackgroundScreeningReport record {
    @jsondata:Name {value: "ScreeningRequestId"}
    string screeningRequestId?;
    @jsondata:Name {value: "CandidatePII"}
    CandidatePersonalIdentifiableInformation candidatePII?;
};

# Represents the Queries record for the operation: EmployeeUSFederalTax_Patch_By_employeeUSFederalTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUSFederalTaxPatchByEmployeeUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeDeductionLimitCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDeductionLimit[] items?;
};

public type PayloadIEnumerableLocationAddresses record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LocationAddresses[] data?;
};

# Represents the Queries record for the operation: EmployeePayAdjustments_Patch_By_payAdjustment_xRefCode_isValidateOnly_isValidateLabor_clientNamespace
public type EmployeePayAdjustmentsPatchByPayAdjustmentXRefCodeIsValidateOnlyIsValidateLaborClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
    # When a TRUE value is used in this parameter, PATCH operations validate against Labor Validation Engine to verify pay adjustment follows rules/qualifiers created
    boolean isValidateLabor?;
};

public type EmployeeEmploymentAgreement record {
    @jsondata:Name {value: "EmploymentAgreementDuration"}
    EmploymentAgreementDuration employmentAgreementDuration?;
    @jsondata:Name {value: "EmploymentAgreementDetails"}
    EmploymentAgreementDetails employmentAgreementDetails?;
    @jsondata:Name {value: "EmploymentAgreementPopulation"}
    EmploymentAgreementPopulation employmentAgreementPopulation?;
    @jsondata:Name {value: "GovernmentIdentifier"}
    string governmentIdentifier?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmploymentAgreementTaxRegime"}
    EmploymentAgreementTaxRegime employmentAgreementTaxRegime?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AgreementReason"}
    EmploymentStatusReason agreementReason?;
    @jsondata:Name {value: "AgreementEndReason"}
    EmploymentStatusReason agreementEndReason?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "EmploymentAgreementSettlement"}
    EmploymentAgreementSettlement employmentAgreementSettlement?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "EmploymentAgreementType"}
    EmploymentAgreementType employmentAgreementType?;
    @jsondata:Name {value: "Country"}
    Country country?;
};

# Represents the Queries record for the operation: EmployeeEmploymentStatus_Post_By_employmentStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEmploymentStatusPostByEmploymentStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type SkillType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "IsWFM"}
    boolean isWFM?;
};

# Represents the Queries record for the operation: MaritalStatus_Patch_By_maritalStatus_xRefCode_isValidateOnly_clientNamespace
public type MaritalStatusPatchByMaritalStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeManager record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeManager[] data?;
};

public type EmployeeRawPunchForSubmit record {
    @jsondata:Name {value: "MealWaiver"}
    string mealWaiver?;
    @jsondata:Name {value: "PunchType"}
    string punchType?;
    @jsondata:Name {value: "EmployeeBadge"}
    string employeeBadge?;
    @jsondata:Name {value: "SupervisorBadge"}
    string supervisorBadge?;
    @jsondata:Name {value: "BreakAttestation"}
    boolean breakAttestation?;
    @jsondata:Name {value: "Quantity"}
    decimal quantity?;
    @jsondata:Name {value: "ProjectClockTransferCode"}
    string projectClockTransferCode?;
    @jsondata:Name {value: "PositionClockTransferCode"}
    string positionClockTransferCode?;
    @jsondata:Name {value: "RawPunchTime"}
    string rawPunchTime?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "DocketClockTransferCode"}
    string docketClockTransferCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    PunchLaborMetric[] laborMetrics?;
    @jsondata:Name {value: "PunchDevice"}
    string punchDevice?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
    @jsondata:Name {value: "LocationClockTransferCode"}
    string locationClockTransferCode?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxRPN_Post_By_employeeIRLTaxRPN_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxRPNPostByEmployeeIRLTaxRPNXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type Country record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: ClientPayrollCountry_Patch_By_clientPayrollCountryUpdate_isValidateOnly_clientNamespace
public type ClientPayrollCountryPatchByClientPayrollCountryUpdateIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type OrgUnitDetailConfiguration record {
    @jsondata:Name {value: "Timezone"}
    TimeZone timezone?;
    @jsondata:Name {value: "Address"}
    Address address?;
    @jsondata:Name {value: "OrgLevel"}
    OrgLevel orgLevel?;
    @jsondata:Name {value: "OrgUnitParent"}
    OrgUnitParent orgUnitParent?;
    @jsondata:Name {value: "ParentSortOrder"}
    int:Signed32 parentSortOrder?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "IsPhysicalLocation"}
    boolean isPhysicalLocation?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "TaxLocationAddress"}
    LocationAddress taxLocationAddress?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "ChildSortOrder"}
    int:Signed32 childSortOrder?;
};

public type AdditionalTaxType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeAUSSuperannuation record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeAUSSuperannuation[] data?;
};

public type DisabilityEvidenceIssuingAgency record {
    @jsondata:Name {value: "DisabilityEvidenceIssuingAgencyId"}
    int:Signed32 disabilityEvidenceIssuingAgencyId?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: Documents_Upload_By_isValidateOnly_clientNamespace
public type DocumentsUploadByIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeHRIncident record {
    @jsondata:Name {value: "OrgUnit"}
    OrgUnitDetailConfiguration orgUnit?;
    @jsondata:Name {value: "DoctorName"}
    string doctorName?;
    @jsondata:Name {value: "EmergencyRoom"}
    boolean emergencyRoom?;
    @jsondata:Name {value: "DaysLost"}
    decimal daysLost?;
    @jsondata:Name {value: "CausedObject"}
    string causedObject?;
    @jsondata:Name {value: "PrivacyCase"}
    boolean privacyCase?;
    @jsondata:Name {value: "OpenDate"}
    string openDate?;
    @jsondata:Name {value: "HRIncidentBeganWork"}
    string hRIncidentBeganWork?;
    @jsondata:Name {value: "HRIncidentState"}
    string hRIncidentState?;
    @jsondata:Name {value: "HRIncidentBodyPart"}
    HRIncidentBodyPart hRIncidentBodyPart?;
    @jsondata:Name {value: "HRIncidentDate"}
    string hRIncidentDate?;
    @jsondata:Name {value: "SafetyHealthType"}
    SafetyHealthType safetyHealthType?;
    @jsondata:Name {value: "HospitalOvernight"}
    boolean hospitalOvernight?;
    @jsondata:Name {value: "HRIncidentNotes"}
    EmployeeHRIncidentNoteCollection hRIncidentNotes?;
    @jsondata:Name {value: "HRIncidentArea"}
    string hRIncidentArea?;
    @jsondata:Name {value: "Hospital"}
    string hospital?;
    @jsondata:Name {value: "HRIncidentEventTime"}
    string hRIncidentEventTime?;
    @jsondata:Name {value: "HRIncidentType"}
    HRIncidentType hRIncidentType?;
    @jsondata:Name {value: "CausedAction"}
    string causedAction?;
    @jsondata:Name {value: "HRIncidentAction"}
    HRIncidentAction hRIncidentAction?;
    @jsondata:Name {value: "TaskBeingPerformed"}
    string taskBeingPerformed?;
    @jsondata:Name {value: "Died"}
    boolean died?;
    @jsondata:Name {value: "HospitalStreet"}
    string hospitalStreet?;
    @jsondata:Name {value: "IsDaysLost"}
    boolean isDaysLost?;
    @jsondata:Name {value: "AssignedToUserXRefCode"}
    string assignedToUserXRefCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmployeeComplainantXRefCode"}
    string employeeComplainantXRefCode?;
    @jsondata:Name {value: "HospitalStateCode"}
    string hospitalStateCode?;
    @jsondata:Name {value: "HospitalCity"}
    string hospitalCity?;
    @jsondata:Name {value: "HospitalZip"}
    string hospitalZip?;
    @jsondata:Name {value: "QuestionableClaim"}
    boolean questionableClaim?;
    @jsondata:Name {value: "DaysRestricted"}
    decimal daysRestricted?;
    @jsondata:Name {value: "WCBCaseNumber"}
    string wCBCaseNumber?;
    @jsondata:Name {value: "DateReturnToWork"}
    string dateReturnToWork?;
    @jsondata:Name {value: "ClosedDate"}
    string closedDate?;
    @jsondata:Name {value: "HRIncidentInjury"}
    HRIncidentInjury hRIncidentInjury?;
    @jsondata:Name {value: "DateDied"}
    string dateDied?;
};

public type PayloadIEnumerableLocation record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Location[] data?;
};

public type PayloadIEnumerablePersonContact record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PersonContact[] data?;
};

public type PayloadArchiveDocument record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ArchiveDocument data?;
};

# Represents the Queries record for the operation: EmployeeUSTaxStatus_Patch_By_employeeUSTaxStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUSTaxStatusPatchByEmployeeUSTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeConfidentialIdentification_Post_By_employeeConfidentialIdentification_xRefCode_isValidateOnly_clientNamespace
public type EmployeeConfidentialIdentificationPostByEmployeeConfidentialIdentificationXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeePayrollTaxParameter_Patch_By_employeePayrollTaxParameter_xRefCode_isValidateOnly_clientNamespace
public type EmployeePayrollTaxParameterPatchByEmployeePayrollTaxParameterXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeDefaultLabor_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeDefaultLaborGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeAUSSuperannuation record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "SuperannuationContributionCalcValue"}
    decimal superannuationContributionCalcValue?;
    @jsondata:Name {value: "SuperannuationContributionCalculationType"}
    SuperannuationContributionCalculationType superannuationContributionCalculationType?;
    @jsondata:Name {value: "SuperannuationContributionType"}
    SuperannuationContributionType superannuationContributionType?;
    @jsondata:Name {value: "PayrollDeduction"}
    PayrollDeduction payrollDeduction?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "SuperannuationType"}
    SuperannuationType superannuationType?;
    @jsondata:Name {value: "MembershipNumber"}
    string membershipNumber?;
    @jsondata:Name {value: "PayrollPayee"}
    PayrollPayeeInfo payrollPayee?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeWorkLocationOverride record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeWorkLocationOverride[] data?;
};

public type BenefitsDFLinkExportRecord record {
    @jsondata:Name {value: "PropertyDetails"}
    BenefitsDFLinkExportProperty[] propertyDetails?;
    @jsondata:Name {value: "UnionMembershipDetails"}
    BenefitsDFLinkExportUnionMembership[] unionMembershipDetails?;
    @jsondata:Name {value: "ContactDetails"}
    BenefitsDFLinkExportContact[] contactDetails?;
    @jsondata:Name {value: "AddressDetails"}
    BenefitsDFLinkExportAddress[] addressDetails?;
    @jsondata:Name {value: "EmployeeElectionDetails"}
    BenefitsDFLinkExportEmployeeElectionDetail[] employeeElectionDetails?;
    @jsondata:Name {value: "BeneficiaryDetails"}
    BenefitsDFLinkExportBeneficiaryRecord[] beneficiaryDetails?;
    @jsondata:Name {value: "EarningGroupingResults"}
    BenefitsDFLinkExportEarningGroupingResults[] earningGroupingResults?;
    @jsondata:Name {value: "OrgUnitDetails"}
    BenefitsDFLinkExportOrgUnit[] orgUnitDetails?;
    @jsondata:Name {value: "EarningGroupingCustomPeriodResults"}
    BenefitsDFLinkExportEarningGroupingCustomPeriodResults[] earningGroupingCustomPeriodResults?;
    @jsondata:Name {value: "EmployeeDetails"}
    BenefitsDFLinkExportEmployeeRecord employeeDetails?;
    @jsondata:Name {value: "DependentDetails"}
    BenefitsDFLinkExportDependentRecord[] dependentDetails?;
};

# Represents the Queries record for the operation: EmployeeAUSFederalTax_Patch_By_employeeAUSFederalTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAUSFederalTaxPatchByEmployeeAUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type BenefitsDFLinkExportEmployeeRecord record {
    @jsondata:Name {value: "NormalSemiMonthlyHoursBottom"}
    decimal normalSemiMonthlyHoursBottom?;
    @jsondata:Name {value: "PayGroupCode"}
    string payGroupCode?;
    @jsondata:Name {value: "PayRunCheckDate"}
    string payRunCheckDate?;
    @jsondata:Name {value: "ManagerEmail"}
    string managerEmail?;
    @jsondata:Name {value: "NormalSemiMonthlyHoursTop"}
    decimal normalSemiMonthlyHoursTop?;
    @jsondata:Name {value: "WorkedInState"}
    string workedInState?;
    @jsondata:Name {value: "DisabilityEndDate"}
    string disabilityEndDate?;
    @jsondata:Name {value: "PayPeriodEndDate"}
    string payPeriodEndDate?;
    @jsondata:Name {value: "VirtualIndicator"}
    boolean virtualIndicator?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "ManagerLastName"}
    string managerLastName?;
    @jsondata:Name {value: "HireDate"}
    string hireDate?;
    @jsondata:Name {value: "NameSuffix"}
    string nameSuffix?;
    @jsondata:Name {value: "EmploymentStatusEndDate"}
    string employmentStatusEndDate?;
    @jsondata:Name {value: "BadgeNumber"}
    string badgeNumber?;
    @jsondata:Name {value: "BaseSalary"}
    decimal baseSalary?;
    @jsondata:Name {value: "DateOfBirth"}
    string dateOfBirth?;
    @jsondata:Name {value: "GenderCode"}
    int:Signed32 genderCode?;
    @jsondata:Name {value: "TobaccoUseEffectiveEnd"}
    string tobaccoUseEffectiveEnd?;
    @jsondata:Name {value: "PayFrequencyCode"}
    int:Signed32 payFrequencyCode?;
    @jsondata:Name {value: "EmploymentStatusStartDate"}
    string employmentStatusStartDate?;
    @jsondata:Name {value: "Citizenship"}
    string citizenship?;
    @jsondata:Name {value: "EmploymentStatus"}
    string employmentStatus?;
    @jsondata:Name {value: "EmployeeGroupCode"}
    string employeeGroupCode?;
    @jsondata:Name {value: "GenderIdentity"}
    string genderIdentity?;
    @jsondata:Name {value: "DateLastSmoked"}
    string dateLastSmoked?;
    @jsondata:Name {value: "Weight"}
    int:Signed32 weight?;
    @jsondata:Name {value: "IsAboriginal"}
    boolean isAboriginal?;
    @jsondata:Name {value: "WorkAssignmentEffectiveEnd"}
    string workAssignmentEffectiveEnd?;
    @jsondata:Name {value: "MaritalStatusCode"}
    string maritalStatusCode?;
    @jsondata:Name {value: "TobaccoSubstanceUse"}
    boolean tobaccoSubstanceUse?;
    @jsondata:Name {value: "EmploymentStatusReasonCode"}
    string employmentStatusReasonCode?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "IncomeFrequency"}
    int:Signed32 incomeFrequency?;
    @jsondata:Name {value: "SeniorityDate"}
    string seniorityDate?;
    @jsondata:Name {value: "PayPeriodStartDate"}
    string payPeriodStartDate?;
    @jsondata:Name {value: "MedicareReasonCode"}
    int:Signed32 medicareReasonCode?;
    @jsondata:Name {value: "NationalIDExpiryDate"}
    string nationalIDExpiryDate?;
    @jsondata:Name {value: "PayTypeCode"}
    string payTypeCode?;
    @jsondata:Name {value: "TobaccoUseEffectiveStart"}
    string tobaccoUseEffectiveStart?;
    @jsondata:Name {value: "BaseRate"}
    decimal baseRate?;
    @jsondata:Name {value: "WorkAssignmentEffectiveStart"}
    string workAssignmentEffectiveStart?;
    @jsondata:Name {value: "AverageDailyHours"}
    decimal averageDailyHours?;
    @jsondata:Name {value: "DisabilityBeginDate"}
    string disabilityBeginDate?;
    @jsondata:Name {value: "DepartmentJobNameCode"}
    string departmentJobNameCode?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "IsVisibleMinority"}
    boolean isVisibleMinority?;
    @jsondata:Name {value: "NormalWeeklyHours"}
    decimal normalWeeklyHours?;
    @jsondata:Name {value: "CultureCode"}
    string cultureCode?;
    @jsondata:Name {value: "Height"}
    int:Signed32 height?;
    @jsondata:Name {value: "DateOfDeath"}
    string dateOfDeath?;
    @jsondata:Name {value: "MedicareStatus"}
    int:Signed32 medicareStatus?;
    @jsondata:Name {value: "Age"}
    int:Signed32 age?;
    @jsondata:Name {value: "InitialNoticeFlag"}
    boolean initialNoticeFlag?;
    @jsondata:Name {value: "OriginalHireDate"}
    string originalHireDate?;
    @jsondata:Name {value: "PayClassCode"}
    string payClassCode?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "TerminationDate"}
    string terminationDate?;
    @jsondata:Name {value: "NationalId"}
    string nationalId?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "ManagerPhoneNumber"}
    string managerPhoneNumber?;
    @jsondata:Name {value: "PositionLedgerCode"}
    string positionLedgerCode?;
    @jsondata:Name {value: "Ethnicity"}
    string ethnicity?;
    @jsondata:Name {value: "ManagerFirstName"}
    string managerFirstName?;
    @jsondata:Name {value: "DisabilityCode"}
    boolean disabilityCode?;
    @jsondata:Name {value: "EmploymentIndicatorCode"}
    string employmentIndicatorCode?;
};

public type EmployeeAssignedSexAndGenderIdentityCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeAssignedSexAndGenderIdentity[] items?;
};

# Represents the Queries record for the operation: EmployeePunches_DeleteEmployeePunch_By_employeePunchXRefCode_clientNamespace
public type EmployeePunchesDeleteEmployeePunchByEmployeePunchXRefCodeClientNamespaceQueries record {
    string employeePunchXRefCode;
};

public type EmployeePropertyValue record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "BitValue"}
    boolean bitValue?;
    @jsondata:Name {value: "DateTimeValue"}
    string dateTimeValue?;
    @jsondata:Name {value: "NumberValue"}
    decimal numberValue?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "OptionValue"}
    EmployeePropertyOption optionValue?;
    @jsondata:Name {value: "StringValue"}
    string stringValue?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmployeeProperty"}
    EmployeeProperty employeeProperty?;
};

# Represents the Queries record for the operation: Employees_Get_By_xRefCode_contextDate_expand_contextDateRangeFrom_contextDateRangeTo_amfEntity_amfLevel_amfLevelValue_clientNamespace
public type EmployeesGetByXRefCodeContextDateExpandContextDateRangeFromContextDateRangeToAmfEntityAmfLevelAmfLevelValueClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # This parameter is to identify the application object for Application Metadata Framework (AMF) request
    string amfEntity?;
    # This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the employee master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document
    string expand?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # This parameter is to identify the level for Application Metadata Framework (AMF) request
    string amfLevel?;
    # This parameter is to identify context specific to amfLevel for Application Metadata Framework (AMF) request
    string amfLevelValue?;
    # The Context Date Range To value is end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: PersonContact_Post_By_personContact_xRefCode_isValidateOnly_clientNamespace
public type PersonContactPostByPersonContactXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeOrgUnitInformation record {
    @jsondata:Name {value: "Department"}
    Department department?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "OrgUnitDetail"}
    OrgUnitDetailConfiguration orgUnitDetail?;
};

public type EmployeeDirectDepositCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDirectDeposit[] items?;
};

public type PayrollPayeeInfo record {
    @jsondata:Name {value: "BSBCode"}
    string bSBCode?;
    @jsondata:Name {value: "ShowEmployeeDetails"}
    boolean showEmployeeDetails?;
    @jsondata:Name {value: "Category"}
    PayrollPayeeCategory category?;
    @jsondata:Name {value: "CombineEarningsandDeductions"}
    boolean combineEarningsandDeductions?;
    @jsondata:Name {value: "IsActive"}
    boolean isActive?;
    @jsondata:Name {value: "CombineEmployees"}
    boolean combineEmployees?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "USI"}
    string uSI?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ABN"}
    string aBN?;
    @jsondata:Name {value: "AccountNumber"}
    string accountNumber?;
    @jsondata:Name {value: "AddressLine3"}
    string addressLine3?;
    @jsondata:Name {value: "AddressLine2"}
    string addressLine2?;
    @jsondata:Name {value: "ESA"}
    string eSA?;
    @jsondata:Name {value: "AddressLine1"}
    string addressLine1?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "State"}
    string state?;
    @jsondata:Name {value: "PaymentMethod"}
    PayrollPaymentMethod paymentMethod?;
    @jsondata:Name {value: "AllowNegativeAmounts"}
    boolean allowNegativeAmounts?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "IsDeductionPayee"}
    boolean isDeductionPayee?;
};

# Represents the Queries record for the operation: EmployeeCertification_Patch_By_employeeCertification_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCertificationPatchByEmployeeCertificationXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type I9Order record {
    @jsondata:Name {value: "OrderStatusXRefCode"}
    string orderStatusXRefCode?;
    @jsondata:Name {value: "I9OrderId"}
    string i9OrderId?;
    @jsondata:Name {value: "EVerify"}
    EVerify eVerify?;
};

public type OperatingHoursExceptionPOST record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "OpHrsPatternException"}
    int opHrsPatternException?;
    @jsondata:Name {value: "OperatingHoursDayPattern"}
    OperatingHoursDayPattern operatingHoursDayPattern?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "OpHrsPatternAssignment"}
    int opHrsPatternAssignment?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "OperatingHoursExceptionDay"}
    OperatingHoursExceptionDay[] operatingHoursExceptionDay?;
};

public type OperatingHoursItem record {
    @jsondata:Name {value: "OpenTime"}
    string openTime?;
    @jsondata:Name {value: "IsException"}
    int:Signed32 isException?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "CloseTime"}
    string closeTime?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "IsClosed"}
    int:Signed32 isClosed?;
    @jsondata:Name {value: "NoDayPattern"}
    int:Signed32 noDayPattern?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Client"}
    int:Signed32 client?;
    @jsondata:Name {value: "Day"}
    string day?;
};

public type PayloadListEarningStatementDocument record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EarningStatementDocument[] data?;
};

# Represents the Queries record for the operation: PayrollElections_GetEmployeeElections_By_source_codeType_electionStatus_payGroupXRefCode_employeeXRefCodes_employmentStatusXRefCode_pageSize_clientNamespace
public type PayrollElectionsGetEmployeeElectionsBySourceCodeTypeElectionStatusPayGroupXRefCodeEmployeeXRefCodesEmploymentStatusXRefCodePageSizeClientNamespaceQueries record {
    string electionStatus?;
    string codeType?;
    string employeeXRefCodes?;
    int:Signed32 pageSize?;
    string 'source?;
    string payGroupXRefCode?;
    string employmentStatusXRefCode?;
};

# Represents the Queries record for the operation: EmployeeRole_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeRoleGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeeEthnicity_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeEthnicityGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeCANFederalTax record {
    @jsondata:Name {value: "IncomeLessThanClaim"}
    boolean incomeLessThanClaim?;
    @jsondata:Name {value: "AdditionalAmount"}
    decimal additionalAmount?;
    @jsondata:Name {value: "TotalClaimAmount"}
    decimal totalClaimAmount?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EstimatedExpense"}
    decimal estimatedExpense?;
    @jsondata:Name {value: "MultipleEmployer"}
    boolean multipleEmployer?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsNonResident"}
    boolean isNonResident?;
    @jsondata:Name {value: "DistrictTaxDeduction"}
    decimal districtTaxDeduction?;
    @jsondata:Name {value: "AuthorizedTaxCredits"}
    decimal authorizedTaxCredits?;
    @jsondata:Name {value: "EstimatedRemuneration"}
    decimal estimatedRemuneration?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "PrescribedAreaDeduction"}
    decimal prescribedAreaDeduction?;
};

public type PayrollPaymentMethod record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeEmploymentStatus record {
    @jsondata:Name {value: "NormalSemiMonthlyHoursBottom"}
    decimal normalSemiMonthlyHoursBottom?;
    @jsondata:Name {value: "VacationRate"}
    decimal vacationRate?;
    @jsondata:Name {value: "EmploymentStatusGroup"}
    EmploymentStatusGroup employmentStatusGroup?;
    @jsondata:Name {value: "PayPolicy"}
    PayPolicy payPolicy?;
    @jsondata:Name {value: "PayTypeGroup"}
    PayTypeGroup payTypeGroup?;
    @jsondata:Name {value: "NormalSemiMonthlyHoursTop"}
    decimal normalSemiMonthlyHoursTop?;
    @jsondata:Name {value: "BaseRate"}
    decimal baseRate?;
    @jsondata:Name {value: "EmploymentStatusReason"}
    EmploymentStatusReason employmentStatusReason?;
    @jsondata:Name {value: "TimeOffPolicy"}
    TimeOffPolicy timeOffPolicy?;
    @jsondata:Name {value: "AverageDailyHours"}
    decimal averageDailyHours?;
    @jsondata:Name {value: "EntitlementPolicy"}
    EntitlementPolicy entitlementPolicy?;
    @jsondata:Name {value: "CreateShiftRotationShift"}
    boolean createShiftRotationShift?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AttendancePolicy"}
    AttendancePolicy attendancePolicy?;
    @jsondata:Name {value: "ScheduleChangePolicy"}
    ScheduleChangePolicy scheduleChangePolicy?;
    @jsondata:Name {value: "NormalWeeklyHours"}
    decimal normalWeeklyHours?;
    @jsondata:Name {value: "ShiftTradePolicy"}
    ShiftTradePolicy shiftTradePolicy?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "AverageOvertimeRate"}
    decimal averageOvertimeRate?;
    @jsondata:Name {value: "SchedulePolicy"}
    EmployeeSchedulePolicy schedulePolicy?;
    @jsondata:Name {value: "BaseSalary"}
    decimal baseSalary?;
    @jsondata:Name {value: "TargetBonus"}
    decimal targetBonus?;
    @jsondata:Name {value: "OvertimeGroup"}
    EmployeeOvertimeGroup overtimeGroup?;
    @jsondata:Name {value: "PayGroup"}
    PayGroup payGroup?;
    @jsondata:Name {value: "PayClass"}
    PayClass payClass?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "BaseRateManuallySet"}
    boolean baseRateManuallySet?;
    @jsondata:Name {value: "EmploymentStatus"}
    EmploymentStatus employmentStatus?;
    @jsondata:Name {value: "PeriodicSalary"}
    decimal periodicSalary?;
    @jsondata:Name {value: "AlternateRate"}
    decimal alternateRate?;
    @jsondata:Name {value: "PayType"}
    PayType payType?;
    @jsondata:Name {value: "ShiftRotation"}
    ShiftRotation shiftRotation?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "DEUHoursChangeReason"}
    DEUHoursChangeReason dEUHoursChangeReason?;
    @jsondata:Name {value: "PayHolidayGroup"}
    PayHolidayGroup payHolidayGroup?;
    @jsondata:Name {value: "DailyRate"}
    decimal dailyRate?;
    @jsondata:Name {value: "OriginalEffectiveStart"}
    string originalEffectiveStart?;
    @jsondata:Name {value: "AuthorizationPolicy"}
    AuthorizationPolicy authorizationPolicy?;
    @jsondata:Name {value: "ShiftRotationDayOffset"}
    int shiftRotationDayOffset?;
    @jsondata:Name {value: "JobStepPolicy"}
    JobStepPolicy jobStepPolicy?;
    @jsondata:Name {value: "EmployeeGroup"}
    EmployeeGroup employeeGroup?;
    @jsondata:Name {value: "OriginalEffectiveEnd"}
    string originalEffectiveEnd?;
    @jsondata:Name {value: "LastPayEditDate"}
    string lastPayEditDate?;
    @jsondata:Name {value: "PayrollPolicy"}
    PayrollPolicy payrollPolicy?;
    @jsondata:Name {value: "WorkContractPremiumPolicy"}
    WorkContractPremiumPolicy workContractPremiumPolicy?;
    @jsondata:Name {value: "OriginalEmploymentStatus"}
    EmploymentStatus originalEmploymentStatus?;
    @jsondata:Name {value: "PunchPolicy"}
    PunchPolicy punchPolicy?;
    @jsondata:Name {value: "ShiftRotationStartDate"}
    string shiftRotationStartDate?;
};

public type PayloadIEnumerableEmployeeDependentBeneficiary record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeDependentBeneficiary[] data?;
};

public type AnalyticsDatasetMetadataResponse record {
    @jsondata:Name {value: "Status"}
    string status?;
    # Difference between report row counts
    @jsondata:Name {value: "DifferenceCount"}
    int:Signed32 differenceCount?;
    # Ended refresh Timestamp
    @jsondata:Name {value: "EndedTimestamp"}
    string endedTimestamp?;
    # Report Parameters
    @jsondata:Name {value: "Parameters"}
    string parameters?;
    # Message returned to user
    @jsondata:Name {value: "Message"}
    string message?;
    # Report Id
    @jsondata:Name {value: "ReportId"}
    int:Signed32 reportId?;
    # Total number of pages for given dataset
    @jsondata:Name {value: "TotalPages"}
    int:Signed32 totalPages?;
    # Started refresh Timestamp
    @jsondata:Name {value: "StartedTimestamp"}
    string startedTimestamp?;
    # Last modified timestamp of report
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    # RefreshStatus
    @jsondata:Name {value: "RefreshStatus"}
    string refreshStatus?;
    # Dataset Id
    @jsondata:Name {value: "DatasetId"}
    string datasetId?;
    # Report Filters
    @jsondata:Name {value: "Filters"}
    string filters?;
    # Created Date of report
    @jsondata:Name {value: "CreatedDate"}
    string createdDate?;
    # Row count in the dataset
    @jsondata:Name {value: "RowCount"}
    string rowCount?;
};

public type PayrollEmployeeEarningParameter record {
    @jsondata:Name {value: "EmployeeElectedValue"}
    decimal employeeElectedValue?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "PayGroupDefaultValue"}
    decimal payGroupDefaultValue?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ParamCodeName"}
    string paramCodeName?;
};

public type EmployeeHRPolicyCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeHRPolicy[] items?;
};

public type TimeOffPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BenefitsDFLinkExportBeneficiaryRecord record {
    @jsondata:Name {value: "EmployeeNationalId"}
    string employeeNationalId?;
    @jsondata:Name {value: "DateOfBirth"}
    string dateOfBirth?;
    @jsondata:Name {value: "GenderCode"}
    int:Signed32 genderCode?;
    @jsondata:Name {value: "BeneficiaryElectionDetails"}
    BenefitsDFLinkExportBeneficiaryElectionDetail[] beneficiaryElectionDetails?;
    @jsondata:Name {value: "AddressDetails"}
    BenefitsDFLinkExportAddress[] addressDetails?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "NationalId"}
    string nationalId?;
    @jsondata:Name {value: "NationalIDExpiryDate"}
    string nationalIDExpiryDate?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "ContactDetails"}
    BenefitsDFLinkExportContact[] contactDetails?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "RelationshipCode"}
    string relationshipCode?;
    @jsondata:Name {value: "HomePhoneNumber"}
    string homePhoneNumber?;
    @jsondata:Name {value: "UniqueBeneficiaryId"}
    int:Signed32 uniqueBeneficiaryId?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
};

# Represents the Queries record for the operation: EmployeeUSFederalTax_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeUSFederalTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: LegacyLaborMetric_GetLegacyLaborMetric_By_legacyLaborMetricType_legacyLaborMetricXRefCode_clientNamespace
public type LegacyLaborMetricGetLegacyLaborMetricByLegacyLaborMetricTypeLegacyLaborMetricXRefCodeClientNamespaceQueries record {
    string legacyLaborMetricXRefCode;
    string legacyLaborMetricType;
};

public type EmployeeUKNIDetails record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "Annual"}
    boolean annual?;
    @jsondata:Name {value: "DirectorStartDate"}
    string directorStartDate?;
    @jsondata:Name {value: "IsDirector"}
    boolean isDirector?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ChangeReasonXrefCode"}
    string changeReasonXrefCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "NILetterXrefCode"}
    string nILetterXrefCode?;
};

public type LaborValidationQualifier record {
    @jsondata:Name {value: "Active"}
    boolean active?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "Models"}
    LaborValidationModel[] models?;
    @jsondata:Name {value: "Sequence"}
    int:Signed32 sequence?;
    @jsondata:Name {value: "Children"}
    LaborValidationQualifier[] children?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type Job record {
    @jsondata:Name {value: "JobUDFString1"}
    string jobUDFString1?;
    @jsondata:Name {value: "JobUDFString2"}
    string jobUDFString2?;
    @jsondata:Name {value: "NOC"}
    string nOC?;
    @jsondata:Name {value: "EmployeeEEO"}
    EmployeeEEO employeeEEO?;
    @jsondata:Name {value: "IsUnionJob"}
    boolean isUnionJob?;
    @jsondata:Name {value: "JobFunction"}
    JobFunction jobFunction?;
    @jsondata:Name {value: "FLSAStatus"}
    FLSAStatus fLSAStatus?;
    @jsondata:Name {value: "JobClassification"}
    JobClassification jobClassification?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "JobRank"}
    int:Signed32 jobRank?;
    @jsondata:Name {value: "JobFamily"}
    JobFamily jobFamily?;
    @jsondata:Name {value: "JobUDFString3"}
    string jobUDFString3?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Union"}
    DFUnion union?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "JobQualifications"}
    string jobQualifications?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "JobSOC"}
    JobSOC jobSOC?;
    @jsondata:Name {value: "PayGrade"}
    PayGrade payGrade?;
};

public type OrgUnitLocationTypeCollection record {
    @jsondata:Name {value: "Items"}
    OrgUnitLocationType[] items?;
};

public type Culture record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableDEUEmployeeWageTax record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    DEUEmployeeWageTax[] data?;
};

public type PositionAssignmentCollection record {
    @jsondata:Name {value: "Items"}
    PositionAssignment[] items?;
};

public type QuestionAnswers record {
    @jsondata:Name {value: "Value"}
    string value?;
    @jsondata:Name {value: "Values"}
    string[] values?;
    @jsondata:Name {value: "Id"}
    string id?;
};

public type LaborMetricTypePatchPostResponse record {
    @jsondata:Name {value: "LaborMetricTypePatchPostResponseXrefCode"}
    string laborMetricTypePatchPostResponseXrefCode?;
};

public type JobFeed record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "JobFunction"}
    string jobFunction?;
    @jsondata:Name {value: "TravelPercentage"}
    decimal travelPercentage?;
    @jsondata:Name {value: "JobDetailsUrl"}
    string jobDetailsUrl?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "ParentCompanyName"}
    string parentCompanyName?;
    @jsondata:Name {value: "CandidateApplicationPostUrl"}
    string candidateApplicationPostUrl?;
    @jsondata:Name {value: "DatePosted"}
    string datePosted?;
    @jsondata:Name {value: "CompanyName"}
    string companyName?;
    @jsondata:Name {value: "Education"}
    string education?;
    @jsondata:Name {value: "CandidatesUrl"}
    string candidatesUrl?;
    @jsondata:Name {value: "CultureCode"}
    string cultureCode?;
    @jsondata:Name {value: "LastUpdated"}
    string lastUpdated?;
    @jsondata:Name {value: "QuestionnaireUrl"}
    string questionnaireUrl?;
    @jsondata:Name {value: "ParentRequisitionCode"}
    int:Signed32 parentRequisitionCode?;
    @jsondata:Name {value: "TravelRequired"}
    int:Signed32 travelRequired?;
    @jsondata:Name {value: "HiringRate"}
    decimal hiringRate?;
    @jsondata:Name {value: "ReferenceNumber"}
    int:Signed32 referenceNumber?;
    @jsondata:Name {value: "ClientSiteXRefCode"}
    string clientSiteXRefCode?;
    @jsondata:Name {value: "IsVirtualLocation"}
    boolean isVirtualLocation?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "EmploymentIndicator"}
    string employmentIndicator?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "JobFamily"}
    string jobFamily?;
    @jsondata:Name {value: "ClientSiteName"}
    string clientSiteName?;
    @jsondata:Name {value: "ApplyUrl"}
    string applyUrl?;
    @jsondata:Name {value: "AddressLine2"}
    string addressLine2?;
    @jsondata:Name {value: "AddressLine1"}
    string addressLine1?;
    @jsondata:Name {value: "JobType"}
    int:Signed32 jobType?;
    @jsondata:Name {value: "MaxHiringRate"}
    decimal maxHiringRate?;
    @jsondata:Name {value: "TelecommutePercentage"}
    decimal telecommutePercentage?;
    @jsondata:Name {value: "State"}
    string state?;
    @jsondata:Name {value: "Country"}
    string country?;
    @jsondata:Name {value: "MinHiringRate"}
    decimal minHiringRate?;
    @jsondata:Name {value: "Qualifications"}
    string qualifications?;
};

public type PMPositionAssignment record {
    @jsondata:Name {value: "PositionAssignmentGlobalId"}
    string positionAssignmentGlobalId?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "PMPosition"}
    PMPosition pMPosition?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: LaborDemands_Patch_By_model_dayToPatch_zoneXRefCode_activityXRefCode_laborMeasureXRefCode_axisXRefCode_isValidateOnly_clientNamespace
public type LaborDemandsPatchByModelDayToPatchZoneXRefCodeActivityXRefCodeLaborMeasureXRefCodeAxisXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
    string laborMeasureXRefCode?;
    string dayToPatch;
    string axisXRefCode?;
    string zoneXRefCode?;
    string activityXRefCode?;
};

public type GenderIdentity record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayType record {
    @jsondata:Name {value: "MaximumSalary"}
    decimal maximumSalary?;
    @jsondata:Name {value: "MaximumRate"}
    decimal maximumRate?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "PayTypeGroup"}
    PayTypeGroup payTypeGroup?;
    @jsondata:Name {value: "SortOrder"}
    int:Signed32 sortOrder?;
    @jsondata:Name {value: "IsPayrollAutoPay"}
    boolean isPayrollAutoPay?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "HidePayOnTimesheet"}
    boolean hidePayOnTimesheet?;
};

public type BenefitsDFLinkExportUnionMembership record {
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "MembershipEffectiveStartDate"}
    string membershipEffectiveStartDate?;
    @jsondata:Name {value: "MembershipDate"}
    string membershipDate?;
    @jsondata:Name {value: "UnionName"}
    string unionName?;
    @jsondata:Name {value: "UnionXrefCode"}
    string unionXrefCode?;
};

public type PayloadIEnumerableEmployeeWorkAssignmentManager record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeWorkAssignmentManager[] data?;
};

public type EmployeeLocationAuthority record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AuthorityType"}
    AuthorityType authorityType?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: ExtensibleProperty_Post_By_extensiblePropertyModel_typeCode_entityType_countryCode_entityXRefCode_isValidateOnly_clientNamespace
public type ExtensiblePropertyPostByExtensiblePropertyModelTypeCodeEntityTypeCountryCodeEntityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type PayloadLaborCostResult record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LaborCostResult data?;
};

public type EmployeePerformanceRatingCollection record {
    @jsondata:Name {value: "Items"}
    EmployeePerformanceRating[] items?;
};

public type AssociationDetails record {
    @jsondata:Name {value: "StartDateMonth"}
    string startDateMonth?;
    @jsondata:Name {value: "EndDateYear"}
    string endDateYear?;
    @jsondata:Name {value: "EndCurrent"}
    boolean endCurrent?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "EndDateMonth"}
    string endDateMonth?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "StartDateYear"}
    string startDateYear?;
};

public type EmployeeUSTaxStatusCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUSTaxStatus[] items?;
};

public type EmployeeEmergencyContact record {
    @jsondata:Name {value: "Addresses"}
    EmergencyContactPersonAddressCollection addresses?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "Contacts"}
    EmergencyContactPersonContactCollection contacts?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "Relationship"}
    RelationshipType relationship?;
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeShortTimeWorkCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeShortTimeWork[] items?;
};

public type PayloadSubordinateEntityReferences record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    SubordinateEntityReferences data?;
};

# Represents the Queries record for the operation: EmployeeCANFederalTax_Patch_By_employeeCANFederalTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCANFederalTaxPatchByEmployeeCANFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeCompensation record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeCompensation[] data?;
};

public type PREarningAccumulator record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmploymentStatusReason record {
    @jsondata:Name {value: "IsLeaveReason"}
    boolean isLeaveReason?;
    @jsondata:Name {value: "IsVoluntaryReason"}
    boolean isVoluntaryReason?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "IsTerminationReason"}
    boolean isTerminationReason?;
    @jsondata:Name {value: "IsCompChangeReason"}
    boolean isCompChangeReason?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "IsPositionChangeReason"}
    boolean isPositionChangeReason?;
};

# Represents the Queries record for the operation: EmployeeWorkAssignment_Replace_By_workAssignment_xRefCode_replaceFrom_replaceTo_isValidateOnly_clientNamespace
public type EmployeeWorkAssignmentReplaceByWorkAssignmentXRefCodeReplaceFromReplaceToIsValidateOnlyClientNamespaceQueries record {
    # The date from which all WorkAssignments will be replaced
    string replaceFrom?;
    # When a TRUE value is used in this parameter, validate the request without applying updates to the database
    boolean isValidateOnly?;
    # The date up to which all WorkAssignments will be replaced
    string replaceTo?;
};

public type EmployeeOvertimeGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PersonContact record {
    @jsondata:Name {value: "ShowRejectedWarning"}
    boolean showRejectedWarning?;
    @jsondata:Name {value: "ElectronicAddress"}
    string electronicAddress?;
    @jsondata:Name {value: "IsRejected"}
    boolean isRejected?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Extension"}
    string extension?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsUnlistedNumber"}
    boolean isUnlistedNumber?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ContactNumber"}
    string contactNumber?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "IsForSystemCommunications"}
    boolean isForSystemCommunications?;
    @jsondata:Name {value: "IsVerified"}
    boolean isVerified?;
    @jsondata:Name {value: "IsPreferredContactMethod"}
    boolean isPreferredContactMethod?;
    @jsondata:Name {value: "NumberOfVerificationRequests"}
    int:Signed32 numberOfVerificationRequests?;
    @jsondata:Name {value: "ContactInformationType"}
    ContactInformationType contactInformationType?;
    @jsondata:Name {value: "FormattedNumber"}
    string formattedNumber?;
};

public type AttendancePolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "TrackingBasedOn"}
    int:Signed32 trackingBasedOn?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeUnion_Post_By_employeeUnion_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUnionPostByEmployeeUnionXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeCertification_Post_By_employeeCertification_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCertificationPostByEmployeeCertificationXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeTrainingProgram_Post_By_employeeTrainingProgram_xRefCode_isValidateOnly_clientNamespace
public type EmployeeTrainingProgramPostByEmployeeTrainingProgramXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: CandidateSourcing_Post_By_model_isValidateOnly_clientNamespace
public type CandidateSourcingPostByModelIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, this will validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeCourse_Patch_By_employeeCourse_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCoursePatchByEmployeeCourseXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
};

public type MilitaryServices record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    MilitaryServiceDetails[] values?;
};

# Represents the Queries record for the operation: EmployeeEmploymentAgreement_Post_By_employeeEmploymentAgreement_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEmploymentAgreementPostByEmployeeEmploymentAgreementXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeDefaultLaborCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDefaultLabor[] items?;
};

public type EmployeeCANStateTaxCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeCANStateTax[] items?;
};

# Represents the Queries record for the operation: EmployeeGlobalPropertyValue_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeGlobalPropertyValueGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: LaborDemands_Post_By_model_isValidateOnly_clientNamespace
public type LaborDemandsPostByModelIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type PayrollPayEntryImportHistoryDetails record {
    @jsondata:Name {value: "TotalInvalidRecords"}
    int:Signed32 totalInvalidRecords?;
    @jsondata:Name {value: "ErrorActionCode"}
    int:Signed32 errorActionCode?;
    @jsondata:Name {value: "TotalRecordsIncluded"}
    int:Signed32 totalRecordsIncluded?;
    @jsondata:Name {value: "ImportSetName"}
    string importSetName?;
    @jsondata:Name {value: "UploadedDateUTC"}
    string uploadedDateUTC?;
    @jsondata:Name {value: "FinishedDate"}
    string finishedDate?;
    @jsondata:Name {value: "ErrorOccurActionName"}
    string errorOccurActionName?;
    @jsondata:Name {value: "TotalRecordsImported"}
    int:Signed32 totalRecordsImported?;
    @jsondata:Name {value: "Source"}
    string source?;
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "Errors"}
    PayrollPayEntryImportHistoryErrorDetails[] errors?;
    @jsondata:Name {value: "ImportStatus"}
    string importStatus?;
    @jsondata:Name {value: "SourceFile"}
    string sourceFile?;
    @jsondata:Name {value: "ImportIdentifier"}
    string importIdentifier?;
};

# Represents the Queries record for the operation: Positions_Get_By_XrefCode_contextDate_expand_clientNamespace
public type PositionsGetByXrefCodeContextDateExpandClientNamespaceQueries record {
    # This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the position master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document
    string expand?;
    # The Context Date value is an “as-of” date used to determine which Position data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2019-01-01T12:34:56
    string contextDate?;
};

# Represents the Queries record for the operation: EmployeeGLSplits_Get_By_payGroupXRefCode_employeeXRefCodes_splitStatus_pageSize_clientNamespace
public type EmployeeGLSplitsGetByPayGroupXRefCodeEmployeeXRefCodesSplitStatusPageSizeClientNamespaceQueries record {
    # Filter to fetch all or current/future effective GL splits. Value can be All or Active. Default value is Active
    string splitStatus?;
    # The comma separated employee XRef codes
    string employeeXRefCodes?;
    # Number of records to be loaded
    int:Signed32 pageSize?;
    # The pay group reference code
    string payGroupXRefCode?;
};

# Represents the Queries record for the operation: EmployeePunches_GetEmployeePunches_By_filterTransactionStartTimeUTC_filterTransactionEndTimeUTC_employeeXRefCode_locationXRefCode_positionXRefCode_departmentXRefCode_jobXRefCode_docketXRefCode_projectXRefCode_payAdjustmentXRefCode_shiftStatus_filterShiftTimeStart_filterShiftTimeEnd_businessDate_pageSize_clientNamespace
public type EmployeePunchesGetEmployeePunchesByFilterTransactionStartTimeUTCFilterTransactionEndTimeUTCEmployeeXRefCodeLocationXRefCodePositionXRefCodeDepartmentXRefCodeJobXRefCodeDocketXRefCodeProjectXRefCodePayAdjustmentXRefCodeShiftStatusFilterShiftTimeStartFilterShiftTimeEndBusinessDatePageSizeClientNamespaceQueries record {
    # A case-sensitive field that identifies one or more projects
    string projectXRefCode?;
    # Inclusive transaction period end date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    string filterTransactionEndTimeUTC;
    # Use with FilterTransactionStartTimeUTC to search for shifts with a Start and end time in a given timeframe. Example: Used to include or exclude edits made to historical punches
    string filterShiftTimeStart?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee
    string employeeXRefCode?;
    # Use with FilterTransactionEndTimeUTC to search for shifts with a Start and end time in a given timeframe. Example: Used to include or exclude edits made to historical
    string filterShiftTimeEnd?;
    # Inclusive transaction period start date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    string filterTransactionStartTimeUTC;
    # A case-sensitive field that identifies one or more Positions
    string positionXRefCode?;
    # The Business Date value is intended as a “Timesheet View” to return punch data related to a clients Business day parameter configuration. Example: 2017-01-01T00:00:00
    string businessDate?;
    # A case-sensitive field containing shift status groups. Examples: [ACTIVE, COMPLETED, PROBLEM, ALL]
    string shiftStatus?;
    # A case-sensitive field that identifies one or more pay adjustment
    string payAdjustmentXRefCode?;
    # A case-sensitive field that identifies one or more Jobs
    string jobXRefCode?;
    # A case-sensitive field that identifies a location or organizational units
    string locationXRefCode?;
    # A case-sensitive field that identifies one or more Departments
    string departmentXRefCode?;
    # A case-sensitive field that identifies one or more dockets
    string docketXRefCode?;
};

public type EmployeePunchPatchPostDeleteResponse record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
};

public type PayloadIEnumerableEmployeeShortTimeWork record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeShortTimeWork[] data?;
};

public type EmployeeGLSplitSets record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "EmployeeGLSplitSetDetails"}
    EmployeeGLSplitSetDetails[] employeeGLSplitSetDetails?;
    @jsondata:Name {value: "DeptJobName"}
    string deptJobName?;
    @jsondata:Name {value: "OrgUnitName"}
    string orgUnitName?;
    @jsondata:Name {value: "SplitEffectiveFrom"}
    string splitEffectiveFrom?;
    @jsondata:Name {value: "SplitEffectiveTo"}
    string splitEffectiveTo?;
    @jsondata:Name {value: "DeptJobXRefCode"}
    string deptJobXRefCode?;
};

public type EmployeeScheduleActivityPostAPIRequestDTO record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd;
    @jsondata:Name {value: "TimeStart"}
    string timeStart;
};

# Represents the Queries record for the operation: Projects_GetProjects_By_shortName_longName_pageSize_projectClientXRefCode_projectTypeXRefCode_projectPhaseXRefCode_productGroupXRefCode_productModuleXRefCode_creationOrgUnitXRefCode_lastModifedStartDate_lastModifedEndDate_filterStartDateFrom_filterStartDateTo_filterDueDateFrom_filterDueDateTo_filterCompletedDateFrom_filterCompletedDateTo_certifiedPayrollProjectNumber_parentProjectXRefCode_isDeleted_ledgerCode_clockTransferCode_accountNum_iFRSClassification_filterProjectPriorityFrom_filterProjectPriorityTo_filterBudgetHoursFrom_filterBudgetHoursTo_filterBudgetAmountFrom_filterBudgetAmountTo_filterPctCompleteFrom_filterPctCompleteTo_clientNamespace
public type ProjectsGetProjectsByShortNameLongNamePageSizeProjectClientXRefCodeProjectTypeXRefCodeProjectPhaseXRefCodeProductGroupXRefCodeProductModuleXRefCodeCreationOrgUnitXRefCodeLastModifedStartDateLastModifedEndDateFilterStartDateFromFilterStartDateToFilterDueDateFromFilterDueDateToFilterCompletedDateFromFilterCompletedDateToCertifiedPayrollProjectNumberParentProjectXRefCodeIsDeletedLedgerCodeClockTransferCodeAccountNumIFRSClassificationFilterProjectPriorityFromFilterProjectPriorityToFilterBudgetHoursFromFilterBudgetHoursToFilterBudgetAmountFromFilterBudgetAmountToFilterPctCompleteFromFilterPctCompleteToClientNamespaceQueries record {
    # Use to search for Projects with Clock Code
    string clockTransferCode?;
    string accountNum?;
    # Use to search for projects with Budget Hours value greater than or equal to the specified value. When a value is provided for this parameter filterBudgetHoursTo value must also be provided
    decimal filterBudgetHoursFrom?;
    # Use to search for projects based on Organizational units' xrefcode
    string creationOrgUnitXRefCode?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # Use to search for Projects  with Budget Hours values less than or equal to the specified value. When a value is provided for this parameter filterBudgetHoursFrom value must also be provided
    decimal filterBudgetHoursTo?;
    # This filters the projects based on those are deleted or not
    boolean isDeleted?;
    # Use to search for Projects  with Percent Complete values less than or equal to the specified value. When a value is provided for this parameter filterPctCompleteFrom value must also be provided
    decimal filterPctCompleteTo?;
    # Use to search for projects with Start date values less than or equal to the specified value
    string filterStartDateTo?;
    # This field identifies a unique Product Module
    string productModuleXRefCode?;
    # Use to search for projects with Budget Amount value greater than or equal to the specified value. When a value is provided for this parameter filterBudgetAmountTo value must also be provided
    decimal filterBudgetAmountFrom?;
    # Use to search for projects with Due Date  values less than or equal to the specified value
    string filterDueDateTo?;
    # This field identifies a unique Project Type
    string projectTypeXRefCode?;
    # This field identifies a unique Product Group
    string productGroupXRefCode?;
    # This field identifies a unique Project Phase
    string projectPhaseXRefCode?;
    # Use to search for projects with immediate Parent Project
    string parentProjectXRefCode?;
    # The Start date used when searching for projects with updates in a specified timeframe
    string lastModifedStartDate?;
    string ledgerCode?;
    # Use to search for Projects with Completed Date values less than or equal to the specified value
    string filterCompletedDateTo?;
    # Use to search for Projects  with Budget Amount values less than or equal to the specified value. When a value is provided for this parameter filterBudgetAmountFrom value must also be provided
    decimal filterBudgetAmountTo?;
    # Use to search for projects with Due Date  values greater than or equal to the specified value
    string filterDueDateFrom?;
    # The End date used when searching for projects with updates in a specified timeframe
    string lastModifedEndDate?;
    # Use to search for projects with Project Priority value greater than or equal to the specified value. When a value is provided for this parameter filterProjectPriorityTo value must also be provided
    int:Signed32 filterProjectPriorityFrom?;
    boolean iFRSClassification?;
    # Use to search for Projects  with Project Priority values less than or equal to the specified value. When a value is provided for this parameter filterProjectPriorityFrom value must also be provided
    int:Signed32 filterProjectPriorityTo?;
    # Use to search for projects with Start date values greater than or equal to the specified value
    string filterStartDateFrom?;
    # Use to search for projects with Completed Date values greater than or equal to the specified value
    string filterCompletedDateFrom?;
    # This field identifies a unique Project Client
    string projectClientXRefCode?;
    # Project Name
    string shortName?;
    # Use to search for projects with certifiedPayrollProjectNumber
    int:Signed32 certifiedPayrollProjectNumber?;
    # Use to search for projects with Percent Complete value greater than or equal to the specified value. When a value is provided for this parameter filterPctCompleteTo value must also be provided
    decimal filterPctCompleteFrom?;
    # Project Description
    string longName?;
};

public type EmployeeTimeAwayFromWorkForSubmit record {
    @jsondata:Name {value: "HalfDay"}
    boolean halfDay?;
    @jsondata:Name {value: "TAFWXRefCode"}
    string tAFWXRefCode?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "PayAdjustmentCodeXRefCode"}
    string payAdjustmentCodeXRefCode?;
    @jsondata:Name {value: "AllDay"}
    boolean allDay?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "Days"}
    int:Signed32 days?;
    @jsondata:Name {value: "StatusXRefCode"}
    string statusXRefCode?;
    @jsondata:Name {value: "ManagerComment"}
    string managerComment?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "EmployeeComment"}
    string employeeComment?;
    @jsondata:Name {value: "NetHoursPerDay"}
    decimal[] netHoursPerDay?;
};

public type ContactInformationTypeGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type Transfers record {
    @jsondata:Name {value: "TimeStartRaw"}
    string timeStartRaw?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    LaborMetrics[] laborMetrics?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
    @jsondata:Name {value: "ManagerComment"}
    string managerComment?;
    @jsondata:Name {value: "PayAdjustmentXRefCode"}
    string payAdjustmentXRefCode?;
    @jsondata:Name {value: "DocketQuantity"}
    decimal docketQuantity?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "EmployeeComment"}
    string employeeComment?;
};

public type Links record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    LinkDetails[] values?;
};

# Represents the Queries record for the operation: EmployeePayGradeRate_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeePayGradeRateGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeeCertification_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeCertificationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeePayAdjCodeGroupListCollection record {
    @jsondata:Name {value: "Items"}
    EmployeePayAdjustCodeGroup[] items?;
};

public type PayAdjCodeGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EducationDetails record {
    @jsondata:Name {value: "Field"}
    string field?;
    @jsondata:Name {value: "School"}
    string school?;
    @jsondata:Name {value: "EndDateYear"}
    string endDateYear?;
    @jsondata:Name {value: "EndCurrent"}
    boolean endCurrent?;
    @jsondata:Name {value: "Degree"}
    string degree?;
    @jsondata:Name {value: "StartDateYear"}
    string startDateYear?;
    @jsondata:Name {value: "Location"}
    string location?;
};

public type EmployeeVeteransStatusCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeVeteransStatus[] items?;
};

public type EarningStatementDocument record {
    @jsondata:Name {value: "Contents"}
    string contents?;
    @jsondata:Name {value: "FileName"}
    string fileName?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "Link"}
    string link?;
};

public type PayloadIEnumerableEmployeeSchedulePostAPIResponse record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeSchedulePostAPIResponse[] data?;
};

public type PaginatedPayloadIEnumerableEmployeePaySummary record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeePaySummary[] data?;
};

public type PayloadIEnumerableContactInformationType record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ContactInformationType[] data?;
};

public type PRGLSplitSet record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Position"}
    Position position?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Location"}
    Location location?;
    @jsondata:Name {value: "PRGLSplitSetDetails"}
    PRGLSplitSetDetailCollection pRGLSplitSetDetails?;
};

public type DEUSTWParticipationReason record {
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "DEUSTWParticipationReasonId"}
    int:Signed32 dEUSTWParticipationReasonId?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadAnalyticsDatasetMetadataResponse record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    AnalyticsDatasetMetadataResponse data?;
};

# Represents the Queries record for the operation: BackgroundScreening_PostBillingCode_By_backgroundScreeningBillingCode_isValidateOnly_clientNamespace
public type BackgroundScreeningPostBillingCodeByBackgroundScreeningBillingCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: PlanTargets_Patch_By_planTargetApiModel_planTargetXRefCode_isValidateOnly_clientNamespace
public type PlanTargetsPatchByPlanTargetApiModelPlanTargetXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in 
    #                  this parameter the PATCH operation validates the
    #                  request without applying the updates to the database.
    #                  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
    string planTargetXRefCode;
};

public type PayloadLocation record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Location data?;
};

public type DocMgmtUploadResponse record {
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "FilesProcessed"}
    DocMgmtFileProcessedResponse[] filesProcessed?;
};

public type PayloadIEnumerableEmployeeEmploymentAgreement record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeEmploymentAgreement[] data?;
};

public type PayloadIEnumerableEmployeePropertyValue record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePropertyValue[] data?;
};

public type PayloadIEnumerableEmployee record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Employee[] data?;
};

public type AnalyticsReportDefinitions record {
    # Description of the Report.
    # The description will be localized, based on the Session Culture
    @jsondata:Name {value: "Description"}
    string description?;
    # Feature Id for the Report
    @jsondata:Name {value: "ReportId"}
    string reportId?;
    # Name of the Report.
    # The name will be localized, based on the Session Culture
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: EmployeePaySummaries_GetEmployeePaySummaries_By_filterPaySummaryStartDate_filterPaySummaryEndDate_employeeXRefCode_locationXRefCode_payGroupXRefCode_payCategoryXRefCode_clientNamespace
public type EmployeePaySummariesGetEmployeePaySummariesByFilterPaySummaryStartDateFilterPaySummaryEndDateEmployeeXRefCodeLocationXRefCodePayGroupXRefCodePayCategoryXRefCodeClientNamespaceQueries record {
    # Inclusive period start date in UTC to determine which employee pay summary data to retrieve. Example: 2017-01-01T00:00:00
    string filterPaySummaryStartDate;
    # Inclusive period end date in UTC to determine which employee pay summary data to retrieve. Example: 2017-01-01T00:00:00
    string filterPaySummaryEndDate;
    # The unique identifier (external reference code) of the payCatergory to be retrieved. The value provided must be the exact match for a payCatergory
    string payCategoryXRefCode?;
    # The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee
    string employeeXRefCode?;
    # The unique identifier (external reference code) of the position to be retrieved. The value provided must be the exact match for a position
    string payGroupXRefCode?;
    # The unique identifier (external reference code) of the location to be retrieved. The value provided must be the exact match for a location
    string locationXRefCode?;
};

# Represents the Queries record for the operation: EmployeeUSStateTax_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeUSStateTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PayloadIEnumerableEmployeeAvailability record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeAvailability[] data?;
};

# Represents the Queries record for the operation: EmployeeHRIncident_Post_By_incident_xRefCode_isValidateOnly_clientNamespace
public type EmployeeHRIncidentPostByIncidentXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeVolunteerList_Post_By_employeeVolunteerList_xRefCode_isValidateOnly_clientNamespace
public type EmployeeVolunteerListPostByEmployeeVolunteerListXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type DEUHoursChangeReason record {
    @jsondata:Name {value: "ITSGCode"}
    string iTSGCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: Jobs_Get_By_contextDate_clientNamespace
public type JobsGetByContextDateClientNamespaceQueries record {
    # The Context Date value is an “as-of” date used to determine which job data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
};

public type PRGLSplitSetDetailMetricCodeCollection record {
    @jsondata:Name {value: "Items"}
    PRGLSplitSetDetailMetricCode[] items?;
};

# Represents the Queries record for the operation: EmployeeGlobalPropertyValue_Post_By_employeeGlobalPropertyValue_xRefCode_isValidateOnly_clientNamespace
public type EmployeeGlobalPropertyValuePostByEmployeeGlobalPropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayMethod record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BackgroundScreeningAdjudicationStatus record {
    @jsondata:Name {value: "ScreeningRequestId"}
    string screeningRequestId?;
    @jsondata:Name {value: "AdjudicationStatus"}
    string adjudicationStatus?;
};

public type EmployeeUSFederalTax record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AdditionalAmount"}
    decimal additionalAmount?;
    @jsondata:Name {value: "DependentTaxCredit"}
    decimal dependentTaxCredit?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "FilingStatus"}
    FederalFilingStatus filingStatus?;
    @jsondata:Name {value: "Allowances"}
    int:Signed32 allowances?;
    @jsondata:Name {value: "IsLocked"}
    boolean isLocked?;
    @jsondata:Name {value: "TwoJobs"}
    boolean twoJobs?;
    @jsondata:Name {value: "OtherIncome"}
    decimal otherIncome?;
    @jsondata:Name {value: "Deductions"}
    decimal deductions?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "IsTaxExempt"}
    boolean isTaxExempt?;
};

# Represents the Queries record for the operation: PayrollPayEntry_TimeDataDelete_By_payGroupXRefCode_importSetModel_source_periodStartDate_periodEndDate_payDate_ppn_orgUnitXRefCode_offCyclePayRunXRefCode_isValidateOnly_clientNamespace
public type PayrollPayEntryTimeDataDeleteByPayGroupXRefCodeImportSetModelSourcePeriodStartDatePeriodEndDatePayDatePpnOrgUnitXRefCodeOffCyclePayRunXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # Offcycle pay run XRef Code
    string offCyclePayRunXRefCode?;
    # The pay run period start date
    string periodStartDate?;
    # If TRUE, DELETE operations validate the request and IDs. 
    #             The default value is FALSE. Note, DELETE operation will only validate data structure
    boolean isValidateOnly?;
    # The source of the import
    string 'source?;
    # The pay run period end date
    string periodEndDate?;
    # The user org unit reference code to load data entries from (in org unit hierarchy)
    string orgUnitXRefCode?;
    # The pay run pay date
    string payDate?;
    # The pay run's pay period number (format: ##-##)
    string ppn?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxPRSI_Post_By_employeeIRLTaxPRSI_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxPRSIPostByEmployeeIRLTaxPRSIXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeVolunteerList record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeVolunteerList[] data?;
};

public type PublicationDetails record {
    @jsondata:Name {value: "DateDay"}
    string dateDay?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "DateYear"}
    string dateYear?;
    @jsondata:Name {value: "Url"}
    string url?;
    @jsondata:Name {value: "DateMonth"}
    string dateMonth?;
};

public type PayrollDeduction record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeVeteransStatus_Post_By_employeeVeteransStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeVeteransStatusPostByEmployeeVeteransStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: WorkContract_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type WorkContractGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeUnionMembership record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "UnionMembershipDate"}
    string unionMembershipDate?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Union"}
    DFUnion union?;
};

# Represents the Queries record for the operation: EmployeeDEUTaxSocialInsurance_Patch_By_deuEmployeeSocialInsurance_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDEUTaxSocialInsurancePatchByDeuEmployeeSocialInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: ShiftBidding_Post_By_OrgUnitXRefCode_EmployeeXRefCode_employeeShiftBidDTO_isValidateOnly_clientNamespace
public type ShiftBiddingPostByOrgUnitXRefCodeEmployeeXRefCodeEmployeeShiftBidDTOIsValidateOnlyClientNamespaceQueries record {
    # The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    @http:Query {name: "OrgUnitXRefCode"}
    string orgUnitXRefCode;
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeSkill_Post_By_employeeSkill_xRefCode_isValidateOnly_clientNamespace
public type EmployeeSkillPostByEmployeeSkillXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayPeriodInformation record {
    @jsondata:Name {value: "PayPeriodStartDate"}
    string payPeriodStartDate?;
    @jsondata:Name {value: "PayPeriodEndDate"}
    string payPeriodEndDate?;
    @jsondata:Name {value: "PayGroup"}
    PayGroupBrief payGroup?;
    @jsondata:Name {value: "OffsetPayPeriodEndDate"}
    string offsetPayPeriodEndDate?;
    @jsondata:Name {value: "OffsetPayPeriodStartDate"}
    string offsetPayPeriodStartDate?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LocationAddresses record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "Address"}
    string address?;
    @jsondata:Name {value: "CountryName"}
    string countryName?;
    @jsondata:Name {value: "StateProvince"}
    string stateProvince?;
    @jsondata:Name {value: "StateProvinceCode"}
    string stateProvinceCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "TaxAuthorityInstance"}
    string taxAuthorityInstance?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "County"}
    string county?;
    @jsondata:Name {value: "ZipPostalCode"}
    string zipPostalCode?;
    @jsondata:Name {value: "IsTaxation"}
    boolean isTaxation?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "AddressLineTwo"}
    string addressLineTwo?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "LocationInJtEconomicDevDistAreaJedd"}
    boolean locationInJtEconomicDevDistAreaJedd?;
    @jsondata:Name {value: "JeddTaxes"}
    string jeddTaxes?;
};

public type PayloadIEnumerableEmployeePayrollElection record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePayrollElection[] data?;
};

# Represents the Queries record for the operation: BackgroundScreening_Patch_By_backgroundScreeningStatusUrlReport_isValidateOnly_clientNamespace
public type BackgroundScreeningPatchByBackgroundScreeningStatusUrlReportIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: DataPrivacy_PolicyAssociations_By_countryCodes_pageSize_personType_xRefCode_clientNamespace
public type DataPrivacyPolicyAssociationsByCountryCodesPageSizePersonTypeXRefCodeClientNamespaceQueries record {
    # The country codes to search policies for, if ommited all countries will be returned
    string countryCodes?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # The unique identifier (external reference code) of the employee whose data will be retrieved.  The value provided must be the exact match for an employee; otherwise, a bad request (400) error will be returned
    string xRefCode?;
    # Can be either Employee or Candidate
    string personType?;
};

# Represents the Queries record for the operation: EmployeeCompensation_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeCompensationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeEarningLimit record {
    @jsondata:Name {value: "EarningLimit"}
    EarningLimit earningLimit?;
    @jsondata:Name {value: "LimitPercent"}
    decimal limitPercent?;
    @jsondata:Name {value: "PayGroupLimitPercent"}
    decimal payGroupLimitPercent?;
    @jsondata:Name {value: "LimitAmount"}
    decimal limitAmount?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayGroupLimitAmount"}
    decimal payGroupLimitAmount?;
};

public type Breaks record {
    @jsondata:Name {value: "Type"}
    string type?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
};

# Represents the Queries record for the operation: PayRunStatus_Get_By_payGroupXRefCode_payDate_periodStartDate_periodEndDate_ppn_clientNamespace
public type PayRunStatusGetByPayGroupXRefCodePayDatePeriodStartDatePeriodEndDatePpnClientNamespaceQueries record {
    # The pay run's period start date (format: yyyy-mm-dd)
    string periodStartDate?;
    # The pay run's period end date (format: yyyy-mm-dd)
    string periodEndDate?;
    # The pay run's pay date (format: yyyy-mm-dd)
    string payDate?;
    # The PayPeriodNumber(format: ##-##)
    string ppn?;
};

public type EmployeeBadge record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "BadgeNumber"}
    string badgeNumber?;
};

public type DEUEmployeeWageTax record {
    @jsondata:Name {value: "DenominationCodeName"}
    string denominationCodeName?;
    @jsondata:Name {value: "EmploymentTypeCodeName"}
    string employmentTypeCodeName?;
    @jsondata:Name {value: "IsManualInput"}
    boolean isManualInput?;
    @jsondata:Name {value: "ElectronicDataTransfer"}
    boolean electronicDataTransfer?;
    @jsondata:Name {value: "SpouseDenominationCodeName"}
    string spouseDenominationCodeName?;
    @jsondata:Name {value: "TaxClass"}
    string taxClass?;
    @jsondata:Name {value: "TaxExemption"}
    boolean taxExemption?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "RequestedAnnualAllowance"}
    decimal requestedAnnualAllowance?;
    @jsondata:Name {value: "ChildAllowance"}
    decimal childAllowance?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AnnualAllowance"}
    decimal annualAllowance?;
    @jsondata:Name {value: "Factor"}
    decimal factor?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "OptOutYearEndWageTaxAdjustment"}
    boolean optOutYearEndWageTaxAdjustment?;
    @jsondata:Name {value: "MonthlyAllowance"}
    decimal monthlyAllowance?;
    @jsondata:Name {value: "ReferenceDate"}
    string referenceDate?;
};

public type PensionTypeConfiguration record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxEWSS_Patch_By_employeeIRLTaxEWSS_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxEWSSPatchByEmployeeIRLTaxEWSSXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableKpiTargetPattern record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    KpiTargetPattern[] data?;
};

public type EmployeeBalancePeriod record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "InitialAccruedValue"}
    decimal initialAccruedValue?;
    @jsondata:Name {value: "CurrentAccruedValue"}
    decimal currentAccruedValue?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "MaximumValue"}
    decimal maximumValue?;
    @jsondata:Name {value: "BalanceName"}
    string balanceName?;
    @jsondata:Name {value: "MinimumValue"}
    decimal minimumValue?;
    @jsondata:Name {value: "BalanceXRefCode"}
    string balanceXRefCode?;
    @jsondata:Name {value: "CurrentGrantValue"}
    decimal currentGrantValue?;
    @jsondata:Name {value: "InitialGrantValue"}
    decimal initialGrantValue?;
};

# Represents the Queries record for the operation: EmployeeUSTaxStatus_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeUSTaxStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: DataPrivacy_PersonManagementHistory_By_pageSize_policy_personType_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type DataPrivacyPersonManagementHistoryByPageSizePolicyPersonTypeContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which Person Management History data to search when records have specific start and end dates.The service defaults to null if the requester does not specify a value.Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # Can be either Employee or Candidate
    string personType?;
    # The Context Date Range To value is the end of the range of dates to determine which Person Management History data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
    # Person Management Policy Types such as HR, WFM, etc
    string policy?;
};

public type PersonManagementEraseHistory record {
    @jsondata:Name {value: "LastPayDate"}
    string lastPayDate?;
    @jsondata:Name {value: "LastDeptJob"}
    string lastDeptJob?;
    @jsondata:Name {value: "RequestId"}
    int:Signed32 requestId?;
    @jsondata:Name {value: "TerminationDate"}
    string terminationDate?;
    @jsondata:Name {value: "EraseRequestDate"}
    string eraseRequestDate?;
    @jsondata:Name {value: "PersonType"}
    string personType?;
    @jsondata:Name {value: "DayforceCreateDate"}
    string dayforceCreateDate?;
    @jsondata:Name {value: "EmploymentStatusReason"}
    string employmentStatusReason?;
    @jsondata:Name {value: "Reason"}
    string reason?;
    @jsondata:Name {value: "EligibleForRehire"}
    string eligibleForRehire?;
    @jsondata:Name {value: "LastOrgUnit"}
    string lastOrgUnit?;
    @jsondata:Name {value: "Originator"}
    string originator?;
    @jsondata:Name {value: "LastBenefitCoverageDate"}
    string lastBenefitCoverageDate?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    @jsondata:Name {value: "HireDate"}
    string hireDate?;
    @jsondata:Name {value: "LastPayGroup"}
    string lastPayGroup?;
    @jsondata:Name {value: "PurgeDate"}
    string purgeDate?;
};

# Represents the Queries record for the operation: UserPayAdjustCodeGroup_Post_By_userPayAdjCodeGroup_xRefCode_isValidateOnly_clientNamespace
public type UserPayAdjustCodeGroupPostByUserPayAdjCodeGroupXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeUKTaxDetails record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "PreviousTaxableGrossPaidToDate"}
    decimal previousTaxableGrossPaidToDate?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "PreviousTaxPaidToDate"}
    decimal previousTaxPaidToDate?;
    @jsondata:Name {value: "TaxCode"}
    string taxCode?;
    @jsondata:Name {value: "TaxBasis"}
    boolean taxBasis?;
    @jsondata:Name {value: "StarterDeclaration"}
    string starterDeclaration?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ChangeReasonXrefCode"}
    string changeReasonXrefCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PreviouslyReportedOnFPS"}
    boolean previouslyReportedOnFPS?;
};

public type EmployeePayrollTaxParameter record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "ExemptTaxOnlyUpdateWages"}
    boolean exemptTaxOnlyUpdateWages?;
    @jsondata:Name {value: "InactivateTax"}
    boolean inactivateTax?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "TaxAuthorityInstance"}
    string taxAuthorityInstance?;
    @jsondata:Name {value: "OverrideParameters"}
    EmployeePayrollTaxParameterElement[] overrideParameters?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ExemptTaxAndTaxableWages"}
    boolean exemptTaxAndTaxableWages?;
};

public type EmployeeElectionAPIDeletionModel record {
    @jsondata:Name {value: "SourceTypeXRefCode"}
    string sourceTypeXRefCode?;
    @jsondata:Name {value: "ElectionXrefCode"}
    string electionXrefCode?;
};

# Represents the Queries record for the operation: EmployeeUKStudentLoan_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeUKStudentLoanGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    string contextDateRangeFrom?;
    string contextDate?;
    string contextDateRangeTo?;
};

public type Educations record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    EducationDetails[] values?;
};

# Represents the Queries record for the operation: OperatingHours_PostOperatingHoursException_By_OperatingHoursExceptionAPIPostPayload_isValidateOnly_clientNamespace
public type OperatingHoursPostOperatingHoursExceptionByOperatingHoursExceptionAPIPostPayloadIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type HRIncidentInjury record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeHealthWellness_Post_By_employeeHealthWellness_xRefCode_isValidateOnly_clientNamespace
public type EmployeeHealthWellnessPostByEmployeeHealthWellnessXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeDEUTax_Post_By_deuEmployeeWageTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDEUTaxPostByDeuEmployeeWageTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type LMSCertification record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "ExpirationUnit"}
    string expirationUnit?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ExpirationValue"}
    int:Signed32 expirationValue?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeGLSplitUpsert record {
    @jsondata:Name {value: "GLSplitSets"}
    GLSplitSetUpsert[] gLSplitSets?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
};

public type CandidateRTWDocument record {
    @jsondata:Name {value: "CandidateRTWDocumentId"}
    int:Signed32 candidateRTWDocumentId?;
    @jsondata:Name {value: "Type"}
    string type?;
    @jsondata:Name {value: "Details"}
    CandidateRTWDocumentDetails[] details?;
    @jsondata:Name {value: "DocumentErrors"}
    CandidateRTWDocumentGenericError[] documentErrors?;
    @jsondata:Name {value: "DocumentExtension"}
    string documentExtension?;
    @jsondata:Name {value: "DateExpire"}
    string dateExpire?;
    @jsondata:Name {value: "PathwayCode"}
    string pathwayCode?;
    @jsondata:Name {value: "DateAdded"}
    string dateAdded?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "Sources"}
    CandidateRTWDocumentSource sources?;
    @jsondata:Name {value: "DocumentName"}
    string documentName?;
};

public type ClientPayrollCountry record {
    @jsondata:Name {value: "ClientOperatingLocations"}
    string clientOperatingLocations?;
    @jsondata:Name {value: "Countries"}
    PayrollCountry[] countries?;
    @jsondata:Name {value: "ConnectPayEnabled"}
    boolean connectPayEnabled?;
    @jsondata:Name {value: "ClientOperatingLocationsLabel"}
    string clientOperatingLocationsLabel?;
};

public type JobClassification record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeAssignedSexAndGenderIdentity record {
    @jsondata:Name {value: "AssignedSexCountryAware"}
    AssignedSexCountryAware assignedSexCountryAware?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "GenderIdentityCountryAware"}
    GenderIdentityCountryAware genderIdentityCountryAware?;
};

public type PaginatedPayloadIEnumerableEmployeePunch record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeePunch[] data?;
};

public type KpiTargetPatternAssignment record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "PatternOffset"}
    int:Signed32 patternOffset?;
    @jsondata:Name {value: "KpiXRefCode"}
    string kpiXRefCode?;
    @jsondata:Name {value: "ZoneXRefCode"}
    string zoneXRefCode?;
};

public type PayloadIEnumerableEmployeePayrollElectionDeletionModel record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePayrollElectionDeletionModel[] data?;
};

# Represents the Queries record for the operation: EmployeeCANStateTax_Post_By_employeeCANStateTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCANStateTaxPostByEmployeeCANStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PaginatedPayloadPersonManagementExemption record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    PersonManagementExemption data?;
};

# Represents the Queries record for the operation: KpiData_Get_By_orgUnitXRefCode_kpiXRefCode_kpiDataType_timePeriod_filterFrom_filterTo_axisXRefCode_mdseXRefCode_clientNamespace
public type KpiDataGetByOrgUnitXRefCodeKpiXRefCodeKpiDataTypeTimePeriodFilterFromFilterToAxisXRefCodeMdseXRefCodeClientNamespaceQueries record {
    # End date for the KPI data. Format yyyy-mm-dd
    string filterTo;
    # Start date for the KPI data. Format yyyy-mm-dd
    string filterFrom;
    # The unique identifier of the MDSE to select a specific department. Use only when merchandise departments have been configured
    string mdseXRefCode?;
    # The unique identifier of the KPI's axis . Axis data can be identified from 'Axis' table
    string axisXRefCode?;
    # The time period for the KPI; Enter values in terms of either minutes, days or weeks
    string timePeriod;
    # The unique identifier of the KPI
    string kpiXRefCode;
    # Unique identifier of the Org
    string orgUnitXRefCode;
    # The data type of the KPI; Enter values for either actual, plan or forecast
    string kpiDataType;
};

public type EmployeeBadgeCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeBadge[] items?;
};

public type EmployeeBalanceTransactions record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Transactions"}
    EmployeeBalanceTransaction[] transactions?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "EmployeeBalancePeriodIdExternal"}
    int employeeBalancePeriodIdExternal?;
};

public type PayrollEmployeeDeductionParameter record {
    @jsondata:Name {value: "EmployeeElectedValue"}
    decimal employeeElectedValue?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "PayGroupDefaultValue"}
    decimal payGroupDefaultValue?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ParamCodeName"}
    string paramCodeName?;
};

public type Course record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "CourseProvider"}
    CourseProvider courseProvider?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "CourseCode"}
    string courseCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "CourseType"}
    CourseType courseType?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeEthnicity_Post_By_employeeEthnicity_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEthnicityPostByEmployeeEthnicityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeClockDeviceGroup_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeClockDeviceGroupGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PayloadIEnumerableManagerShiftBid record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ManagerShiftBid[] data?;
};

public type EmployeePayAdjustmentLaborMetrics record {
    @jsondata:Name {value: "LaborMetricsTypeXRefCode"}
    string laborMetricsTypeXRefCode?;
    @jsondata:Name {value: "LaborMetricsCodeXRefCode"}
    string laborMetricsCodeXRefCode?;
};

# Represents the Queries record for the operation: TrainingProgram_Patch_By_trainingProgram_xRefCode_isValidateOnly_clientNamespace
public type TrainingProgramPatchByTrainingProgramXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
    # The course xRefCode to be updated
    string xRefCode;
};

public type PayloadIEnumerablePayee record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Payee[] data?;
};

public type PayloadIEnumerableEmployeeWorkAssignment record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeWorkAssignment[] data?;
};

# Represents the Queries record for the operation: Skill_Patch_By_skill_xRefCode_isValidateOnly_clientNamespace
public type SkillPatchBySkillXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
    # The xRefCode of the skill to be updated
    string xRefCode;
};

public type Role record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BankAccountBranchAddress record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeBadge_Post_By_employeeBadge_xRefCode_isValidateOnly_clientNamespace
public type EmployeeBadgePostByEmployeeBadgeXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type ChildLocationCollection record {
    @jsondata:Name {value: "Items"}
    ChildLocation[] items?;
};

public type UserPayAdjCodeGroupCollection record {
    @jsondata:Name {value: "Items"}
    UserPayAdjustCodeGroup[] items?;
};

public type EmployeeCourse record {
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "PassFail"}
    string passFail?;
    @jsondata:Name {value: "EmployeeTrainingProgram"}
    EmployeeTrainingProgram employeeTrainingProgram?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "CertificationExpiryDate"}
    string certificationExpiryDate?;
    @jsondata:Name {value: "Cost"}
    decimal cost?;
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "Score"}
    string score?;
    @jsondata:Name {value: "Credits"}
    string credits?;
    @jsondata:Name {value: "EnrollmentStatus"}
    LMSEnrollmentStatus enrollmentStatus?;
    @jsondata:Name {value: "CostCurrencyCode"}
    string costCurrencyCode?;
    @jsondata:Name {value: "TimeSpent"}
    int:Signed32 timeSpent?;
    @jsondata:Name {value: "Course"}
    Course course?;
    @jsondata:Name {value: "CompletionDate"}
    string completionDate?;
    @jsondata:Name {value: "CertificationNumber"}
    string certificationNumber?;
};

public type PaginatedPayloadIEnumerableTrainingProgram record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    TrainingProgram[] data?;
};

public type EmployeeEarning record {
    @jsondata:Name {value: "LimitPercent"}
    decimal limitPercent?;
    @jsondata:Name {value: "Earning"}
    Earning earning?;
    @jsondata:Name {value: "Position"}
    Position position?;
    @jsondata:Name {value: "LimitAmount"}
    decimal limitAmount?;
    @jsondata:Name {value: "ElectionSchedule"}
    ElectionSchedule electionSchedule?;
    @jsondata:Name {value: "ElectionStartPayGroup"}
    PayGroup electionStartPayGroup?;
    @jsondata:Name {value: "ElectionStartPayPeriodStartDate"}
    string electionStartPayPeriodStartDate?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EmployeeEarningParameters"}
    EmployeeEarningParameterCollection employeeEarningParameters?;
    @jsondata:Name {value: "ContinuePaymentOnStatutoryPay"}
    boolean continuePaymentOnStatutoryPay?;
    @jsondata:Name {value: "IsOptOut"}
    int:Signed32 isOptOut?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "EmployeeEarningLimits"}
    EmployeeEarningLimitCollection employeeEarningLimits?;
    @jsondata:Name {value: "IsBlocked"}
    boolean isBlocked?;
    @jsondata:Name {value: "Location"}
    Location location?;
};

public type SuperannuationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type Projects record {
    @jsondata:Name {value: "ProjectTypeXRefCode"}
    string projectTypeXRefCode?;
    @jsondata:Name {value: "ProjectPriority"}
    int:Signed32 projectPriority?;
    @jsondata:Name {value: "ProjectPhaseXRefCode"}
    string projectPhaseXRefCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "BudgetAmount"}
    decimal budgetAmount?;
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "AccountNum"}
    string accountNum?;
    @jsondata:Name {value: "CertifiedPayrollProjectNumber"}
    string certifiedPayrollProjectNumber?;
    @jsondata:Name {value: "ProductModuleXRefCode"}
    string productModuleXRefCode?;
    @jsondata:Name {value: "PctComplete"}
    decimal pctComplete?;
    @jsondata:Name {value: "CreationOrgUnitXRefCodes"}
    string[] creationOrgUnitXRefCodes?;
    @jsondata:Name {value: "Deleted"}
    boolean deleted?;
    @jsondata:Name {value: "DueDate"}
    string dueDate?;
    @jsondata:Name {value: "IFRSClassification"}
    boolean iFRSClassification?;
    @jsondata:Name {value: "EmployeeXRefCodes"}
    ProjectAssignmentType employeeXRefCodes?;
    @jsondata:Name {value: "ParentProjectXRefCode"}
    string parentProjectXRefCode?;
    @jsondata:Name {value: "BudgetHours"}
    decimal budgetHours?;
    @jsondata:Name {value: "TaxLocationAddressXRefCode"}
    string taxLocationAddressXRefCode?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "ChildProjectXRefCodes"}
    string[] childProjectXRefCodes?;
    @jsondata:Name {value: "DepartmentXRefCodes"}
    ProjectAssignmentType departmentXRefCodes?;
    @jsondata:Name {value: "CompletedDate"}
    string completedDate?;
    @jsondata:Name {value: "IsResidentAddressUsedForTaxation"}
    boolean isResidentAddressUsedForTaxation?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "ProductGroupXRefCode"}
    string productGroupXRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DeptJobXRefCodes"}
    ProjectAssignmentType deptJobXRefCodes?;
    @jsondata:Name {value: "PayCodeXRefCodeChargeToHours"}
    ProjectAssignmentType payCodeXRefCodeChargeToHours?;
    @jsondata:Name {value: "ProjectClientXRefCode"}
    string projectClientXRefCode?;
    @jsondata:Name {value: "PayCodeXRefCodeChargeToAmount"}
    ProjectAssignmentType payCodeXRefCodeChargeToAmount?;
    @jsondata:Name {value: "IsCOEProject"}
    boolean isCOEProject?;
};

public type EmployeeTrainingProgram record {
    @jsondata:Name {value: "EnrollmentDate"}
    string enrollmentDate?;
    @jsondata:Name {value: "TrainingProgram"}
    TrainingProgram trainingProgram?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type CandidatePersonalIdentifiableInformation record {
    @jsondata:Name {value: "DateOfBirth"}
    string dateOfBirth?;
    @jsondata:Name {value: "SocialSecurityNumber"}
    string socialSecurityNumber?;
    @jsondata:Name {value: "DriverLicense"}
    string driverLicense?;
    @jsondata:Name {value: "SocialInsuranceNumber"}
    string socialInsuranceNumber?;
};

# Represents the Queries record for the operation: EmployeeDEUTax_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeDEUTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type BaseProject record {
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "ParentProjectXRefCode"}
    string parentProjectXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "DueDate"}
    string dueDate?;
};

public type EmploymentAgreementTaxRegime record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadPayType record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PayType data?;
};

public type DisabilityGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "DisabilityGroupId"}
    int:Signed32 disabilityGroupId?;
};

# Represents the Queries record for the operation: BackgroundScreening_PatchStatus_By_backgroundScreeningStatus_isValidateOnly_clientNamespace
public type BackgroundScreeningPatchStatusByBackgroundScreeningStatusIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeSchedule record {
    @jsondata:Name {value: "EmployeeScheduleXRefCode"}
    string employeeScheduleXRefCode?;
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "SiteOrgUnitXRefCode"}
    string siteOrgUnitXRefCode?;
    @jsondata:Name {value: "PayAdjCodeXRefCode"}
    string payAdjCodeXRefCode?;
    @jsondata:Name {value: "Activities"}
    Activity[] activities?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "Breaks"}
    Breaks[] breaks?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "Segments"}
    Segment[] segments?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "IsPostedShiftBid"}
    boolean isPostedShiftBid?;
    @jsondata:Name {value: "OrgLocationTypeXRefCode"}
    string orgLocationTypeXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "Skills"}
    Skills[] skills?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    LaborMetric[] laborMetrics?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "Published"}
    boolean published?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
};

public type EmployeeMaritalStatus record {
    @jsondata:Name {value: "MaritalStatus"}
    MaritalStatus maritalStatus?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeRawPunch record {
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "PunchType"}
    string punchType?;
    @jsondata:Name {value: "RawPunchXRefCode"}
    string rawPunchXRefCode?;
    @jsondata:Name {value: "EmployeeBadge"}
    string employeeBadge?;
    @jsondata:Name {value: "SupervisorBadge"}
    string supervisorBadge?;
    @jsondata:Name {value: "IsDuplicate"}
    boolean isDuplicate?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "PunchState"}
    string punchState?;
    @jsondata:Name {value: "PunchOrigin"}
    string punchOrigin?;
    @jsondata:Name {value: "Latitude"}
    decimal latitude?;
    @jsondata:Name {value: "ExtraData"}
    PunchExtraData extraData?;
    @jsondata:Name {value: "Longitude"}
    decimal longitude?;
    @jsondata:Name {value: "RawPunchTime"}
    string rawPunchTime?;
    @jsondata:Name {value: "PunchXRefCode"}
    string punchXRefCode?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "Accuracy"}
    int:Signed32 accuracy?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "PunchDevice"}
    string punchDevice?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
    @jsondata:Name {value: "RejectedReason"}
    string rejectedReason?;
    @jsondata:Name {value: "IPAddress"}
    string iPAddress?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "WasOfflinePunch"}
    boolean wasOfflinePunch?;
};

# Represents the Queries record for the operation: EmployeeCANFederalTax_Post_By_employeeCANFederalTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCANFederalTaxPostByEmployeeCANFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: Documents_Get_By_employeeXRefCode_lastModifiedTimestampStart_lastModifiedTimestampEnd_entity_entityTypeXRefCode_documentTypeXRefCode_clientNamespace
public type DocumentsGetByEmployeeXRefCodeLastModifiedTimestampStartLastModifiedTimestampEndEntityEntityTypeXRefCodeDocumentTypeXRefCodeClientNamespaceQueries record {
    # Filter for documents associated with this specified Document Type
    string documentTypeXRefCode?;
    # Filter for documents associated with this specified Entity Type. The current Entity Types supported for filtering are: "BENEFIT_PLAN", "BENEFIT_PLAN_OPTION", "HR_POLICY", "PAY_RUN", "PAY_GROUP_CALENDAR", "EMPLOYEE_FILE". The entity and entityTypeXRefCode must both be provided to apply this filter criteria
    string entityTypeXRefCode?;
    # Filter for documents starting from this date time value. The lastModifiedTimestampStart and lastModifiedTimestampEnd criteria require additional criteria to be specified
    string lastModifiedTimestampStart?;
    # Filter for documents attached to the uniquely identified employee specified. Partial search is not supported, so provide the full value. Otherwise, a 400 error will be returned
    string employeeXRefCode?;
    # Filter for documents until this date time value. The lastModifiedTimestampStart and lastModifiedTimestampEnd criteria require additional criteria to be specified
    string lastModifiedTimestampEnd?;
    # Filter documents attached to this specified entity. The entity and entityTypeXRefCode must both be provided to apply this filter criteria
    string entity?;
};

# Represents the Queries record for the operation: EmployeePerformanceRating_Patch_By_employeePerformanceRating_xRefCode_isValidateOnly_clientNamespace
public type EmployeePerformanceRatingPatchByEmployeePerformanceRatingXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type LegacyLaborMetricCodes record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "LegacyLaborMetricType"}
    string legacyLaborMetricType?;
    @jsondata:Name {value: "LegacyLaborMetricXRefCode"}
    string legacyLaborMetricXRefCode?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type AuthorityType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BusinessUnitParentAssignment record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "BusinessUnitGlobalId"}
    string businessUnitGlobalId?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: BackgroundJobLog_Get_By_pageSize_codeName_status_hasItemLevelErrors_queueTimeUtcStart_queueTimeUtcEnd_wasScheduled_submittedBy_filterUpdateTimeUtcStart_filterUpdateTimeUtcEnd_includeSuppressedTaskTypes_clientNamespace
public type BackgroundJobLogGetByPageSizeCodeNameStatusHasItemLevelErrorsQueueTimeUtcStartQueueTimeUtcEndWasScheduledSubmittedByFilterUpdateTimeUtcStartFilterUpdateTimeUtcEndIncludeSuppressedTaskTypesClientNamespaceQueries record {
    # Use to search for background job logs that were manually submitted by a specified user. If omitted, all job submitters including the System are included
    string submittedBy?;
    # Used to specify whether commonly suppressed background jobs should be included in the filtered results.  Accepted values: True, False.  Defaults to False
    boolean includeSuppressedTaskTypes?;
    # The beginning date/time used when searching for logs that were queued in a specified time frame. When a value is provided for this parameter, a queueTimeUtcEnd value must also be provided.  Example: 2017-01-01T13:24:56
    string queueTimeUtcStart?;
    # Use to search for background job logs that were scheduled or ran on-demand. If omitted, logs for both scheduled and on-demand background jobs are included.  Accepted values: True, False
    boolean wasScheduled?;
    # The ending date/time used when searching for logs that were queued in a specified time frame. When a value is provided for this parameter, a queueTimeUtcStart value must also be provided.  Example: 2017-01-01T13:24:56
    string queueTimeUtcEnd?;
    # Use to search for background job logs using a comma separated list of code names. If omitted, all job code names are included
    string codeName?;
    # The beginning date/time used when searching for background job logs with updates in a specified time frame. When a value is provided for this parameter, a filterUpdateTimeUtcEnd value must also be provided.  Example: 2017-01-01T13:24:56
    string filterUpdateTimeUtcStart?;
    # Use to specify the number of records returned per page in the paginated response. This value will be constrained to be between 1 and 10,000 (default is 1,000)
    int:Signed32 pageSize?;
    # Use to search for background job logs with item-level errors. If omitted, both logs with and without item level errors are included. Accepted values: True, False
    boolean hasItemLevelErrors?;
    # The ending date/time used when searching for background job logs with updates in a specified time frame. When a value is provided for this parameter, a filterUpdateTimeUtcStart value must also be provided.  Example: 2017-01-01T13:24:56
    string filterUpdateTimeUtcEnd?;
    # Use to search for background job logs by job status. If omitted, all job statuses are included. Accepted values: Queued, In Progress, Paused, Completed, Cancelled, Error
    string status?;
};

# Represents the Queries record for the operation: EmployeeAUSSuperannuation_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeAUSSuperannuationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeAvailabilityPostAPIRequestDTO record {
    @jsondata:Name {value: "IsDefault"}
    boolean isDefault;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd;
    @jsondata:Name {value: "Weeks"}
    EmployeeAvailabilityWeeksPostRequestDTO[] weeks;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart;
    @jsondata:Name {value: "ManagerComments"}
    string managerComments?;
};

# Represents the Queries record for the operation: Documents_Import_By_documents_isValidateOnly_clientNamespace
public type DocumentsImportByDocumentsIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EarningParameter record {
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ParameterAccessType"}
    ParameterAccessType parameterAccessType?;
};

# Represents the Queries record for the operation: EmployeeAssignedSexAndGenderIdentity_Patch_By_employeeAssignedSexAndGenderIdentity_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAssignedSexAndGenderIdentityPatchByEmployeeAssignedSexAndGenderIdentityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeScheduleMBPostAPIRequestDTO record {
    @jsondata:Name {value: "Type"}
    1|2 type;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd;
    @jsondata:Name {value: "TimeStart"}
    string timeStart;
};

# This class provides information about a report
public type ReportMetadata record {
    # An array of ReportColumnMetadata objects
    @jsondata:Name {value: "ColumnMetadata"}
    ReportColumnMetadata[] columnMetadata?;
    # Description of the Report.
    # The description will be localized, based on the Session Culture
    @jsondata:Name {value: "Description"}
    string description?;
    # Collection of report parameters defined by the report
    @jsondata:Name {value: "Parameters"}
    ReportParameterMetadata[] parameters?;
    # Reference Code for the Report.
    # This is a unique, human readable, code used to identify the Report
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    # Maximum number of rows the Report will return as part of it's ResultSet.
    # If the MaxRows is assigned -1, it will execute to include all possible rows in it's ResultSet
    @jsondata:Name {value: "MaxRows"}
    int:Signed32 maxRows?;
    # Name of the Report.
    # The name will be localized, based on the Session Culture
    @jsondata:Name {value: "Name"}
    string name?;
};

public type PayloadIEnumerableEmployeeOnboardingPolicy record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeOnboardingPolicy[] data?;
};

public type EmployeeUnionCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUnionMembership[] items?;
};

public type PayClassGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type Address record {
    @jsondata:Name {value: "Address6"}
    string address6?;
    @jsondata:Name {value: "Address4"}
    string address4?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "Address5"}
    string address5?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "Address3"}
    string address3?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "Address1"}
    string address1?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableAuthorizationAssignment record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    AuthorizationAssignment[] data?;
};

public type PayloadIEnumerableTaxAuthorityInstanceDetails record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    TaxAuthorityInstanceDetails[] data?;
};

public type Deduction record {
    @jsondata:Name {value: "DeductionCode"}
    DeductionCode deductionCode?;
    @jsondata:Name {value: "CreditJournalNumber"}
    string creditJournalNumber?;
    @jsondata:Name {value: "CalculationType"}
    CalculationType calculationType?;
    @jsondata:Name {value: "IsDecliningBalance"}
    boolean isDecliningBalance?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "DebitJournalNumber"}
    string debitJournalNumber?;
    @jsondata:Name {value: "DeductionType"}
    DeductionType deductionType?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeUSFederalTaxCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUSFederalTax[] items?;
};

public type EmployeeCANEmploymentInsuranceRate record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntity"}
    LegalEntity legalEntity?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "RateGroup"}
    string rateGroup?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type AnalyticsReportDataset record {
    @jsondata:Name {value: "Dataset"}
    record {} dataset?;
};

public type CandidateApplicationStatusModel record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "StatusName"}
    string statusName?;
    @jsondata:Name {value: "StatusGroupName"}
    string statusGroupName?;
};

public type EmployeeDEUTaxSocialInsuranceCollection record {
    @jsondata:Name {value: "Items"}
    DEUTaxSocialInsurance[] items?;
};

public type PayloadEmploymentStatusReason record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmploymentStatusReason data?;
};

public type EmployeeEarningsCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEarning[] items?;
};

public type EmployeeHRIncidentNote record {
    @jsondata:Name {value: "DateAdded"}
    string dateAdded?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Notes"}
    string notes?;
};

public type EmployeeVolunteerList record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "VolunteerList"}
    VolunteerList volunteerList?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type TaxProperty record {
    @jsondata:Name {value: "PropertyValue"}
    string propertyValue?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PropertyCodeName"}
    string propertyCodeName?;
};

# Represents the Queries record for the operation: Employees_Post_By_employee_isValidateOnly_clientNamespace
public type EmployeesPostByEmployeeIsValidateOnlyClientNamespaceQueries record {
    # If true, then the POST data is validated without being submitted
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeAuthorizationAssignment_Patch_By_employeeAuthorityTypeAssignment_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAuthorizationAssignmentPatchByEmployeeAuthorityTypeAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type LegacyLaborMetricPatchPostDeleteResponse record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
};

public type OrgUnitParentCollection record {
    @jsondata:Name {value: "Items"}
    OrgUnitParent[] items?;
};

public type Position record {
    @jsondata:Name {value: "PositionTerm"}
    PositionTerm positionTerm?;
    @jsondata:Name {value: "SemiMonthlyBottomHours"}
    decimal semiMonthlyBottomHours?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "AverageDailyHours"}
    decimal averageDailyHours?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Department"}
    Department department?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "StandardCostRate"}
    decimal standardCostRate?;
    @jsondata:Name {value: "DefaultTargetBonus"}
    decimal defaultTargetBonus?;
    @jsondata:Name {value: "Job"}
    Job job?;
    @jsondata:Name {value: "SemiMonthlyTopHours"}
    decimal semiMonthlyTopHours?;
    @jsondata:Name {value: "IsWCBExempt"}
    boolean isWCBExempt?;
    @jsondata:Name {value: "Executive"}
    boolean executive?;
    @jsondata:Name {value: "PayGroup"}
    PayGroup payGroup?;
    @jsondata:Name {value: "PayClass"}
    PayClass payClass?;
    @jsondata:Name {value: "PositionAssignments"}
    PositionAssignmentCollection positionAssignments?;
    @jsondata:Name {value: "EmploymentIndicator"}
    EmploymentIndicator employmentIndicator?;
    @jsondata:Name {value: "PayType"}
    PayType payType?;
    @jsondata:Name {value: "PPACAFullTime"}
    boolean pPACAFullTime?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "FTE"}
    decimal fTE?;
    @jsondata:Name {value: "WeeklyHours"}
    decimal weeklyHours?;
    @jsondata:Name {value: "IsNonService"}
    boolean isNonService?;
    @jsondata:Name {value: "Officer"}
    boolean officer?;
};

public type EmployeeUSStateTaxCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUSStateTax[] items?;
};

# Represents the Queries record for the operation: LaborCosts_GetLaborCostEstimate_By_businessDate_locationXRefCode_workedLocationXRefCode_payCategoryXRefCode_clientNamespace
public type LaborCostsGetLaborCostEstimateByBusinessDateLocationXRefCodeWorkedLocationXRefCodePayCategoryXRefCodeClientNamespaceQueries record {
    string businessDate;
    string[] payCategoryXRefCode?;
    string locationXRefCode;
    string workedLocationXRefCode?;
};

public type EmployeeDependentsBeneficiariesContactCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDependentsBeneficiariesContact[] items?;
};

# Represents the Queries record for the operation: AnalyticsReports_CreateReportAsync_By_reqBody_reportId_isValidateOnly_clientNamespace
public type AnalyticsReportsCreateReportAsyncByReqBodyReportIdIsValidateOnlyClientNamespaceQueries record {
    # This parameter is applied here for testing purposes. Please remember to remove it when utilizing this endpoint to actually post the report
    boolean isValidateOnly?;
};

public type CandidateApplicationStatusUpdatesModel record {
    @jsondata:Name {value: "Identifier"}
    string identifier?;
    @jsondata:Name {value: "ApplicationStatuses"}
    CandidateApplicationStatusModel[] applicationStatuses?;
};

public type KpiData record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "AxisXRefCode"}
    string axisXRefCode?;
    @jsondata:Name {value: "Forma"}
    string forma?;
    @jsondata:Name {value: "Minute"}
    string minute?;
    @jsondata:Name {value: "AdjustedValue"}
    decimal adjustedValue?;
    @jsondata:Name {value: "Forecast"}
    string forecast?;
    @jsondata:Name {value: "Value"}
    decimal value?;
    @jsondata:Name {value: "KpiXRefCode"}
    string kpiXRefCode?;
    @jsondata:Name {value: "Day"}
    string day?;
    @jsondata:Name {value: "Week"}
    string week?;
    @jsondata:Name {value: "AggregateToDay"}
    boolean aggregateToDay?;
    @jsondata:Name {value: "MdseXRefCode"}
    string mdseXRefCode?;
};

# Represents the Queries record for the operation: KpiTargetPattern_Post_By_orgUnitXRefCode_kpiXRefCode_kpiTargetPatternApiModel_isValidateOnly_clientNamespace
public type KpiTargetPatternPostByOrgUnitXRefCodeKpiXRefCodeKpiTargetPatternApiModelIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, the POST operation validates the
    #                 request without creating records in the database. The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
    # KPI reference code
    string kpiXRefCode;
    # Org unit reference code
    string orgUnitXRefCode;
};

public type CandidateRTWDocumentSource record {
    @jsondata:Name {value: "SingleDocumentBase64"}
    string singleDocumentBase64?;
    @jsondata:Name {value: "DocumentBackBase64"}
    string documentBackBase64?;
    @jsondata:Name {value: "DocumentFrontBase64"}
    string documentFrontBase64?;
};

public type BenefitsDFLinkExportDependentRecord record {
    @jsondata:Name {value: "EmployeeNationalId"}
    string employeeNationalId?;
    @jsondata:Name {value: "DependentHandicapIndicator"}
    boolean dependentHandicapIndicator?;
    @jsondata:Name {value: "MedicareReasonCode"}
    int:Signed32 medicareReasonCode?;
    @jsondata:Name {value: "NationalIDExpiryDate"}
    string nationalIDExpiryDate?;
    @jsondata:Name {value: "UniqueDependentId"}
    int:Signed32 uniqueDependentId?;
    @jsondata:Name {value: "StudentIndicator"}
    boolean studentIndicator?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "ContactDetails"}
    BenefitsDFLinkExportContact[] contactDetails?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "RelationshipCode"}
    string relationshipCode?;
    @jsondata:Name {value: "Height"}
    int:Signed32 height?;
    @jsondata:Name {value: "MedicareStatusCode"}
    int:Signed32 medicareStatusCode?;
    @jsondata:Name {value: "DateOfBirth"}
    string dateOfBirth?;
    @jsondata:Name {value: "GenderCode"}
    int:Signed32 genderCode?;
    @jsondata:Name {value: "InitialNoticeFlag"}
    boolean initialNoticeFlag?;
    @jsondata:Name {value: "DependentElectionDetails"}
    BenefitsDFLinkExportDependentElectionDetail[] dependentElectionDetails?;
    @jsondata:Name {value: "EligibilityBeginDate"}
    string eligibilityBeginDate?;
    @jsondata:Name {value: "SocialSecurityDisabilityAwardDate"}
    string socialSecurityDisabilityAwardDate?;
    @jsondata:Name {value: "AddressDetails"}
    BenefitsDFLinkExportAddress[] addressDetails?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "NationalId"}
    string nationalId?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "DateLastSmoked"}
    string dateLastSmoked?;
    @jsondata:Name {value: "DeathDate"}
    string deathDate?;
    @jsondata:Name {value: "Weight"}
    int:Signed32 weight?;
    @jsondata:Name {value: "TobaccoSubstanceUse"}
    boolean tobaccoSubstanceUse?;
    @jsondata:Name {value: "EligibilityEndDate"}
    string eligibilityEndDate?;
    @jsondata:Name {value: "DependentAge"}
    int:Signed32 dependentAge?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
};

# Represents the Queries record for the operation: I9Orders_Patch_By_i9Order_i9OrderId_isValidateOnly_clientNamespace
public type I9OrdersPatchByI9OrderI9OrderIdIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type HRPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PunchPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableDepartment record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Department[] data?;
};

# Represents the Queries record for the operation: EmployeeGlobalPropertyValue_Patch_By_employeeGlobalPropertyValue_xRefCode_isValidateOnly_clientNamespace
public type EmployeeGlobalPropertyValuePatchByEmployeeGlobalPropertyValueXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: PlanTargets_Delete_By_planTargetXRefCode_clientNamespace
public type PlanTargetsDeleteByPlanTargetXRefCodeClientNamespaceQueries record {
    string planTargetXRefCode;
};

# Represents the Queries record for the operation: EmployeeWorkAssigmentManager_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeWorkAssigmentManagerGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PayloadIEnumerableEmployeePayGradeRate record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePayGradeRate[] data?;
};

public type EmployeeAUSSuperannuationCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeAUSSuperannuation[] items?;
};

# Represents the Queries record for the operation: EmergencyContact_Patch_By_emergencyContact_xRefCode_isValidateOnly_clientNamespace
public type EmergencyContactPatchByEmergencyContactXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PaginatedPayloadIEnumerableDataEntry record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    DataEntry[] data?;
};

public type DocumentImportQueueRequest record {
    @jsondata:Name {value: "EntityTypeXRefCode"}
    string entityTypeXRefCode?;
    @jsondata:Name {value: "AdditionalData"}
    string additionalData?;
    @jsondata:Name {value: "Entity"}
    string entity?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "FileName"}
    string fileName?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "Link"}
    string link?;
    @jsondata:Name {value: "DocumentTypeXRefCode"}
    string documentTypeXRefCode?;
    @jsondata:Name {value: "Tags"}
    string[] tags?;
};

public type EmployeeWorkPattern record {
    @jsondata:Name {value: "OrgLocationType"}
    OrgLocationType orgLocationType?;
    @jsondata:Name {value: "ShiftTimeBegin"}
    string shiftTimeBegin?;
    @jsondata:Name {value: "Deparment"}
    Department deparment?;
    @jsondata:Name {value: "WorkPatternDayIndex"}
    int:Signed32 workPatternDayIndex?;
    @jsondata:Name {value: "ShiftTimeEnd"}
    string shiftTimeEnd?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "Job"}
    Job job?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ShiftType"}
    WorkPatternShiftType shiftType?;
    @jsondata:Name {value: "Location"}
    Location location?;
};

# Represents the Queries record for the operation: LegacyLaborMetric_Patch_By_legacyLaborMetricData_legacyLaborMetricXRefCode_isValidateOnly_clientNamespace
public type LegacyLaborMetricPatchByLegacyLaborMetricDataLegacyLaborMetricXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # XRefCode
    string legacyLaborMetricXRefCode;
    # When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeIRLTaxPAYEExclusion_Patch_By_employeeIRLTaxPAYEExclusion_xRefCode_isValidateOnly_clientNamespace
public type EmployeeIRLTaxPAYEExclusionPatchByEmployeeIRLTaxPAYEExclusionXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PaginatedPayloadIEnumerableSkill record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    Skill[] data?;
};

# Represents the Queries record for the operation: WorkContract_Post_By_employeeWorkContract_xRefCode_isValidateOnly_clientNamespace
public type WorkContractPostByEmployeeWorkContractXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeTimeAwayFromWork record {
    @jsondata:Name {value: "HalfDay"}
    boolean halfDay?;
    @jsondata:Name {value: "DailyElapsedHours"}
    decimal dailyElapsedHours?;
    @jsondata:Name {value: "TAFWXRefCode"}
    string tAFWXRefCode?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "ReasonName"}
    string reasonName?;
    @jsondata:Name {value: "AllDay"}
    boolean allDay?;
    @jsondata:Name {value: "NetUnitsType"}
    int:Signed32 netUnitsType?;
    @jsondata:Name {value: "NetUnits"}
    decimal netUnits?;
    @jsondata:Name {value: "ManagerComment"}
    string managerComment?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "EmployeeComment"}
    string employeeComment?;
    @jsondata:Name {value: "DateOfRequest"}
    string dateOfRequest?;
};

public type EmployeeSchedulePatchAPIRequestDTO record {
    @jsondata:Name {value: "EmployeeScheduleXRefCode"}
    string employeeScheduleXRefCode;
    @jsondata:Name {value: "Activities"}
    EmployeeScheduleActivityPostAPIRequestDTO[] activities?;
    @jsondata:Name {value: "PayAdjCodeXRefCode"}
    string payAdjCodeXRefCode?;
    @jsondata:Name {value: "Breaks"}
    EmployeeScheduleMBPostAPIRequestDTO[] breaks?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "Segments"}
    EmployeeScheduleSegmentAPIRequestDTO[] segments?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "PostShiftBid"}
    boolean postShiftBid?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "OrgLocationTypeXRefCode"}
    string orgLocationTypeXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    EmployeeScheduleLaborMetricPostAPIRequestDTO[] laborMetrics?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
};

public type GlobalPropertyOption record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeConfidentialIdentificationCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeConfidentialIdentification[] items?;
};

public type EmployeeWorkAssignmentManager record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "TerminationDate"}
    string terminationDate?;
    @jsondata:Name {value: "ManagerName"}
    string managerName?;
    @jsondata:Name {value: "EmploymentStatusGroupXRefCode"}
    string employmentStatusGroupXRefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ActiveEmployeeLocation"}
    Location activeEmployeeLocation?;
    @jsondata:Name {value: "ActiveEmployeePosition"}
    Position activeEmployeePosition?;
    @jsondata:Name {value: "ManagerXRefCode"}
    string managerXRefCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeUKIrregularPaymentDetails record {
    @jsondata:Name {value: "IrregularPayments"}
    boolean irregularPayments?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeMaritalStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeMaritalStatus[] data?;
};

# Represents the Queries record for the operation: EmployeeUnion_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeUnionGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type DEUTaxSocialInsurance record {
    @jsondata:Name {value: "CalculationBasisXrefCode"}
    string calculationBasisXrefCode?;
    @jsondata:Name {value: "LevyXrefCode"}
    string levyXrefCode?;
    @jsondata:Name {value: "HealthInsuranceXrefCode"}
    string healthInsuranceXrefCode?;
    @jsondata:Name {value: "NumberOfEntitledChildren"}
    string numberOfEntitledChildren?;
    @jsondata:Name {value: "MainEmploymentWithMultipleMiniJobs"}
    boolean mainEmploymentWithMultipleMiniJobs?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "IsMidijob"}
    boolean isMidijob?;
    @jsondata:Name {value: "LevyHealthInsuranceProviderXrefCode"}
    string levyHealthInsuranceProviderXrefCode?;
    @jsondata:Name {value: "PensionInsuranceXrefCode"}
    string pensionInsuranceXrefCode?;
    @jsondata:Name {value: "EmployeeGroupXrefCode"}
    string employeeGroupXrefCode?;
    @jsondata:Name {value: "CareInsuranceXrefCode"}
    string careInsuranceXrefCode?;
    @jsondata:Name {value: "IsParentLegalGuardian"}
    boolean isParentLegalGuardian?;
    @jsondata:Name {value: "IsSeasonalEmployee"}
    boolean isSeasonalEmployee?;
    @jsondata:Name {value: "RelationToEmployerXrefCode"}
    string relationToEmployerXrefCode?;
    @jsondata:Name {value: "HighestSchoolEducationXrefCode"}
    string highestSchoolEducationXrefCode?;
    @jsondata:Name {value: "EmployeePrivateHealthInsurance"}
    EmployeePrivateHealthInsurance employeePrivateHealthInsurance?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EmployeeOccupationalPension"}
    EmployeeOccupationalPension employeeOccupationalPension?;
    @jsondata:Name {value: "PublicHealthInsuranceXrefCode"}
    string publicHealthInsuranceXrefCode?;
    @jsondata:Name {value: "IsContractor"}
    boolean isContractor?;
    @jsondata:Name {value: "MainlySelfEmployed"}
    boolean mainlySelfEmployed?;
    @jsondata:Name {value: "UnemploymentInsuranceXrefCode"}
    string unemploymentInsuranceXrefCode?;
    @jsondata:Name {value: "HighestProfessionalEducationXrefCode"}
    string highestProfessionalEducationXrefCode?;
    @jsondata:Name {value: "ContractTypeXrefCode"}
    string contractTypeXrefCode?;
    @jsondata:Name {value: "EntitledToSickBenefit"}
    boolean entitledToSickBenefit?;
};

public type EmployeeGlobalPropertyValue record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "BitValue"}
    boolean bitValue?;
    @jsondata:Name {value: "DateTimeValue"}
    string dateTimeValue?;
    @jsondata:Name {value: "NumberValue"}
    decimal numberValue?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "OptionValue"}
    GlobalPropertyOption optionValue?;
    @jsondata:Name {value: "StringValue"}
    string stringValue?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "GlobalProperty"}
    GlobalProperty globalProperty?;
};

public type PayRunStatus record {
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "RejectionReasonCategory"}
    string rejectionReasonCategory?;
    @jsondata:Name {value: "RejectionReasonCategoryXRefCode"}
    string rejectionReasonCategoryXRefCode?;
    @jsondata:Name {value: "CountryName"}
    string countryName?;
    @jsondata:Name {value: "PeriodEndDate"}
    string periodEndDate?;
    @jsondata:Name {value: "PayGroupName"}
    string payGroupName?;
    @jsondata:Name {value: "PeriodStartDate"}
    string periodStartDate?;
    @jsondata:Name {value: "RejectionReason"}
    string rejectionReason?;
    @jsondata:Name {value: "PPN"}
    string pPN?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "Currency"}
    string currency?;
    @jsondata:Name {value: "PayGroupXRefCode"}
    string payGroupXRefCode?;
    @jsondata:Name {value: "RejectionReasonDescription"}
    string rejectionReasonDescription?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "RejectionReasonXRefCode"}
    string rejectionReasonXRefCode?;
};

public type EmployeeIRLTaxRPNCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeIRLTaxRPN[] items?;
};

public type DFVeteransStatus record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type AnalyticsReportMetadata record {
    # An array of AnalyticsParameterMetadata objects
    @jsondata:Name {value: "Filters"}
    AnalyticsReportFilterMetadata[] filters?;
    # Description of the Report.
    # The description will be localized, based on the Session Culture
    @jsondata:Name {value: "Description"}
    string description?;
    # Reference Code for the Report.
    # This is a unique, human readable, code used to identify the Report
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    # FeatureId of the report
    @jsondata:Name {value: "ReportId"}
    int:Signed32 reportId?;
    # An array of ReportColumnMetadata objects
    @jsondata:Name {value: "Columns"}
    AnalyticsReportColumnMetadata[] columns?;
    # Maximum number of rows the Report will return as part of it's ResultSet
    @jsondata:Name {value: "MaxRows"}
    int:Signed32 maxRows?;
    @jsondata:Name {value: "OnlyIncludeUniqueRecords"}
    boolean onlyIncludeUniqueRecords?;
    # Name of the Report.
    # The name will be localized, based on the Session Culture
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: Jobs_Patch_By_job_xRefCode_isValidateOnly_clientNamespace
public type JobsPatchByJobXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH (job update) operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeAssignedSexAndGenderIdentity_Post_By_employeeAssignedSexAndGenderIdentity_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAssignedSexAndGenderIdentityPostByEmployeeAssignedSexAndGenderIdentityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeGLSplitSetDetailUpsert record {
    @jsondata:Name {value: "LaborMetricsXRefCodes"}
    string[] laborMetricsXRefCodes?;
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "LaborPercentage"}
    int:Signed32 laborPercentage?;
};

public type PerformanceRating record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type TaxPropertyCollection record {
    @jsondata:Name {value: "Items"}
    TaxProperty[] items?;
};

public type BackgroundScreeningBillingCode record {
    @jsondata:Name {value: "ProviderReference"}
    string providerReference?;
    @jsondata:Name {value: "BillingCodes"}
    BackgroundScreeningProviderBillingCode[] billingCodes?;
};

# Represents the Queries record for the operation: EmployeeAUSFederalTax_Post_By_employeeAUSFederalTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAUSFederalTaxPostByEmployeeAUSFederalTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: DataPrivacy_PersonManagementExemptions_By_pageSize_number_personType_clientNamespace
public type DataPrivacyPersonManagementExemptionsByPageSizeNumberPersonTypeClientNamespaceQueries record {
    # Represent the Employee number
    string number?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # Can be either Employee or Candidate
    string personType?;
};

# Represents the Queries record for the operation: BackgroundScreening_PostPackage_By_backgroundScreeningPackage_isValidateOnly_clientNamespace
public type BackgroundScreeningPostPackageByBackgroundScreeningPackageIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeePayAdjustmentForSubmit record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "Hours"}
    decimal hours?;
    @jsondata:Name {value: "IsPremium"}
    boolean isPremium?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "Rate"}
    decimal rate?;
    @jsondata:Name {value: "EmployeeAuthorized"}
    boolean employeeAuthorized?;
    @jsondata:Name {value: "Amount"}
    decimal amount?;
    @jsondata:Name {value: "AdjustPeriodEndDate"}
    string adjustPeriodEndDate?;
    @jsondata:Name {value: "PayAdjustmentCodeXRefCode"}
    string payAdjustmentCodeXRefCode?;
    @jsondata:Name {value: "AdjustPeriodStartDate"}
    string adjustPeriodStartDate?;
    @jsondata:Name {value: "EmployeePayAdjustXRefCode"}
    string employeePayAdjustXRefCode?;
    @jsondata:Name {value: "PayAdjustmentDate"}
    string payAdjustmentDate?;
    @jsondata:Name {value: "PayCategoryXRefCode"}
    string payCategoryXRefCode?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    EmployeePayAdjustmentLaborMetrics[] laborMetrics?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "ManagerComment"}
    string managerComment?;
    @jsondata:Name {value: "ManagerAuthorized"}
    boolean managerAuthorized?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "ReferenceDate"}
    string referenceDate?;
    @jsondata:Name {value: "EmployeeComment"}
    string employeeComment?;
};

public type PayrollEmployeeDeductionLimit record {
    @jsondata:Name {value: "LimitPercent"}
    decimal limitPercent?;
    @jsondata:Name {value: "LimitAmount"}
    decimal limitAmount?;
    @jsondata:Name {value: "LimitTypeCodeName"}
    string limitTypeCodeName?;
    @jsondata:Name {value: "ShortNameFormattedPercent"}
    string shortNameFormattedPercent?;
    @jsondata:Name {value: "PayGroupDefaultLimitPercent"}
    decimal payGroupDefaultLimitPercent?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayGroupDefaultLimitAmount"}
    decimal payGroupDefaultLimitAmount?;
    @jsondata:Name {value: "PRDeductionLimitXRefCode"}
    string pRDeductionLimitXRefCode?;
    @jsondata:Name {value: "ShortNameFormattedAmount"}
    string shortNameFormattedAmount?;
};

public type PayloadEmploymentStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmploymentStatus data?;
};

public type PayloadIEnumerableEmployeeDocumentManagementSecurityGroup record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeDocumentManagementSecurityGroup[] data?;
};

public type EmployeeDeductionPayeeParameter record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "EmployeeElectedValue"}
    string employeeElectedValue?;
    @jsondata:Name {value: "Comments"}
    string comments?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "PayeeDefaultValue"}
    string payeeDefaultValue?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmploymentAgreementDetails record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableProcessResult record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    ProcessResult[] data?;
};

# Represents the Queries record for the operation: CandidateSourcing_Get_By_jobPostingId_cultureId_clientNamespace
public type CandidateSourcingGetByJobPostingIdCultureIdClientNamespaceQueries record {
    # The culture id to determine the language screening questions
    int:Signed32 cultureId;
    # The job posting id
    int:Signed32 jobPostingId;
};

public type EmployeeIRLTaxPAYEExclusion record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntity"}
    LegalEntity legalEntity?;
    @jsondata:Name {value: "ExclusionOrder"}
    boolean exclusionOrder?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: LaborValidationPolicy_UpdateLaborValidationPolicy_By_laborValidationRule_laborValidationPolicyRuleXRefCode_isValidateOnly_clientNamespace
public type LaborValidationPolicyUpdateLaborValidationPolicyByLaborValidationRuleLaborValidationPolicyRuleXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
};

public type LMSEnrollmentStatus record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeePayAdjustCodeGroup_Patch_By_employeePayAdjCodeGroupList_xRefCode_isValidateOnly_clientNamespace
public type EmployeePayAdjustCodeGroupPatchByEmployeePayAdjCodeGroupListXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: GlobalPayRun_Post_By_isValidateOnly_clientNamespace
public type GlobalPayRunPostByIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: PersonContact_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type PersonContactGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeAUSFederalTaxCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeAUSFederalTax[] items?;
};

# Represents the Queries record for the operation: EmployeeConfidentialIdentification_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeConfidentialIdentificationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type CourseProvider record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayeeStateCoverage record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "StateName"}
    string stateName?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
};

# Represents the Queries record for the operation: EmployeeUSTaxStatus_Post_By_employeeUSTaxStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUSTaxStatusPostByEmployeeUSTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableJob record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Job[] data?;
};

# Represents the Queries record for the operation: EmployeeDisability_Patch_By_employeeDisability_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDisabilityPatchByEmployeeDisabilityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadEmployeeTimeAwayFromWorkForSubmit record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeTimeAwayFromWorkForSubmit data?;
};

# Represents the Queries record for the operation: TrainingProgram_Get_By_pageSize_xRefCode_clientNamespace
public type TrainingProgramGetByPageSizeXRefCodeClientNamespaceQueries record {
    # The page size for the pagination (Default is 1000)
    int:Signed32 pageSize?;
    # The xrefcode filter for the Training Program
    string xRefCode?;
};

public type AssignedSexCountryAware record {
    @jsondata:Name {value: "UserDefinedComplianceCode"}
    string userDefinedComplianceCode?;
    @jsondata:Name {value: "AssignedSexComplianceCode"}
    AssignedSexComplianceCode assignedSexComplianceCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type DEUEmployeeAccidentInsuranceCollection record {
    @jsondata:Name {value: "Items"}
    DEUEmployeeAccidentInsurance[] items?;
};

public type SuperannuationContributionCalculationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeBalanceTransactionForPatch record {
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "Delta"}
    decimal delta?;
    @jsondata:Name {value: "GrantDelta"}
    decimal grantDelta?;
    @jsondata:Name {value: "TransactionDate"}
    string transactionDate?;
};

public type PlanLaborCategoryCode record {
    @jsondata:Name {value: "CategoryCodeXRefCode"}
    string categoryCodeXRefCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
};

public type Paging record {
    @jsondata:Name {value: "Next"}
    string next?;
};

# Represents the Queries record for the operation: EmployeeCANFederalTax_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeCANFederalTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmploymentStatus record {
    @jsondata:Name {value: "EmploymentStatusGroup"}
    EmploymentStatusGroup employmentStatusGroup?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "EffectiveStartingPointOfDay"}
    string effectiveStartingPointOfDay?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "IsBenefitArrearsEnabled"}
    boolean isBenefitArrearsEnabled?;
};

public type City record {
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeWorkAssigmentManager_Replace_By_workAssignmentManager_xRefCode_replaceFrom_replaceTo_isValidateOnly_clientNamespace
public type EmployeeWorkAssigmentManagerReplaceByWorkAssignmentManagerXRefCodeReplaceFromReplaceToIsValidateOnlyClientNamespaceQueries record {
    # The date from which all EmployeeWorkAssignmentManagers will be replaced
    string replaceFrom?;
    # When a TRUE value is used in this parameter, validate the request without applying updates to the database
    boolean isValidateOnly?;
    # The date up to which all EmployeeWorkAssignmentManagers will be replaced
    string replaceTo?;
};

# Represents the Queries record for the operation: PayGroupCalendar_Get_By_payGroupXRefCode_payrollCommitted_payDateYear_payDate_periodStartDate_periodEndDate_payPeriod_clientNamespace
public type PayGroupCalendarGetByPayGroupXRefCodePayrollCommittedPayDateYearPayDatePeriodStartDatePeriodEndDatePayPeriodClientNamespaceQueries record {
    # The pay group calen xdar's pay date year
    int:Signed32 payDateYear?;
    # The pay group calendar's period start date
    string periodStartDate?;
    # The pay group calendar's pay period number
    int:Signed32 payPeriod?;
    boolean payrollCommitted?;
    # The pay group calendar's period end date
    string periodEndDate?;
    # The pay group calendar's pay date
    string payDate?;
};

# Represents the Queries record for the operation: EmployeeEmploymentAgreement_Patch_By_employeeEmploymentAgreement_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEmploymentAgreementPatchByEmployeeEmploymentAgreementXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PaginatedPayloadIEnumerableEmployeeSchedule record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeeSchedule[] data?;
};

# Represents the Queries record for the operation: EmployeeWorkLocationOverride_Get_By_workLocationOverrideXRefCodes_locationAddressStateCodes_legalEntityXRefCode_legalEntityOverrideDetails_pageSize_clientNamespace
public type EmployeeWorkLocationOverrideGetByWorkLocationOverrideXRefCodesLocationAddressStateCodesLegalEntityXRefCodeLegalEntityOverrideDetailsPageSizeClientNamespaceQueries record {
    # The comma delimited list of location address state codes
    string locationAddressStateCodes?;
    # Number of records to be loaded
    int:Signed32 pageSize?;
    # The comma delimited list of work location overrides XRef codes
    string workLocationOverrideXRefCodes?;
    # The legal entity XRef code
    string legalEntityXRefCode?;
    # Filter to fetch all or current/future effective legal entity overrides. Value can be All or Active. Default value is Active
    string legalEntityOverrideDetails?;
};

public type MaritalStatus record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PMPosition record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "PositionGlobalId"}
    string positionGlobalId?;
    @jsondata:Name {value: "Number"}
    string number?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "FTE"}
    decimal fTE?;
    @jsondata:Name {value: "BusinessUnit"}
    BusinessUnit businessUnit?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeDeductionParameterCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDeductionParameter[] items?;
};

public type EmergencyContactPersonContact record {
    @jsondata:Name {value: "ShowRejectedWarning"}
    boolean showRejectedWarning?;
    @jsondata:Name {value: "ElectronicAddress"}
    string electronicAddress?;
    @jsondata:Name {value: "IsRejected"}
    boolean isRejected?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Extension"}
    string extension?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsUnlistedNumber"}
    boolean isUnlistedNumber?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ContactNumber"}
    string contactNumber?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "IsForSystemCommunications"}
    boolean isForSystemCommunications?;
    @jsondata:Name {value: "IsVerified"}
    boolean isVerified?;
    @jsondata:Name {value: "IsPreferredContactMethod"}
    boolean isPreferredContactMethod?;
    @jsondata:Name {value: "NumberOfVerificationRequests"}
    int:Signed32 numberOfVerificationRequests?;
    @jsondata:Name {value: "ContactInformationType"}
    ContactInformationType contactInformationType?;
    @jsondata:Name {value: "FormattedNumber"}
    string formattedNumber?;
};

# Represents the Queries record for the operation: Availability_Post_By_employeeXRefCode_employeeAvailability_isValidateOnly_clientNamespace
public type AvailabilityPostByEmployeeXRefCodeEmployeeAvailabilityIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
};

public type FederalFilingStatus record {
    @jsondata:Name {value: "FederalFilingStatusCode"}
    string federalFilingStatusCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "PayrollOutput"}
    string payrollOutput?;
    @jsondata:Name {value: "CalculationCode"}
    string calculationCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type GenderIdentityCountryAware record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeEarningPayeeParameter record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "EmployeeElectedValue"}
    string employeeElectedValue?;
    @jsondata:Name {value: "Comments"}
    string comments?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "PayeeDefaultValue"}
    string payeeDefaultValue?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadCarrierFeeds record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    CarrierFeeds data?;
};

public type PayloadLaborDemand record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LaborDemand data?;
};

# Represents the Queries record for the operation: Payee_Get_By_PayeeStatus_PayeeXRefCodes_PayeeCategoryXRefCodes_PaymentMethodXRefCodes_OperatingCountries_EarningPayee_DeductionPayee_SystemPayee_clientNamespace
public type PayeeGetByPayeeStatusPayeeXRefCodesPayeeCategoryXRefCodesPaymentMethodXRefCodesOperatingCountriesEarningPayeeDeductionPayeeSystemPayeeClientNamespaceQueries record {
    # &gt;List of Payee Category Reference Codes with comma separator to filter the result
    @http:Query {name: "PayeeCategoryXRefCodes"}
    string payeeCategoryXRefCodes?;
    # &gt;Set to true to only get Deduction Payees
    @http:Query {name: "DeductionPayee"}
    boolean deductionPayee?;
    # &gt;Set to true to only get System Payees
    @http:Query {name: "SystemPayee"}
    boolean systemPayee?;
    # &gt;Set to true to only get Earning Payees
    @http:Query {name: "EarningPayee"}
    boolean earningPayee?;
    # &gt;Can be Active, InActive or All. The default value is Active
    @http:Query {name: "PayeeStatus"}
    string payeeStatus?;
    # &gt;List of Pay Method Reference Codes with comma separator to filter the result
    @http:Query {name: "PaymentMethodXRefCodes"}
    string paymentMethodXRefCodes?;
    # &gt;List of country codes with comma separator to filter the result base on country
    @http:Query {name: "OperatingCountries"}
    string operatingCountries?;
    # &gt;List of Payee Reference Codes with comma separator to filter the result
    @http:Query {name: "PayeeXRefCodes"}
    string payeeXRefCodes?;
};

public type BackgroundScreeningReportScreeningStatus record {
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "AdjudicationStatus"}
    string adjudicationStatus?;
    @jsondata:Name {value: "Result"}
    string result?;
};

public type EmployeeDefaultLaborMetricsCodeCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDefaultLaborMetricsCode[] items?;
};

public type EmployeeUKPostgraduateLoan record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PlanTarget record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "TargetValue"}
    decimal targetValue?;
    @jsondata:Name {value: "DaysOfWeek"}
    string[] daysOfWeek?;
    @jsondata:Name {value: "PlanTargetXRefCode"}
    string planTargetXRefCode?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "CreationOrgUnitXRefCode"}
    string creationOrgUnitXRefCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "KpiXRefCode"}
    string kpiXRefCode?;
    @jsondata:Name {value: "ZoneXRefCode"}
    string zoneXRefCode?;
    @jsondata:Name {value: "OrgUnitXRefCodes"}
    string[] orgUnitXRefCodes?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type EmployeeSchedulePosition record {
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "ClockCode"}
    string clockCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "JobName"}
    string jobName?;
    @jsondata:Name {value: "DepartmentName"}
    string departmentName?;
    @jsondata:Name {value: "JobRank"}
    int:Signed32 jobRank?;
    @jsondata:Name {value: "IsNonService"}
    boolean isNonService?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type PayloadIEnumerableUserPayAdjustCodeGroup record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    UserPayAdjustCodeGroup[] data?;
};

public type OrgUnitLegalEntityCollection record {
    @jsondata:Name {value: "Items"}
    OrgUnitLegalEntity[] items?;
};

public type PayloadIEnumerableDEUTaxSocialInsurance record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    DEUTaxSocialInsurance[] data?;
};

public type BenefitsDFLinkExportAddress record {
    @jsondata:Name {value: "AddressLine3"}
    string addressLine3?;
    @jsondata:Name {value: "AddressLine2"}
    string addressLine2?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "AddressLine1"}
    string addressLine1?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "AddressType"}
    string addressType?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "County"}
    string county?;
};

public type PayloadIEnumerableEmployeeWorkContract record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeWorkContract[] data?;
};

public type LaborMetric record {
    @jsondata:Name {value: "CodeXRefCode"}
    string codeXRefCode?;
    @jsondata:Name {value: "TypeXRefCode"}
    string typeXRefCode?;
};

public type EmployeeDependentsBeneficiariesCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDependentBeneficiary[] items?;
};

public type PayloadEmployeePunchPatchPostDeleteResponse record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePunchPatchPostDeleteResponse data?;
};

public type DocMgmtSecurityGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeCourseCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeCourse[] items?;
};

public type PayeePaymentMethod record {
    @jsondata:Name {value: "BankName"}
    string bankName?;
    @jsondata:Name {value: "ScheduleStartDate"}
    string scheduleStartDate?;
    @jsondata:Name {value: "ScheduleEndDate"}
    string scheduleEndDate?;
    @jsondata:Name {value: "SuppressPrintOfAdviceStatements"}
    boolean suppressPrintOfAdviceStatements?;
    @jsondata:Name {value: "PaymentMethodName"}
    string paymentMethodName?;
    @jsondata:Name {value: "BankNumber"}
    string bankNumber?;
    @jsondata:Name {value: "StatementLanguageCode"}
    string statementLanguageCode?;
    @jsondata:Name {value: "CombineEmployee"}
    boolean combineEmployee?;
    @jsondata:Name {value: "CombineEarningAndDeduction"}
    boolean combineEarningAndDeduction?;
    @jsondata:Name {value: "PayableTo"}
    string payableTo?;
    @jsondata:Name {value: "AccountTypeName"}
    string accountTypeName?;
    @jsondata:Name {value: "StatementMessage"}
    string statementMessage?;
    @jsondata:Name {value: "PaymentFrequencyName"}
    string paymentFrequencyName?;
    @jsondata:Name {value: "ShowEmployeeDetail"}
    boolean showEmployeeDetail?;
    @jsondata:Name {value: "PaymentFrequencyXRefCode"}
    string paymentFrequencyXRefCode?;
    @jsondata:Name {value: "PaymentMethodXrefCode"}
    string paymentMethodXrefCode?;
    @jsondata:Name {value: "TransitNumber"}
    string transitNumber?;
    @jsondata:Name {value: "SchedulePayDate"}
    string schedulePayDate?;
    @jsondata:Name {value: "BuildingSocietyNumber"}
    string buildingSocietyNumber?;
    @jsondata:Name {value: "AccountNumber"}
    string accountNumber?;
    @jsondata:Name {value: "AccountTypeCode"}
    string accountTypeCode?;
    @jsondata:Name {value: "PayeeReferenceNumber"}
    string payeeReferenceNumber?;
    @jsondata:Name {value: "PayeeCode"}
    string payeeCode?;
    @jsondata:Name {value: "AllowNegativeAmounts"}
    boolean allowNegativeAmounts?;
    @jsondata:Name {value: "StatementLanguageName"}
    string statementLanguageName?;
};

# Represents the Queries record for the operation: EmployeeBadge_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeBadgeGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type OperatingHoursRecurExceptionDetails record {
    @jsondata:Name {value: "RecurrenceEndDate"}
    string recurrenceEndDate?;
    @jsondata:Name {value: "RecurrencePeriod"}
    int:Signed32 recurrencePeriod?;
    @jsondata:Name {value: "RecurrenceType"}
    int:Signed32 recurrenceType?;
    @jsondata:Name {value: "RecurrenceValue"}
    string recurrenceValue?;
};

public type EarningType record {
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "IsGLAllocatedDebit"}
    boolean isGLAllocatedDebit?;
    @jsondata:Name {value: "IsGLAllocatedCredit"}
    boolean isGLAllocatedCredit?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: Employees_Patch_By_employee_xRefCode_isValidateOnly_replaceExisting_clientNamespace
public type EmployeesPatchByEmployeeXRefCodeIsValidateOnlyReplaceExistingClientNamespaceQueries record {
    # This parameter accepts a comma-separated list of employee-subordinate entities where the respective data provided will replace all existing records.
    #             
    # It applies to the following collections (which are not effective dated and thus require this special treatment):
    #             
    # <list type="bullet"><item>ClockDeviceGroups, </item><item>DirectDeposits, </item><item>EmployeePayAdjustCodeGroups, </item><item>OrgUnitLocationTypes, </item><item>SSOAccounts, </item><item>UserPayAdjustCodeGroups</item></list>
    string replaceExisting?;
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: OrgUnits_Get_By_XrefCode_contextDate_expand_includeChildOrgUnits_clientNamespace
public type OrgUnitsGetByXrefCodeContextDateExpandIncludeChildOrgUnitsClientNamespaceQueries record {
    # This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the orgunit master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document
    string expand?;
    # When a TRUE value is used in this parameter, the immediate child org units’ information under the org unit being retrieved will be returned as well.  The default value is FALSE if parameter is not specified
    boolean includeChildOrgUnits?;
    # The Context Date value is an “as-of” date used to determine which org unit data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2019-01-01T12:34:56
    string contextDate?;
};

# Represents the Queries record for the operation: KpiTargetPattern_Get_By_orgUnitXRefCode_kpiXRefCode_startDate_endDate_zoneXRefCode_clientNamespace
public type KpiTargetPatternGetByOrgUnitXRefCodeKpiXRefCodeStartDateEndDateZoneXRefCodeClientNamespaceQueries record {
    # Date to represent the end of the period for which KPI target patterns should be retrieved. Format yyyy-mm-dd
    string endDate;
    # The unique identifier of the zone
    string zoneXRefCode?;
    # The unique identifier of the KPI
    string kpiXRefCode;
    # Unique identifier of the Org
    string orgUnitXRefCode;
    # Date to represent the start of the period for which KPI target patterns should be retrieved. Format yyyy-mm-dd
    string startDate;
};

public type JobPostingApplicantModel record {
    @jsondata:Name {value: "Locale"}
    string locale?;
    @jsondata:Name {value: "CandidateSource"}
    CandidateProfileSource candidateSource?;
    @jsondata:Name {value: "Questions"}
    QuestionsInResponse questions?;
    @jsondata:Name {value: "AppliedOnMillis"}
    int appliedOnMillis?;
    @jsondata:Name {value: "Job"}
    JobPostingResponseModel job?;
    @jsondata:Name {value: "Applicant"}
    ApplicantDetails applicant?;
};

public type EmployeeWorkLocationOverride record {
    @jsondata:Name {value: "LegalEntityOverrideDetails"}
    LegalEntityOverride[] legalEntityOverrideDetails?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "LocationAddressXRefCode"}
    string locationAddressXRefCode?;
    @jsondata:Name {value: "Address"}
    string address?;
    @jsondata:Name {value: "CountryName"}
    string countryName?;
    @jsondata:Name {value: "StateName"}
    string stateName?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "CityName"}
    string cityName?;
    @jsondata:Name {value: "County"}
    string county?;
    @jsondata:Name {value: "LocationName"}
    string locationName?;
    @jsondata:Name {value: "AllowLegalEntityOverride"}
    boolean allowLegalEntityOverride?;
    @jsondata:Name {value: "ReferenceCode"}
    string referenceCode?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "JeddTaxes"}
    string jeddTaxes?;
};

public type EmployeeUKStudentLoanCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUKStudentLoan[] items?;
};

public type AwardDetails record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "DateYear"}
    string dateYear?;
    @jsondata:Name {value: "DateMonth"}
    string dateMonth?;
};

# Represents the Queries record for the operation: EmployeePayrollTaxParameter_Post_By_employeePayrollTaxParameter_xRefCode_isValidateOnly_clientNamespace
public type EmployeePayrollTaxParameterPostByEmployeePayrollTaxParameterXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type AnalyticsListValue record {
    # The Id of the list item.  This value would be passed as the parameter value.
    # Multiple Id's can be passed as a parameter value if comma separated
    @jsondata:Name {value: "ListValueId"}
    int:Signed32 listValueId?;
    # The name that can be displayed in a list to the user
    @jsondata:Name {value: "Name"}
    string name?;
};

public type PayloadIEnumerableEmployeePerformanceRating record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePerformanceRating[] data?;
};

public type PayloadIEnumerablePersonAddress record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PersonAddress[] data?;
};

public type PlanLaborStandardDriver record {
    @jsondata:Name {value: "DriverTypeShortName"}
    string driverTypeShortName?;
    @jsondata:Name {value: "DriverShortName"}
    string driverShortName?;
    @jsondata:Name {value: "DriverXRefCode"}
    string driverXRefCode?;
    @jsondata:Name {value: "DriverTypeXRefCode"}
    string driverTypeXRefCode?;
};

# Represents the Queries record for the operation: ClientPayrollCountry_Post_By_clientPayrollCountries_isValidateOnly_clientNamespace
public type ClientPayrollCountryPostByClientPayrollCountriesIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type LegalEntity record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "LegalEntityAddress"}
    Address legalEntityAddress?;
    @jsondata:Name {value: "LegalIdNumber"}
    string legalIdNumber?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeWorkAssignment_Post_By_workAssignment_xRefCode_isValidateOnly_clientNamespace
public type EmployeeWorkAssignmentPostByWorkAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type DocumentImportQueueResponse record {
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "DocumentsQueued"}
    int:Signed32[] documentsQueued?;
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "JobGuid"}
    string jobGuid?;
    @jsondata:Name {value: "QueueTimestamp"}
    string queueTimestamp?;
};

public type OrgLevel record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeUSStateTax_Post_By_emplyeeUSStateTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUSStateTaxPostByEmplyeeUSStateTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type BackgroundJobLogParameters record {
    @jsondata:Name {value: "Value"}
    string value?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type VolunteerList record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeCANTaxStatus_Patch_By_employeeCANTaxStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCANTaxStatusPatchByEmployeeCANTaxStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type Activity record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
};

public type PositionDetails record {
    @jsondata:Name {value: "Company"}
    string company?;
    @jsondata:Name {value: "StartDateMonth"}
    string startDateMonth?;
    @jsondata:Name {value: "EndDateYear"}
    string endDateYear?;
    @jsondata:Name {value: "EndCurrent"}
    boolean endCurrent?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "EndDateMonth"}
    string endDateMonth?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "StartDateYear"}
    string startDateYear?;
    @jsondata:Name {value: "Location"}
    string location?;
};

public type DEUEmployeeAccidentInsurance record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "IsExempt"}
    boolean isExempt?;
    @jsondata:Name {value: "AccidentInsuranceHazardCategory"}
    DEUEmployeeAccidentInsuranceHazardCategoryCollection accidentInsuranceHazardCategory?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type AccumulationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type DeductionPayeeParameter record {
    @jsondata:Name {value: "PayeeParameterXRefCode"}
    string payeeParameterXRefCode?;
    @jsondata:Name {value: "Value"}
    string value?;
    @jsondata:Name {value: "PayeeParameterName"}
    string payeeParameterName?;
};

public type PayloadIEnumerableEmployeeDisability record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeDisability[] data?;
};

public type DFUnion record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PaginatedPayloadIEnumerableLMSCertification record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    LMSCertification[] data?;
};

public type AccidentInsuranceHazardCategory record {
    @jsondata:Name {value: "Percentage"}
    int:Signed32 percentage?;
    @jsondata:Name {value: "PRDEUAccidentInsuranceProvider_BBNR_UV"}
    string pRDEUAccidentInsuranceProviderBBNRUV?;
    @jsondata:Name {value: "CategoryNumber"}
    string categoryNumber?;
};

public type Department record {
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableDocument record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Document[] data?;
};

public type PayloadPosition record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Position data?;
};

public type LocationAddress record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "Address1"}
    string address1?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "County"}
    string county?;
};

public type EmployeeDefaultLaborMetricsCode record {
    @jsondata:Name {value: "LaborMetricsCode"}
    LaborMetricsCode laborMetricsCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadCandidateApplicationStatusUpdatesPaginationModel record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    CandidateApplicationStatusUpdatesPaginationModel data?;
};

public type EmployeeAddress record {
    @jsondata:Name {value: "AddressLine2"}
    string addressLine2?;
    @jsondata:Name {value: "AddressLine1"}
    string addressLine1?;
    @jsondata:Name {value: "State"}
    string state?;
    @jsondata:Name {value: "Country"}
    string country?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "City"}
    string city?;
};

public type PRSIClass record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeEIRateCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeCANEmploymentInsuranceRate[] items?;
};

public type LimitType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:CredentialsConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    http:ClientHttp1Settings http1Settings = {};
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings = {};
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 30;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with Redirection
    http:FollowRedirects followRedirects?;
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache = {};
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with cookies
    http:CookieConfig cookieConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits = {};
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Provides settings related to client socket configuration
    http:ClientSocketConfig socketConfig = {};
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
    # Enables relaxed data binding on the client side. When enabled, `nil` values are treated as optional, 
    # and absent fields are handled as `nilable` types. Enabled by default.
    boolean laxDataBinding = true;
|};

public type PayClass record {
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "PayClassGroup"}
    PayClassGroup payClassGroup?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "SortOrder"}
    int:Signed32 sortOrder?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "DefaultNormalWeeklyHours"}
    decimal defaultNormalWeeklyHours?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayClassFrequency"}
    PayClassFrequency payClassFrequency?;
};

public type LegalEntityAddress record {
    @jsondata:Name {value: "AddressLine2"}
    string addressLine2?;
    @jsondata:Name {value: "AddressLine1"}
    string addressLine1?;
    @jsondata:Name {value: "State"}
    string state?;
    @jsondata:Name {value: "Country"}
    string country?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "City"}
    string city?;
};

public type EmployeeSkill record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Skill"}
    Skill skill?;
    @jsondata:Name {value: "SkillLevel"}
    SkillLevel skillLevel?;
    @jsondata:Name {value: "LMSAssignmentMethod"}
    LMSAssignmentMethod lMSAssignmentMethod?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "TrainingProgram"}
    TrainingProgram trainingProgram?;
    @jsondata:Name {value: "Course"}
    Course course?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "LastAssignedBy"}
    string lastAssignedBy?;
};

# Represents the Queries record for the operation: Departments_Patch_By_department_xRefCode_isValidateOnly_clientNamespace
public type DepartmentsPatchByDepartmentXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type LegalEntityWorkSiteState record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LaborCostTimeInterval record {
    @jsondata:Name {value: "Totals"}
    LaborCostTotalResult totals?;
    @jsondata:Name {value: "IntervalStartTime"}
    string intervalStartTime?;
    @jsondata:Name {value: "IntervalEndTime"}
    string intervalEndTime?;
};

public type BioSensitivityLevel record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeRole_Patch_By_employeeRole_xRefCode_isValidateOnly_clientNamespace
public type EmployeeRolePatchByEmployeeRoleXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type ClientMetadata record {
    @jsondata:Name {value: "ServiceUri"}
    string serviceUri?;
    @jsondata:Name {value: "ServiceVersion"}
    string serviceVersion?;
};

public type EarningPayee record {
    @jsondata:Name {value: "PayeeXRefCode"}
    string payeeXRefCode?;
    @jsondata:Name {value: "PayeeParameters"}
    EarningPayeeParameter[] payeeParameters?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EarningScheduleXRefCode"}
    string earningScheduleXRefCode?;
    @jsondata:Name {value: "PayeeEarningLimits"}
    EarningPayeeEarningLimit[] payeeEarningLimits?;
    @jsondata:Name {value: "PayeeName"}
    string payeeName?;
    @jsondata:Name {value: "PayeeEarningParameters"}
    EarningPayeeEarningParameter[] payeeEarningParameters?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "EarningScheduleName"}
    string earningScheduleName?;
    @jsondata:Name {value: "Default"}
    boolean default?;
};

public type PayloadIEnumerableEmployeeEmploymentType record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeEmploymentType[] data?;
};

public type PayrollPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: Certification_Get_By_pageSize_xRefCode_clientNamespace
public type CertificationGetByPageSizeXRefCodeClientNamespaceQueries record {
    # The page size for the pagination (Default is 1000)
    int:Signed32 pageSize?;
    # The xrefcode filter for the certifications
    string xRefCode?;
};

# Represents the Queries record for the operation: EmployeeVeteransStatus_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeVeteransStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeeWorkLocationOverride_Patch_By_workLocationOverrides_isValidateOnly_clientNamespace
public type EmployeeWorkLocationOverridePatchByWorkLocationOverridesIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, PATCH operations validate the request without queue the import. The default value is FALSE. Note, PATCH operation will only validate data structure
    boolean isValidateOnly?;
};

public type BackgroundScreeningProviderPackage record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "IncludeRTW"}
    boolean includeRTW?;
    @jsondata:Name {value: "AssociatedBillingCodes"}
    BackgroundScreeningAssociatedBillingCode[] associatedBillingCodes?;
    @jsondata:Name {value: "PackageId"}
    string packageId?;
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: Positions_Get_By_contextDate_clientNamespace
public type PositionsGetByContextDateClientNamespaceQueries record {
    # The Context Date value is an “as-of” date used to determine which Position data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2019-01-01T12:34:56
    string contextDate?;
};

# Represents the Queries record for the operation: EmployeeLocation_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeLocationGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PayTypeGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeDirectDeposit record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeDirectDeposit[] data?;
};

public type PayloadIEnumerableEmployeeUnionMembership record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUnionMembership[] data?;
};

public type EmployeeEthnicity record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "Ethnicity"}
    DFEthnicity ethnicity?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ManagerEthnicity"}
    DFEthnicity managerEthnicity?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeWorkAssignment record {
    @jsondata:Name {value: "TelecommuterPercentage"}
    decimal telecommuterPercentage?;
    @jsondata:Name {value: "JobClassificationGlobal"}
    JobClassificationGlobal jobClassificationGlobal?;
    @jsondata:Name {value: "PositionTerm"}
    PositionTerm positionTerm?;
    @jsondata:Name {value: "IsPAPrimaryWorkSite"}
    boolean isPAPrimaryWorkSite?;
    @jsondata:Name {value: "EmploymentStatusReason"}
    EmploymentStatusReason employmentStatusReason?;
    @jsondata:Name {value: "IsVirtual"}
    boolean isVirtual?;
    @jsondata:Name {value: "LastModifiedTimeStamp"}
    string lastModifiedTimeStamp?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "PRBankAccountBranchAddress"}
    BankAccountBranchAddress pRBankAccountBranchAddress?;
    @jsondata:Name {value: "EndSecondaryWorkAssignments"}
    boolean endSecondaryWorkAssignments?;
    @jsondata:Name {value: "BusinessTitle"}
    string businessTitle?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LaborPercentage"}
    decimal laborPercentage?;
    @jsondata:Name {value: "WorkLocationOverride"}
    WorkLocationOverride workLocationOverride?;
    @jsondata:Name {value: "JobRate"}
    decimal jobRate?;
    @jsondata:Name {value: "IsConvenienceOfEmployee"}
    boolean isConvenienceOfEmployee?;
    @jsondata:Name {value: "Position"}
    Position position?;
    @jsondata:Name {value: "FlatAmount"}
    decimal flatAmount?;
    @jsondata:Name {value: "TipTypeGroup"}
    TipTypeGroup tipTypeGroup?;
    @jsondata:Name {value: "PMPositionAssignment"}
    PMPositionAssignment pMPositionAssignment?;
    @jsondata:Name {value: "EmploymentIndicator"}
    EmploymentIndicator employmentIndicator?;
    @jsondata:Name {value: "Rank"}
    int rank?;
    @jsondata:Name {value: "OriginalEffectiveStart"}
    string originalEffectiveStart?;
    @jsondata:Name {value: "ParticipateInReciprocalTaxCalculation"}
    boolean participateInReciprocalTaxCalculation?;
    @jsondata:Name {value: "JobSetLevel"}
    JobSetLevel jobSetLevel?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "OriginalEffectiveEnd"}
    string originalEffectiveEnd?;
    @jsondata:Name {value: "FTE"}
    decimal fTE?;
    @jsondata:Name {value: "OriginalIsPrimary"}
    boolean originalIsPrimary?;
    @jsondata:Name {value: "MultiJSalaryAllocationPercent"}
    decimal multiJSalaryAllocationPercent?;
    @jsondata:Name {value: "IsPrimary"}
    boolean isPrimary?;
    @jsondata:Name {value: "IsStatutory"}
    boolean isStatutory?;
    @jsondata:Name {value: "Location"}
    Location location?;
};

public type PaginatedPayloadIEnumerableLaborValidationRule record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    LaborValidationRule[] data?;
};

# Represents the Queries record for the operation: LaborDemands_Delete_By_orgUnitXRefCode_schedulePeriodStart_filterFrom_filterTo_zoneXRefCode_activityXRefCode_laborMeasureXRefCode_axisXRefCode_clientNamespace
public type LaborDemandsDeleteByOrgUnitXRefCodeSchedulePeriodStartFilterFromFilterToZoneXRefCodeActivityXRefCodeLaborMeasureXRefCodeAxisXRefCodeClientNamespaceQueries record {
    # end of range (optional) - defaults to a week from schedulePeriodStart if not supplied
    string filterTo?;
    # start of schedule period
    string schedulePeriodStart;
    # start of range (optional) - defaults to schedulePeriodStart if not supplied
    string filterFrom?;
    # filter by Labor Measure Ref Code (optional)
    string laborMeasureXRefCode?;
    # filter by Axis Ref Code (optional)
    string axisXRefCode?;
    # filter by Zone Ref Code (optional)
    string zoneXRefCode?;
    # Org Unit Ref Code
    string orgUnitXRefCode;
    # filter by Activity Ref Code (optional)
    string activityXRefCode?;
};

public type EmployeeUKTaxDetailsCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeUKTaxDetails[] items?;
};

# Represents the Queries record for the operation: BenefitsDFLinkMultiCarrierExports_GetBenefitsDFLinkMultiCarrierOngoingExport_By_carrierXRefCodes_planStartDate_planEndDate_payrollEarningAccumulationXRefCodes_blackoutPeriodStartDate_lookBackDays_lookForwardDays_clientNamespace
public type BenefitsDFLinkMultiCarrierExportsGetBenefitsDFLinkMultiCarrierOngoingExportByCarrierXRefCodesPlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesBlackoutPeriodStartDateLookBackDaysLookForwardDaysClientNamespaceQueries record {
    # A comma delimited list of reference codes, mapping to a list of individual carriers
    string carrierXRefCodes;
    # If applicable, the blackout period start date
    string blackoutPeriodStartDate?;
    # The number of days the export will look back from execution date to find employee elections
    int:Signed32 lookBackDays?;
    # A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations
    string payrollEarningAccumulationXRefCodes?;
    # The number of days the export will look forward from execution date to find employee elections
    int:Signed32 lookForwardDays?;
    # The plan start date
    string planStartDate;
    # The plan end date
    string planEndDate;
};

public type PayloadIEnumerableSkill record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Skill[] data?;
};

public type DeductionParameter record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "ParameterAccessType"}
    ParameterAccessType parameterAccessType?;
};

# Represents the Queries record for the operation: EmployeePayrollTaxParameter_Post_By_employeePayrollTaxParameters_xRefCode_isValidateOnly_clientNamespace
public type EmployeePayrollTaxParameterPostByEmployeePayrollTaxParametersXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type ScheduleEmployee record {
    @jsondata:Name {value: "SocialSecurityNumber"}
    string socialSecurityNumber?;
    @jsondata:Name {value: "Address"}
    string address?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "Gender"}
    string gender?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "HomePhone"}
    string homePhone?;
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    @jsondata:Name {value: "HireDate"}
    string hireDate?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "BadgeNumber"}
    string badgeNumber?;
    @jsondata:Name {value: "SeniorityDate"}
    string seniorityDate?;
    @jsondata:Name {value: "BirthDate"}
    string birthDate?;
};

# Represents the Queries record for the operation: EmployeeAccidentInsurance_Patch_By_dEUEmployeeAccidentInsurance_xRefCode_isValidateOnly_clientNamespace
public type EmployeeAccidentInsurancePatchByDEUEmployeeAccidentInsuranceXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type LMSCertificationStatus record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeEmploymentAgreementCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEmploymentAgreement[] items?;
};

public type EmployeeGLSplits record {
    @jsondata:Name {value: "EmployeeGLSplitSets"}
    EmployeeGLSplitSets[] employeeGLSplitSets?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "EmployeeName"}
    string employeeName?;
};

public type EmployeeAvailabilityWeeksPostRequestDTO record {
    @jsondata:Name {value: "Days"}
    EmployeeAvailabilityDaysPostRequestDTO[] days;
};

public type PayrollPayEntryImportHistory record {
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "Currency"}
    string currency?;
    @jsondata:Name {value: "PeriodStart"}
    string periodStart?;
    @jsondata:Name {value: "PayGroupXRefCode"}
    string payGroupXRefCode?;
    @jsondata:Name {value: "Imports"}
    PayrollPayEntryImportHistoryDetails[] imports?;
    @jsondata:Name {value: "PeriodEnd"}
    string periodEnd?;
    @jsondata:Name {value: "PPN"}
    string pPN?;
};

public type PaginatedPayloadPersonManagementEraseHistory record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    PersonManagementEraseHistory data?;
};

public type Publications record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    PublicationDetails[] values?;
};

# Represents the Queries record for the operation: EmployeeClockDeviceGroup_Post_By_clockDeviceGroup_xRefCode_isValidateOnly_clientNamespace
public type EmployeeClockDeviceGroupPostByClockDeviceGroupXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: AppUserSSO_Post_By_ssoInfo_xRefCode_isValidateOnly_clientNamespace
public type AppUserSSOPostBySsoInfoXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeePrivateHealthInsurance record {
    @jsondata:Name {value: "HealthInsuranceStartDate"}
    string healthInsuranceStartDate?;
    @jsondata:Name {value: "BaseContributionHealth"}
    decimal baseContributionHealth?;
    @jsondata:Name {value: "PrivateHealthInsuranceXrefCode"}
    string privateHealthInsuranceXrefCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PaymentCompletedByXrefCode"}
    string paymentCompletedByXrefCode?;
    @jsondata:Name {value: "TotalContributionCare"}
    decimal totalContributionCare?;
    @jsondata:Name {value: "TotalContributionHealth"}
    decimal totalContributionHealth?;
    @jsondata:Name {value: "BaseContributionCare"}
    decimal baseContributionCare?;
};

public type BackgroundScreeningAssociatedBillingCode record {
    @jsondata:Name {value: "BillingCodeId"}
    string billingCodeId?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: EmployeeWorkAssigmentManager_Post_By_ewam_xRefCode_isValidateOnly_clientNamespace
public type EmployeeWorkAssigmentManagerPostByEwamXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeEmploymentType_Post_By_employeeEmploymentType_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEmploymentTypePostByEmployeeEmploymentTypeXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeLocation record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeLocation[] data?;
};

public type KpiTargetPatternPOST record {
    @jsondata:Name {value: "Assignment"}
    KpiTargetPatternAssignment[] assignment?;
    @jsondata:Name {value: "Pattern"}
    KpiTargetPatternDetail[] pattern?;
};

# Represents the Queries record for the operation: PersonAddress_Post_By_personAddress_xRefCode_isValidateOnly_clientNamespace
public type PersonAddressPostByPersonAddressXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadDocumentImportQueueResponse record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    DocumentImportQueueResponse data?;
};

public type PayeeParameter record {
    @jsondata:Name {value: "PayeeParameterDescription"}
    string payeeParameterDescription?;
    @jsondata:Name {value: "Pattern"}
    string pattern?;
    @jsondata:Name {value: "Required"}
    boolean required?;
    @jsondata:Name {value: "AccessTypeName"}
    string accessTypeName?;
    @jsondata:Name {value: "PayeeParameterXRefCode"}
    string payeeParameterXRefCode?;
    @jsondata:Name {value: "ParameterTypeXRefCode"}
    string parameterTypeXRefCode?;
    @jsondata:Name {value: "PayeeParameterName"}
    string payeeParameterName?;
    @jsondata:Name {value: "ParameterTypeName"}
    string parameterTypeName?;
    @jsondata:Name {value: "AccessTypeCode"}
    string accessTypeCode?;
    @jsondata:Name {value: "MaxLength"}
    int:Signed32 maxLength?;
    @jsondata:Name {value: "DataTypeCode"}
    string dataTypeCode?;
};

public type PunchExtraData record {
    @jsondata:Name {value: "MealWaiver"}
    string mealWaiver?;
    @jsondata:Name {value: "BreakAttestation"}
    boolean breakAttestation?;
    @jsondata:Name {value: "Quantity"}
    decimal quantity?;
    @jsondata:Name {value: "ProjectClockTransferCode"}
    string projectClockTransferCode?;
    @jsondata:Name {value: "PositionClockTransferCode"}
    string positionClockTransferCode?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "FaceVerificationFailure"}
    boolean faceVerificationFailure?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "BioFailure"}
    boolean bioFailure?;
    @jsondata:Name {value: "DocketClockTransferCode"}
    string docketClockTransferCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    PunchLaborMetric[] laborMetrics?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
    @jsondata:Name {value: "LocationClockTransferCode"}
    string locationClockTransferCode?;
};

public type EmployeePaySummary record {
    @jsondata:Name {value: "LaborMetricsCode4XRefCode"}
    string laborMetricsCode4XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode3XRefCode"}
    string laborMetricsCode3XRefCode?;
    @jsondata:Name {value: "BusinessDate"}
    string businessDate?;
    @jsondata:Name {value: "IsPremium"}
    boolean isPremium?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "LaborMetricsCode1XRefCode"}
    string laborMetricsCode1XRefCode?;
    @jsondata:Name {value: "PieceQuantity"}
    decimal pieceQuantity?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "LaborMetricsCode2XRefCode"}
    string laborMetricsCode2XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode8XRefCode"}
    string laborMetricsCode8XRefCode?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "LaborMetricsCode9XRefCode"}
    string laborMetricsCode9XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode0XRefCode"}
    string laborMetricsCode0XRefCode?;
    @jsondata:Name {value: "PayDate"}
    string payDate?;
    @jsondata:Name {value: "PunchSegmentStart"}
    string punchSegmentStart?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
    @jsondata:Name {value: "MinuteDuration"}
    int:Signed32 minuteDuration?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
    @jsondata:Name {value: "PayCodeXRefCode"}
    string payCodeXRefCode?;
    @jsondata:Name {value: "PayAmount"}
    decimal payAmount?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "Rate"}
    decimal rate?;
    @jsondata:Name {value: "PayExportId"}
    int payExportId?;
    @jsondata:Name {value: "PayCategoryXRefCode"}
    string payCategoryXRefCode?;
    @jsondata:Name {value: "LaborMetricsCode7XRefCode"}
    string laborMetricsCode7XRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "LaborMetricsCode6XRefCode"}
    string laborMetricsCode6XRefCode?;
    @jsondata:Name {value: "LaborMetricsCode5XRefCode"}
    string laborMetricsCode5XRefCode?;
};

# Represents the Queries record for the operation: PersonAddress_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type PersonAddressGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type CalculationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeBalanceTransactions record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeBalanceTransactions[] data?;
};

# Represents the Queries record for the operation: WorkContract_Patch_By_employeeWorkContract_xRefCode_isValidateOnly_clientNamespace
public type WorkContractPatchByEmployeeWorkContractXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeVolunteerList_Patch_By_employeeVolunteerList_xRefCode_isValidateOnly_clientNamespace
public type EmployeeVolunteerListPatchByEmployeeVolunteerListXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PolicyAssociation record {
    @jsondata:Name {value: "StartDate"}
    string startDate?;
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "ExemptedFromDataMinimization"}
    boolean exemptedFromDataMinimization?;
    @jsondata:Name {value: "Number"}
    string number?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "DataManagementCountryCode"}
    string dataManagementCountryCode?;
    @jsondata:Name {value: "PersonType"}
    string personType?;
    @jsondata:Name {value: "Person"}
    string person?;
};

# Represents the Queries record for the operation: EmployeeGLSplits_Post_By_glSplits_isValidateOnly_clientNamespace
public type EmployeeGLSplitsPostByGlSplitsIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
};

public type DeductionCode record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEmployeeVeteransStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeVeteransStatus[] data?;
};

# Represents the Queries record for the operation: PayrollElections_Patch_By_payrollElections_isValidateOnly_AutoUpdateExisting_clientNamespace
public type PayrollElectionsPatchByPayrollElectionsIsValidateOnlyAutoUpdateExistingClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
    # If TRUE, all other elections of the same employee will be end-dated. The default value is FALSE
    @http:Query {name: "AutoUpdateExisting"}
    boolean autoUpdateExisting?;
};

public type EmployeeLocationCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeLocation[] items?;
};

public type PayloadIEnumerableEmployeeTimeAwayFromWorkForSubmit record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeTimeAwayFromWorkForSubmit[] data?;
};

public type EmployeeSchedulePostAPIRequestDTO record {
    @jsondata:Name {value: "Activities"}
    EmployeeScheduleActivityPostAPIRequestDTO[] activities?;
    @jsondata:Name {value: "PayAdjCodeXRefCode"}
    string payAdjCodeXRefCode?;
    @jsondata:Name {value: "Breaks"}
    EmployeeScheduleMBPostAPIRequestDTO[] breaks?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd;
    @jsondata:Name {value: "Segments"}
    EmployeeScheduleSegmentAPIRequestDTO[] segments?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart;
    @jsondata:Name {value: "PostShiftBid"}
    boolean postShiftBid?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode;
    @jsondata:Name {value: "OrgLocationTypeXRefCode"}
    string orgLocationTypeXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    EmployeeScheduleLaborMetricPostAPIRequestDTO[] laborMetrics?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
};

public type PayloadProjects record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Projects data?;
};

# Represents the Queries record for the operation: Courses_Get_By_pageSize_courseType_courseProvider_xRefCode_clientNamespace
public type CoursesGetByPageSizeCourseTypeCourseProviderXRefCodeClientNamespaceQueries record {
    # The course type filter for the courses
    string courseType?;
    # The course provider filter for the courses
    string courseProvider?;
    # The page size for the pagination (Default is 1000)
    int:Signed32 pageSize?;
    # The xrefcode filter for the courses
    string xRefCode?;
};

public type EmployeePayrollTaxName record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "TaxName"}
    string taxName?;
};

public type QuestionConditionModel record {
    string id?;
    string value?;
};

public type LaborMetricsCodesForSubmit record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "LaborMetricsTypeXRefCode"}
    string laborMetricsTypeXRefCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "EffectiveFrom"}
    string effectiveFrom?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "OrgUnitXRefCodes"}
    string[] orgUnitXRefCodes?;
    @jsondata:Name {value: "LaborMetricsCodeXRefCode"}
    string laborMetricsCodeXRefCode?;
};

public type PayloadIEnumerableEmployeeHighlyCompensatedEmployeeIndicator record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeHighlyCompensatedEmployeeIndicator[] data?;
};

public type BackgroundScreeningProviderBillingCode record {
    @jsondata:Name {value: "BillingCodeId"}
    string billingCodeId?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "AssociatedPackages"}
    BackgroundScreeningAssociatedPackage[] associatedPackages?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type ShiftTradePolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeVeteransStatus_Patch_By_employeeVeteransStatus_xRefCode_isValidateOnly_clientNamespace
public type EmployeeVeteransStatusPatchByEmployeeVeteransStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeOnboardingPolicyCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeOnboardingPolicy[] items?;
};

public type EmployeeWorkContractCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeWorkContract[] items?;
};

public type UserEmployeeAuthorityTypeAssignmentCollection record {
    @jsondata:Name {value: "Items"}
    AuthorizationAssignment[] items?;
};

public type DFEthnicity record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmergencyContact_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmergencyContactGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PersonAddress record {
    @jsondata:Name {value: "DisplayOnTaxForm"}
    boolean displayOnTaxForm?;
    @jsondata:Name {value: "DisplayOnEarningStatement"}
    boolean displayOnEarningStatement?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "Address3"}
    string address3?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "Address1"}
    string address1?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "County"}
    string county?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsPayrollMailing"}
    boolean isPayrollMailing?;
    @jsondata:Name {value: "Address6"}
    string address6?;
    @jsondata:Name {value: "Address4"}
    string address4?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "Address5"}
    string address5?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "ContactInformationType"}
    ContactInformationType contactInformationType?;
};

# Represents the Queries record for the operation: EmployeeDisability_Post_By_employeeDisability_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDisabilityPostByEmployeeDisabilityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type ListValue record {
    # The Id of the list item.  This value would be passed as the parameter value.
    # Multiple Id's can be passed as a parameter value if comma separated
    @jsondata:Name {value: "ListValueId"}
    int:Signed32 listValueId?;
    # The name that can be displayed in a list to the user
    @jsondata:Name {value: "Name"}
    string name?;
};

public type EmployeeMaritalStatusCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeMaritalStatus[] items?;
};

# Represents the Queries record for the operation: EmployeeBadge_Patch_By_employeeBadge_xRefCode_isValidateOnly_clientNamespace
public type EmployeeBadgePatchByEmployeeBadgeXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeHealthWellness_Patch_By_employeeHealthWellness_xRefCode_isValidateOnly_clientNamespace
public type EmployeeHealthWellnessPatchByEmployeeHealthWellnessXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type ManagerAssignShiftBidDTO record {
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode;
    @jsondata:Name {value: "GroupXRefCode"}
    string groupXRefCode;
};

public type CandidateRightToWorkResult record {
    @jsondata:Name {value: "WorkRightStatus"}
    string workRightStatus?;
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "DateIssued"}
    string dateIssued?;
    @jsondata:Name {value: "PartnerIdentifier"}
    int:Signed32 partnerIdentifier?;
    @jsondata:Name {value: "DateCompleted"}
    string dateCompleted?;
    @jsondata:Name {value: "Documents"}
    CandidateRTWDocument[] documents?;
    @jsondata:Name {value: "CandidateRightToWorkResultId"}
    int:Signed32 candidateRightToWorkResultId?;
    @jsondata:Name {value: "RejectionOrCancellationReasons"}
    CandidateRTWRejectionReason[] rejectionOrCancellationReasons?;
    @jsondata:Name {value: "WorkRightEffectiveEnd"}
    string workRightEffectiveEnd?;
    @jsondata:Name {value: "WorkRightEffectiveStart"}
    string workRightEffectiveStart?;
};

public type EmergencyContactCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEmergencyContact[] items?;
};

public type PayloadIEnumerableEmployeeUKIrregularPaymentDetails record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUKIrregularPaymentDetails[] data?;
};

public type PayloadIEnumerableEmployeeTrainingProgram record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeTrainingProgram[] data?;
};

public type EmployeePayGradeRateCollection record {
    @jsondata:Name {value: "Items"}
    EmployeePayGradeRate[] items?;
};

# Represents the Queries record for the operation: EmployeePayAdjustments_GetEmployeePayAdjustments_By_filterPayAdjustmentStartDate_filterPayAdjustmentEndDate_filterLastModifiedStartDateUTC_filterLastModifiedEndDateUTC_orgUnitXRefCode_employeeXRefCode_payAdjustmentCodeXRefCode_projectXRefCode_departmentXRefCode_jobXRefCode_docketXRefCode_referenceDate_managerAuthorized_employeeAuthorized_isDeleted_pageSize_clientNamespace
public type EmployeePayAdjustmentsGetEmployeePayAdjustmentsByFilterPayAdjustmentStartDateFilterPayAdjustmentEndDateFilterLastModifiedStartDateUTCFilterLastModifiedEndDateUTCOrgUnitXRefCodeEmployeeXRefCodePayAdjustmentCodeXRefCodeProjectXRefCodeDepartmentXRefCodeJobXRefCodeDocketXRefCodeReferenceDateManagerAuthorizedEmployeeAuthorizedIsDeletedPageSizeClientNamespaceQueries record {
    # A case-sensitive field that identifies a unique project
    string projectXRefCode?;
    # Inclusive period last modified end date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00Z
    string filterLastModifiedEndDateUTC?;
    # A flag to determine if a pay adjustment is employee authorized
    boolean employeeAuthorized?;
    # A case-sensitive field that identifies a unique pay adjustment code
    string payAdjustmentCodeXRefCode?;
    # A flag to determine if a pay adjustment is manager authorized
    boolean managerAuthorized?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # A case-sensitive field that identifies a unique employee
    string employeeXRefCode?;
    # A case-sensitive field that identifies a unique organization
    string orgUnitXRefCode?;
    # Inclusive period start date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00
    string filterPayAdjustmentStartDate;
    # A flag to determine if a pay adjustment is deleted
    boolean isDeleted?;
    # Inclusive period end date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00
    string filterPayAdjustmentEndDate;
    # Inclusive period last modified start date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00Z
    string filterLastModifiedStartDateUTC?;
    # A case-sensitive field that identifies a unique job
    string jobXRefCode?;
    # Inclusive period reference date in UTC to determine which employee pay adjustment data to retrieve. Example: 2017-01-01T00:00:00
    string referenceDate?;
    # A case-sensitive field that identifies a unique department
    string departmentXRefCode?;
    # A case-sensitive field that identifies a unique docket
    string docketXRefCode?;
};

# Represents the Queries record for the operation: EmployeeSchedules_Post_By_orgUnitXRefCode_employeeSchedules_isValidateOnly_violationLevel_clientNamespace
public type EmployeeSchedulesPostByOrgUnitXRefCodeEmployeeSchedulesIsValidateOnlyViolationLevelClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validates the request without applying updates to the database
    boolean isValidateOnly?;
    0|1|2|3|4 violationLevel?;
    string orgUnitXRefCode;
};

# This class encapsulates the report data generated during the execution of the report
public type AnalyticsReportColumnMetadata record {
    # This is a name as defined by a user when developing this report.  This name
    # would be a human facing name that would be used on a printed report.
    # This field is used as the key to the values dictionary
    @jsondata:Name {value: "Description"}
    string description?;
    # This is a string representation of the data type
    @jsondata:Name {value: "DataType"}
    string dataType?;
    # CodeName is a unique name that can be used with code
    # to refer to this specific column.  Its value should be consistent
    @jsondata:Name {value: "Name"}
    string name?;
};

public type BenefitsDFLinkExportBeneficiaryElectionDetail record {
    @jsondata:Name {value: "CoverageEndDate"}
    string coverageEndDate?;
    @jsondata:Name {value: "EffectiveEndDate"}
    string effectiveEndDate?;
    @jsondata:Name {value: "PlanCode"}
    string planCode?;
    @jsondata:Name {value: "PolicyNumber"}
    string policyNumber?;
    @jsondata:Name {value: "BeneficiaryPercentage"}
    decimal beneficiaryPercentage?;
    @jsondata:Name {value: "ContingentBeneficiaryIndicator"}
    boolean contingentBeneficiaryIndicator?;
    @jsondata:Name {value: "OptionCode"}
    string optionCode?;
    @jsondata:Name {value: "PlanTypeCode"}
    string planTypeCode?;
    @jsondata:Name {value: "PlanXrefCode"}
    string planXrefCode?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "PlanSubTypeCode"}
    string planSubTypeCode?;
    @jsondata:Name {value: "CoverageStartDate"}
    string coverageStartDate?;
    @jsondata:Name {value: "UniqueBeneficiaryId"}
    int:Signed32 uniqueBeneficiaryId?;
    @jsondata:Name {value: "EffectiveStartDate"}
    string effectiveStartDate?;
    @jsondata:Name {value: "PlanStartDate"}
    string planStartDate?;
};

public type EmployeeVOI record {
    @jsondata:Name {value: "NationalIdNumber"}
    string nationalIdNumber?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "EmployeeResidentialAddress"}
    EmployeeAddress employeeResidentialAddress?;
    @jsondata:Name {value: "LegalEntities"}
    EmployeeLegalEntity[] legalEntities?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "Earnings"}
    EmployeeEarningSummary[] earnings?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "Namespace"}
    string namespace?;
    @jsondata:Name {value: "BirthDate"}
    string birthDate?;
};

# Report meta data that defines report parameters.
# Parameter values are supplied by the end-user for execution.
# All parameters must be supplied during execution.
# Not all Parameters have default value
public type ReportParameterMetadata record {
    # Operator type of the parameter, such as =, &lt;, &gt;=, etc...
    # Not all parameters have operator type.
    # For example, SQL Parameters don't have operators
    @jsondata:Name {value: "Operator"}
    string operator?;
    # Default value that will be used if no other value is provided for the parameter.
    # Not all parameters have default value.
    # End-user needs to supply a value in here if the parameter doesn't have value.
    # Reference values should contain Ids and be comma separated. E.g "1,2,3"
    @jsondata:Name {value: "DefaultValue"}
    string defaultValue?;
    # Unique Id of parameter
    @jsondata:Name {value: "ReportParameterMetadataId"}
    string reportParameterMetadataId?;
    # True if a value needs to be supplied
    @jsondata:Name {value: "IsRequired"}
    boolean isRequired?;
    # Human readable name of the parameter
    @jsondata:Name {value: "DisplayName"}
    string displayName?;
    # List of available values a parameter can have
    @jsondata:Name {value: "AvailableValues"}
    ListValue[] availableValues?;
    # Data type of the parameter
    @jsondata:Name {value: "DataType"}
    string dataType?;
    # Name of the parameter
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: TimeOff_Patch_By_timeOff_xRefCode_isValidateOnly_clientNamespace
public type TimeOffPatchByTimeOffXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PRPayeeEarning record {
    @jsondata:Name {value: "PayeeXRefCode"}
    string payeeXRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "PaymentMethodCode"}
    string paymentMethodCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeCourse_Post_By_employeeCourse_xRefCode_isValidateOnly_clientNamespace
public type EmployeeCoursePostByEmployeeCourseXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
};

public type BackgroundJobLog record {
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "JobInformation"}
    string jobInformation?;
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "Parameters"}
    BackgroundJobLogParameters[] parameters?;
    @jsondata:Name {value: "BackgroundJobLogGuid"}
    string backgroundJobLogGuid?;
    @jsondata:Name {value: "ExecEndTimeUtc"}
    string execEndTimeUtc?;
    @jsondata:Name {value: "FileList"}
    string fileList?;
    @jsondata:Name {value: "WasScheduled"}
    boolean wasScheduled?;
    @jsondata:Name {value: "SubmittedBy"}
    string submittedBy?;
    @jsondata:Name {value: "ExecStartTimeUtc"}
    string execStartTimeUtc?;
    @jsondata:Name {value: "DebugInformation"}
    string debugInformation?;
    @jsondata:Name {value: "HasItemLevelErrors"}
    boolean hasItemLevelErrors?;
    @jsondata:Name {value: "Name"}
    string name?;
    @jsondata:Name {value: "ErrorInformation"}
    string errorInformation?;
    @jsondata:Name {value: "BackgroundJobLogId"}
    int:Signed32 backgroundJobLogId?;
    @jsondata:Name {value: "LastModifiedTimestampUtc"}
    string lastModifiedTimestampUtc?;
    @jsondata:Name {value: "QueueTimeUtc"}
    string queueTimeUtc?;
};

public type EmployeePayrollElection record {
    @jsondata:Name {value: "Elections"}
    PayrollElection[] elections?;
    @jsondata:Name {value: "RowNumber"}
    int rowNumber?;
    @jsondata:Name {value: "PreviousPayPeriodStart"}
    string previousPayPeriodStart?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "CurrentPayPeriodStart"}
    string currentPayPeriodStart?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "CurrentPayPeriodEnd"}
    string currentPayPeriodEnd?;
    @jsondata:Name {value: "EmployeeName"}
    string employeeName?;
    @jsondata:Name {value: "CurrentPayRunStatus"}
    string currentPayRunStatus?;
    @jsondata:Name {value: "PreviousPayPeriodEnd"}
    string previousPayPeriodEnd?;
};

public type PayloadIEnumerableEmployeePayAdjustCodeGroup record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePayAdjustCodeGroup[] data?;
};

public type PayloadIEnumerableDEUEmployeeAccidentInsurance record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    DEUEmployeeAccidentInsurance[] data?;
};

public type EmployeePayAdjustCodeGroup record {
    @jsondata:Name {value: "PayAdjCodeGroup"}
    PayAdjCodeGroup payAdjCodeGroup?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeDisability record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "ExpiryDate"}
    string expiryDate?;
    @jsondata:Name {value: "DisabilityEvidenceIssuingAgencyLocation"}
    string disabilityEvidenceIssuingAgencyLocation?;
    @jsondata:Name {value: "DisabilityEvidenceIssuingAgency"}
    DisabilityEvidenceIssuingAgency disabilityEvidenceIssuingAgency?;
    @jsondata:Name {value: "EvidenceNumber"}
    string evidenceNumber?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "DisabilityWorkingTime"}
    DisabilityWorkingTime disabilityWorkingTime?;
    @jsondata:Name {value: "ValidFrom"}
    string validFrom?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "DisabilityEvidenceType"}
    DisabilityEvidenceType disabilityEvidenceType?;
    @jsondata:Name {value: "DisabilityGroup"}
    DisabilityGroup disabilityGroup?;
};

public type PayloadIEnumerableQuestionModel record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    QuestionModel[] data?;
};

public type PayClassFrequency record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: LegacyLaborMetric_Post_By_legacyLaborMetricData_isValidateOnly_clientNamespace
public type LegacyLaborMetricPostByLegacyLaborMetricDataIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EarningLimit record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "LimitAccessType"}
    LimitAccessType limitAccessType?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "AccumulationType"}
    AccumulationType accumulationType?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "LimitType"}
    LimitType limitType?;
};

public type PayGroupBrief record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeOnboardingPolicy record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsInternalHire"}
    boolean isInternalHire?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "OnboardingPolicy"}
    OnboardingPolicy onboardingPolicy?;
};

public type CandidateDetails record {
    @jsondata:Name {value: "AdditionalInfo"}
    string additionalInfo?;
    @jsondata:Name {value: "Patents"}
    Patents patents?;
    @jsondata:Name {value: "Publications"}
    Publications publications?;
    @jsondata:Name {value: "Certifications"}
    Certifications certifications?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "Associations"}
    Associations associations?;
    @jsondata:Name {value: "Awards"}
    Awards awards?;
    @jsondata:Name {value: "Skills"}
    string skills?;
    @jsondata:Name {value: "HomePhoneNumber"}
    string homePhoneNumber?;
    @jsondata:Name {value: "Headline"}
    string headline?;
    @jsondata:Name {value: "Positions"}
    Positions positions?;
    @jsondata:Name {value: "Educations"}
    Educations educations?;
    @jsondata:Name {value: "Summary"}
    string summary?;
    @jsondata:Name {value: "PhoneNumber"}
    string phoneNumber?;
    @jsondata:Name {value: "Links"}
    Links links?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "MilitaryServices"}
    MilitaryServices militaryServices?;
    @jsondata:Name {value: "PublicProfileUrl"}
    string publicProfileUrl?;
    @jsondata:Name {value: "Location"}
    CandidateLocation location?;
};

# Represents the Queries record for the operation: EmployeeSkill_Patch_By_employeeSkill_xRefCode_isValidateOnly_clientNamespace
public type EmployeeSkillPatchByEmployeeSkillXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: Positions_Patch_By_position_xRefCode_isValidateOnly_clientNamespace
public type PositionsPatchByPositionXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying the updates to the database.  The default value is FALSE if parameter is not specified
    boolean isValidateOnly?;
};

public type PayGroup record {
    @jsondata:Name {value: "PayFrequency"}
    PayFrequency payFrequency?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: Payee_Post_By_payees_isValidateOnly_clientNamespace
public type PayeePostByPayeesIsValidateOnlyClientNamespaceQueries record {
    # If true, only validate the request. Otherwise, validate and save
    boolean isValidateOnly?;
};

public type CandidateLocation record {
    @jsondata:Name {value: "StateName"}
    string stateName?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "Address3"}
    string address3?;
    @jsondata:Name {value: "Country"}
    string country?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "Address1"}
    string address1?;
    @jsondata:Name {value: "County"}
    string county?;
};

# Represents the Queries record for the operation: EmployeeSchedules_Patch_By_orgUnitXRefCode_employeeSchedules_isValidateOnly_violationLevel_clientNamespace
public type EmployeeSchedulesPatchByOrgUnitXRefCodeEmployeeSchedulesIsValidateOnlyViolationLevelClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH operation validates the request without applying updates to the database
    boolean isValidateOnly?;
    0|1|2|3|4 violationLevel?;
    string orgUnitXRefCode;
};

# Represents the Queries record for the operation: EmployeeUKNIDetails_Patch_By_employeeNi_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKNIDetailsPatchByEmployeeNiXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type Skill record {
    @jsondata:Name {value: "SkillLevel"}
    SkillLevel[] skillLevel?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "SkillType"}
    SkillType skillType?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LegacyLaborMetricForSubmit record {
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LegacyLaborMetricType"}
    string legacyLaborMetricType?;
    @jsondata:Name {value: "LegacyLaborMetricXRefCode"}
    string legacyLaborMetricXRefCode?;
};

public type EmployeeScheduleSegmentLaborMetric record {
    @jsondata:Name {value: "CodeXRefCode"}
    string codeXRefCode?;
    @jsondata:Name {value: "TypeXRefCode"}
    string typeXRefCode?;
};

public type EmergencyContactPersonAddress record {
    @jsondata:Name {value: "DisplayOnTaxForm"}
    boolean displayOnTaxForm?;
    @jsondata:Name {value: "DisplayOnEarningStatement"}
    boolean displayOnEarningStatement?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "Address3"}
    string address3?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "Address1"}
    string address1?;
    @jsondata:Name {value: "City"}
    string city?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "County"}
    string county?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IsPayrollMailing"}
    boolean isPayrollMailing?;
    @jsondata:Name {value: "Address6"}
    string address6?;
    @jsondata:Name {value: "Address4"}
    string address4?;
    @jsondata:Name {value: "State"}
    State state?;
    @jsondata:Name {value: "Address5"}
    string address5?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "Country"}
    Country country?;
    @jsondata:Name {value: "ContactInformationType"}
    ContactInformationType contactInformationType?;
};

public type EmployeeCompensationCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeCompensation[] items?;
};

public type PayloadIEnumerableEmployeeBalancePeriod record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeBalancePeriod[] data?;
};

public type PayloadIEnumerableObject record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    record {}[] data?;
};

public type EmployeeVOE record {
    @jsondata:Name {value: "NationalIdNumber"}
    string nationalIdNumber?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "EmployeeResidentialAddress"}
    EmployeeAddress employeeResidentialAddress?;
    @jsondata:Name {value: "LegalEntities"}
    EmployeeLegalEntity[] legalEntities?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "MiddleName"}
    string middleName?;
    @jsondata:Name {value: "Namespace"}
    string namespace?;
    @jsondata:Name {value: "BirthDate"}
    string birthDate?;
};

public type PersonManagementExemption record {
    @jsondata:Name {value: "AppliedByName"}
    string appliedByName?;
    @jsondata:Name {value: "Number"}
    string number?;
    @jsondata:Name {value: "Country"}
    string country?;
    @jsondata:Name {value: "EmploymentStatus"}
    string employmentStatus?;
    @jsondata:Name {value: "PersonType"}
    string personType?;
    @jsondata:Name {value: "AppliedOn"}
    string appliedOn?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type PayloadIEnumerableEmployeeTimeAwayFromWork record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeTimeAwayFromWork[] data?;
};

public type Location record {
    @jsondata:Name {value: "Timezone"}
    TimeZone timezone?;
    @jsondata:Name {value: "LegalEntity"}
    LegalEntity legalEntity?;
    @jsondata:Name {value: "ContactCellPhone"}
    string contactCellPhone?;
    @jsondata:Name {value: "Address"}
    string address?;
    @jsondata:Name {value: "OrgUnitLegalEntities"}
    OrgUnitLegalEntityCollection orgUnitLegalEntities?;
    @jsondata:Name {value: "OrgLevel"}
    OrgLevel orgLevel?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "OrgUnitParents"}
    OrgUnitParentCollection orgUnitParents?;
    @jsondata:Name {value: "GeoCity"}
    City geoCity?;
    @jsondata:Name {value: "County"}
    string county?;
    @jsondata:Name {value: "Department"}
    Department department?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "StartDayOfWeek"}
    int:Signed32 startDayOfWeek?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "ComparableLocation"}
    HRConfigurationEntity comparableLocation?;
    @jsondata:Name {value: "PhysicalLocation"}
    boolean physicalLocation?;
    @jsondata:Name {value: "OpeningDate"}
    string openingDate?;
    @jsondata:Name {value: "IsMobileOrg"}
    boolean isMobileOrg?;
    @jsondata:Name {value: "ChildOrgUnits"}
    ChildLocationCollection childOrgUnits?;
    @jsondata:Name {value: "Zone"}
    Zone zone?;
    @jsondata:Name {value: "IsOrgManaged"}
    boolean isOrgManaged?;
    @jsondata:Name {value: "PublicName"}
    string publicName?;
    @jsondata:Name {value: "StateCode"}
    string stateCode?;
    @jsondata:Name {value: "Address2"}
    string address2?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "LedgerCode"}
    string ledgerCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ContactBusinessPhone"}
    string contactBusinessPhone?;
    @jsondata:Name {value: "ContactEmail"}
    string contactEmail?;
    @jsondata:Name {value: "OrgUnitLocationTypes"}
    OrgUnitLocationTypeCollection orgUnitLocationTypes?;
    @jsondata:Name {value: "BusinessPhone"}
    string businessPhone?;
    @jsondata:Name {value: "ClosingDate"}
    string closingDate?;
    @jsondata:Name {value: "ContactName"}
    string contactName?;
};

# Represents the Queries record for the operation: EmployeeSkill_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeSkillGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeCANTaxStatusCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeCANTaxStatus[] items?;
};

public type WorkLocationAddress record {
    @jsondata:Name {value: "AddressLine2"}
    string addressLine2?;
    @jsondata:Name {value: "AddressLine1"}
    string addressLine1?;
    @jsondata:Name {value: "State"}
    string state?;
    @jsondata:Name {value: "Country"}
    string country?;
    @jsondata:Name {value: "PostalCode"}
    string postalCode?;
    @jsondata:Name {value: "City"}
    string city?;
};

# Represents the Queries record for the operation: MaritalStatus_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type MaritalStatusGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type EmployeeIRLTaxRPN record {
    @jsondata:Name {value: "EmploymentCessationDate"}
    string employmentCessationDate?;
    @jsondata:Name {value: "PreviousEmployeePPSN"}
    string previousEmployeePPSN?;
    @jsondata:Name {value: "LegalEntity"}
    LegalEntity legalEntity?;
    @jsondata:Name {value: "PayForUSCToDate"}
    decimal payForUSCToDate?;
    @jsondata:Name {value: "PrsiClass"}
    string prsiClass?;
    @jsondata:Name {value: "FamilyName"}
    string familyName?;
    @jsondata:Name {value: "RpnIssueDate"}
    string rpnIssueDate?;
    @jsondata:Name {value: "EmployerReference"}
    string employerReference?;
    @jsondata:Name {value: "PRSIExempt"}
    boolean pRSIExempt?;
    @jsondata:Name {value: "UscRatePercent3"}
    decimal uscRatePercent3?;
    @jsondata:Name {value: "LptToDeduct"}
    decimal lptToDeduct?;
    @jsondata:Name {value: "UscRatePercent2"}
    decimal uscRatePercent2?;
    @jsondata:Name {value: "UscRatePercent1"}
    decimal uscRatePercent1?;
    @jsondata:Name {value: "EmployeePpsn"}
    string employeePpsn?;
    @jsondata:Name {value: "UscRatePercent4"}
    decimal uscRatePercent4?;
    @jsondata:Name {value: "IncomeTaxCalculationBasis"}
    string incomeTaxCalculationBasis?;
    @jsondata:Name {value: "TaxRatePercent1"}
    decimal taxRatePercent1?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "PayForIncomeTaxToDate"}
    decimal payForIncomeTaxToDate?;
    @jsondata:Name {value: "EmploymentID"}
    string employmentID?;
    @jsondata:Name {value: "UscDeductedToDate"}
    decimal uscDeductedToDate?;
    @jsondata:Name {value: "TaxRatePercent2"}
    decimal taxRatePercent2?;
    @jsondata:Name {value: "ExclusionOrder"}
    boolean exclusionOrder?;
    @jsondata:Name {value: "RpnNumber"}
    string rpnNumber?;
    @jsondata:Name {value: "YearlyRateCutOff1"}
    decimal yearlyRateCutOff1?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "IncomeTaxDeductedToDate"}
    decimal incomeTaxDeductedToDate?;
    @jsondata:Name {value: "YearlyUSCRateCutOff2"}
    decimal yearlyUSCRateCutOff2?;
    @jsondata:Name {value: "YearlyTaxCredits"}
    decimal yearlyTaxCredits?;
    @jsondata:Name {value: "YearlyUSCRateCutOff3"}
    decimal yearlyUSCRateCutOff3?;
    @jsondata:Name {value: "YearlyUSCRateCutOff1"}
    decimal yearlyUSCRateCutOff1?;
    @jsondata:Name {value: "UscStatus"}
    string uscStatus?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "TaxYear"}
    int:Signed32 taxYear?;
};

public type EmployeeBalanceTransaction record {
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "ExpiryDate"}
    string expiryDate?;
    @jsondata:Name {value: "Delta"}
    decimal delta?;
    @jsondata:Name {value: "TransactionSource"}
    int:Signed32 transactionSource?;
    @jsondata:Name {value: "TAFWXRefCode"}
    string tAFWXRefCode?;
    @jsondata:Name {value: "GrantDelta"}
    decimal grantDelta?;
    @jsondata:Name {value: "ApprovalStatus"}
    string approvalStatus?;
    @jsondata:Name {value: "TransactionDate"}
    string transactionDate?;
};

public type PayloadEmployee record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    Employee data?;
};

# Represents the Queries record for the operation: OperatingHours_Get_By_startDate_endDate_orgUnitXRefCode_clientNamespace
public type OperatingHoursGetByStartDateEndDateOrgUnitXRefCodeClientNamespaceQueries record {
    # Date to represent the end of the period for which operating hours should be retrieved. Format yyyy-mm-dd
    string endDate;
    # Date to represent the start of the period for which operating hours should be retrieved. Format yyyy-mm-dd
    string startDate;
    # The unique identifier (external reference code) of the organization to be retrieved. The value provided must be the exact match for an organization
    string orgUnitXRefCode;
};

# Represents the Queries record for the operation: EmployeeDisability_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeDisabilityGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeeRawPunches_GetEmployeeRawPunches_By_filterTransactionStartTimeUTC_filterTransactionEndTimeUTC_employeeXRefCode_employeeBadge_punchState_punchTypes_pageSize_clientNamespace
public type EmployeeRawPunchesGetEmployeeRawPunchesByFilterTransactionStartTimeUTCFilterTransactionEndTimeUTCEmployeeXRefCodeEmployeeBadgePunchStatePunchTypesPageSizeClientNamespaceQueries record {
    # The state of the punch. Examples: [PROCESSED, REJECTED, ALL]
    string punchState?;
    # The badge number of the employee to be retrieved. The value provided must be the exact match for a badge
    string employeeBadge?;
    # Inclusive transaction period end date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    string filterTransactionEndTimeUTC;
    # Comma separated values of punch types. Example: [Punch_In, Break_Out, Job_Transfer, ALL, etc]
    string punchTypes?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # The unique identifier (external reference code) of the employee to be retrieved. The value provided must be the exact match for an employee
    string employeeXRefCode?;
    # Inclusive transaction period start date in UTC to determine which employee punch data to retrieve. Example: 2017-01-01T00:00:00
    string filterTransactionStartTimeUTC;
};

public type PayrollCountry record {
    @jsondata:Name {value: "ConnectedPayCountry"}
    boolean connectedPayCountry?;
    @jsondata:Name {value: "CountryName"}
    string countryName?;
    @jsondata:Name {value: "PayGroup"}
    boolean payGroup?;
    @jsondata:Name {value: "HCMPayrollCountry"}
    boolean hCMPayrollCountry?;
    @jsondata:Name {value: "IPSEnabled"}
    boolean iPSEnabled?;
    @jsondata:Name {value: "DefaultTimeZoneXRefCode"}
    string defaultTimeZoneXRefCode?;
    @jsondata:Name {value: "DefaultTimeZoneName"}
    string defaultTimeZoneName?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
};

public type PayloadIEnumerableLaborValidationRule record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LaborValidationRule[] data?;
};

# Represents the Queries record for the operation: EmployeeDependentsBeneficiaries_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeDependentsBeneficiariesGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: LegacyLaborMetric_DeleteLegacyLaborMetric_By_legacyLaborMetricType_legacyLaborMetricXRefCode_clientNamespace
public type LegacyLaborMetricDeleteLegacyLaborMetricByLegacyLaborMetricTypeLegacyLaborMetricXRefCodeClientNamespaceQueries record {
    string legacyLaborMetricXRefCode;
    string legacyLaborMetricType;
};

public type PayloadIEnumerableEmployeePayrollTax record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeePayrollTax[] data?;
};

public type PaginatedPayloadPersonManagementHistory record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    PersonManagementHistory data?;
};

public type EmploymentIndicator record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeSchedulePostAPIResponse record {
    @jsondata:Name {value: "EmployeeScheduleXRefCode"}
    string employeeScheduleXRefCode?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
};

public type PayloadIEnumerableEmployeeUKPostgraduateLoan record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUKPostgraduateLoan[] data?;
};

public type BenefitsDFLinkExportCareProvider record {
    @jsondata:Name {value: "ProviderId"}
    string providerId?;
    @jsondata:Name {value: "EntityIDCode"}
    string entityIDCode?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "RelationshipCode"}
    string relationshipCode?;
    @jsondata:Name {value: "ProviderIDQualifier"}
    string providerIDQualifier?;
};

public type JobStepPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PRTaxResidentCode record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LaborValidationRule record {
    @jsondata:Name {value: "PolicyXRefCode"}
    string policyXRefCode?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "CodeName"}
    string codeName?;
    @jsondata:Name {value: "Sequence"}
    int:Signed32 sequence?;
    @jsondata:Name {value: "ValidationErrorMessage"}
    string validationErrorMessage?;
    @jsondata:Name {value: "Name"}
    string name?;
    @jsondata:Name {value: "SeverityLevel"}
    int:Signed32 severityLevel = 4;
    @jsondata:Name {value: "Active"}
    boolean active?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "EffectiveFrom"}
    string effectiveFrom?;
    @jsondata:Name {value: "Models"}
    LaborValidationModel[] models?;
    @jsondata:Name {value: "Children"}
    LaborValidationQualifier[] children?;
    @jsondata:Name {value: "Qualifiers"}
    LaborValidationQualifier[] qualifiers?;
    @jsondata:Name {value: "PolicyId"}
    int:Signed32 policyId?;
    @jsondata:Name {value: "EffectiveTo"}
    string effectiveTo?;
};

# Represents the Queries record for the operation: Certification_Post_By_certification_isValidateOnly_clientNamespace
public type CertificationPostByCertificationIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeEmploymentType_Patch_By_employeeEmploymentType_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEmploymentTypePatchByEmployeeEmploymentTypeXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeConfidentialIdentification record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeConfidentialIdentification[] data?;
};

public type EmploymentAgreementType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmployeeEarningParameterCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeEarningParameter[] items?;
};

public type ContactInformationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ContactInformationTypeGroup"}
    ContactInformationTypeGroup contactInformationTypeGroup?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type UserPayAdjustCodeGroup record {
    @jsondata:Name {value: "PayAdjCodeGroup"}
    PayAdjCodeGroup payAdjCodeGroup?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LaborCostResult record {
    @jsondata:Name {value: "Intervals"}
    LaborCostTimeInterval[] intervals?;
    @jsondata:Name {value: "CalendarDate"}
    string calendarDate?;
    @jsondata:Name {value: "Totals"}
    LaborCostTotalResult totals?;
    @jsondata:Name {value: "Currency"}
    string currency?;
    @jsondata:Name {value: "LocationXRefCode"}
    string locationXRefCode?;
};

public type DeductionLimit record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "LimitAccessType"}
    LimitAccessType limitAccessType?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "AccumulationType"}
    AccumulationType accumulationType?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "LimitType"}
    LimitType limitType?;
};

public type ApplicantResume record {
    @jsondata:Name {value: "HrXml"}
    string hrXml?;
    @jsondata:Name {value: "Html"}
    string html?;
    @jsondata:Name {value: "Text"}
    string text?;
    @jsondata:Name {value: "Json"}
    CandidateDetails json?;
    @jsondata:Name {value: "File"}
    FileDetails file?;
};

public type EmployeeEarningSummary record {
    @jsondata:Name {value: "EarningGroupingsSumUp"}
    boolean earningGroupingsSumUp?;
    @jsondata:Name {value: "RateOfPay"}
    decimal rateOfPay?;
    @jsondata:Name {value: "NationalIdNumber"}
    string nationalIdNumber?;
    @jsondata:Name {value: "FEIN"}
    string fEIN?;
    @jsondata:Name {value: "GrossOtherEarningYTD"}
    decimal grossOtherEarningYTD?;
    @jsondata:Name {value: "FirstName"}
    string firstName?;
    @jsondata:Name {value: "TerminationDate"}
    string terminationDate?;
    @jsondata:Name {value: "LegalEntityAddress"}
    LegalEntityAddress legalEntityAddress?;
    @jsondata:Name {value: "EmploymentStatus"}
    string employmentStatus?;
    @jsondata:Name {value: "PayType"}
    string payType?;
    @jsondata:Name {value: "GrossEarningYTD"}
    decimal grossEarningYTD?;
    @jsondata:Name {value: "EmploymentType"}
    string employmentType?;
    @jsondata:Name {value: "GrossOverTimeEarningYTD"}
    decimal grossOverTimeEarningYTD?;
    @jsondata:Name {value: "GrossNormalEarningYTD"}
    decimal grossNormalEarningYTD?;
    @jsondata:Name {value: "PayFrequency"}
    string payFrequency?;
    @jsondata:Name {value: "Year"}
    int:Signed32 year?;
    @jsondata:Name {value: "LegalEntityName"}
    string legalEntityName?;
    @jsondata:Name {value: "HireDate"}
    string hireDate?;
    @jsondata:Name {value: "EmployeeResidentialAddress"}
    EmployeeAddress employeeResidentialAddress?;
    @jsondata:Name {value: "JobAssignment"}
    string jobAssignment?;
    @jsondata:Name {value: "LastName"}
    string lastName?;
    @jsondata:Name {value: "GrossCommissionEarningYTD"}
    decimal grossCommissionEarningYTD?;
    @jsondata:Name {value: "GrossBonusEarningYTD"}
    decimal grossBonusEarningYTD?;
    @jsondata:Name {value: "LastPayrollPayDate"}
    string lastPayrollPayDate?;
};

public type LaborMetricsType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type BidderInfo record {
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "CurrentWeeklyHours"}
    decimal currentWeeklyHours?;
    @jsondata:Name {value: "BaseRate"}
    decimal baseRate?;
    @jsondata:Name {value: "SeniorityDate"}
    string seniorityDate?;
};

public type EmployeeHealthWellness record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "TobaccoUser"}
    string tobaccoUser?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "DateLastSmoked"}
    string dateLastSmoked?;
};

public type ParameterAccessType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadIEnumerableEarningDefinition record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EarningDefinition[] data?;
};

# Represents the Queries record for the operation: EmployeeSchedules_Get_By_xRefCode_filterScheduleStartDate_filterScheduleEndDate_isPosted_expand_clientNamespace
public type EmployeeSchedulesGetByXRefCodeFilterScheduleStartDateFilterScheduleEndDateIsPostedExpandClientNamespaceQueries record {
    # This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document
    string expand?;
    # A flag to determine whether to display posted schedules.By default it searches for published schedules
    boolean isPosted?;
    # Exclusive period end aligned to the employee business day start to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    string filterScheduleEndDate;
    # Inclusive period start aligned to the employee business day start date to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    string filterScheduleStartDate;
};

public type OrgUnitLocationType record {
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "LocationType"}
    OrgLocationType locationType?;
};

public type LaborMetricTypeForSubmit record {
    @jsondata:Name {value: "IsDeleted"}
    boolean isDeleted?;
    @jsondata:Name {value: "LaborMetricTypeXRefCode"}
    string laborMetricTypeXRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
};

public type EarningCode record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "EarningType"}
    EarningType earningType?;
};

public type LegalEntityDEUShortTimeWork record {
    @jsondata:Name {value: "LegalEntityDEUShortTimeWorkID"}
    int:Signed32 legalEntityDEUShortTimeWorkID?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "StoppageNumber"}
    string stoppageNumber?;
};

# Represents the Queries record for the operation: LaborMetricTypes_LaborMetricType_By_laborMetricTypeData_laborMetricTypeXRefCode_isValidateOnly_clientNamespace
public type LaborMetricTypesLaborMetricTypeByLaborMetricTypeDataLaborMetricTypeXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
    # Labor Metric Type XRefCode
    string laborMetricTypeXRefCode;
};

public type CandidateScreeningDetailedResult record {
    @jsondata:Name {value: "Status"}
    string status?;
    @jsondata:Name {value: "ReportIdentifier"}
    string reportIdentifier?;
    @jsondata:Name {value: "ScreeningType"}
    string screeningType?;
    @jsondata:Name {value: "CompletionDate"}
    string completionDate?;
    @jsondata:Name {value: "Result"}
    string result?;
};

public type EmployeePayrollTax record {
    @jsondata:Name {value: "Addresses"}
    string[] addresses?;
    @jsondata:Name {value: "TaxType"}
    string taxType?;
    @jsondata:Name {value: "LegalEntity"}
    string legalEntity?;
    @jsondata:Name {value: "ManuallyAddedTax"}
    boolean manuallyAddedTax?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "EmployeeTax"}
    boolean employeeTax?;
    @jsondata:Name {value: "EmployerTax"}
    boolean employerTax?;
    @jsondata:Name {value: "TaxAuthorityInstance"}
    string taxAuthorityInstance?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "TaxAuthority"}
    string taxAuthority?;
    @jsondata:Name {value: "ResidentCode"}
    string residentCode?;
    @jsondata:Name {value: "Name"}
    EmployeePayrollTaxName name?;
};

# Represents the Queries record for the operation: EmployeeDEUTaxSocialInsurance_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeDEUTaxSocialInsuranceGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeeUKTaxDetails_Patch_By_employeeUKTaxDetails_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKTaxDetailsPatchByEmployeeUKTaxDetailsXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type DeductionPayee record {
    @jsondata:Name {value: "PayeeXRefCode"}
    string payeeXRefCode?;
    @jsondata:Name {value: "PayeeParameters"}
    DeductionPayeeParameter[] payeeParameters?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "PayeeName"}
    string payeeName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "Default"}
    boolean default?;
};

# Represents the Queries record for the operation: EmployeeEmploymentType_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeEmploymentTypeGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeePerformanceRating_Post_By_employeePerformanceRating_xRefCode_isValidateOnly_clientNamespace
public type EmployeePerformanceRatingPostByEmployeePerformanceRatingXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type EmployeeCANFederalTaxCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeCANFederalTax[] items?;
};

public type EmployeePayrollTaxParameterElementName record {
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
};

public type PaginatedPayloadIEnumerableEmployeeWorkLocationOverride record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeeWorkLocationOverride[] data?;
};

public type PayloadIEnumerableEmployeeEmergencyContact record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeEmergencyContact[] data?;
};

public type PayloadIEnumerableKpiData record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    KpiData[] data?;
};

public type CandidateRTWDocumentGenericError record {
    @jsondata:Name {value: "Message"}
    string message?;
    @jsondata:Name {value: "Code"}
    string code?;
};

# Represents the Queries record for the operation: PlanTargets_Post_By_planTargetApiModel_isValidateOnly_clientNamespace
public type PlanTargetsPostByPlanTargetApiModelIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type EmployeeCompensation record {
    @jsondata:Name {value: "NormalSemiMonthlyHoursBottom"}
    decimal normalSemiMonthlyHoursBottom?;
    @jsondata:Name {value: "VacationRate"}
    decimal vacationRate?;
    @jsondata:Name {value: "PayPolicy"}
    PayPolicy payPolicy?;
    @jsondata:Name {value: "ChangeValue"}
    decimal changeValue?;
    @jsondata:Name {value: "NormalSemiMonthlyHoursTop"}
    decimal normalSemiMonthlyHoursTop?;
    @jsondata:Name {value: "PreviousBaseRate"}
    decimal previousBaseRate?;
    @jsondata:Name {value: "EmploymentStatusReason"}
    EmploymentStatusReason employmentStatusReason?;
    @jsondata:Name {value: "BaseRate"}
    decimal baseRate?;
    @jsondata:Name {value: "AverageDailyHours"}
    decimal averageDailyHours?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "NormalWeeklyHours"}
    decimal normalWeeklyHours?;
    @jsondata:Name {value: "ControlRate"}
    decimal controlRate?;
    @jsondata:Name {value: "PreviousBaseSalary"}
    decimal previousBaseSalary?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "AverageOvertimeRate"}
    decimal averageOvertimeRate?;
    @jsondata:Name {value: "ChangePercent"}
    decimal changePercent?;
    @jsondata:Name {value: "PayGrade"}
    PayGrade payGrade?;
    @jsondata:Name {value: "BaseSalary"}
    decimal baseSalary?;
    @jsondata:Name {value: "ControlSalary"}
    decimal controlSalary?;
    @jsondata:Name {value: "MaximumSalary"}
    decimal maximumSalary?;
    @jsondata:Name {value: "MaximumRate"}
    decimal maximumRate?;
    @jsondata:Name {value: "PayGroup"}
    PayGroup payGroup?;
    @jsondata:Name {value: "PayClass"}
    PayClass payClass?;
    @jsondata:Name {value: "EmployeeNumber"}
    string employeeNumber?;
    @jsondata:Name {value: "BaseRateManuallySet"}
    boolean baseRateManuallySet?;
    @jsondata:Name {value: "AlternateRate"}
    decimal alternateRate?;
    @jsondata:Name {value: "PayType"}
    PayType payType?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "SalaryMidPoint"}
    decimal salaryMidPoint?;
    @jsondata:Name {value: "MinimumRate"}
    decimal minimumRate?;
    @jsondata:Name {value: "DailyRate"}
    decimal dailyRate?;
    @jsondata:Name {value: "MinimumSalary"}
    decimal minimumSalary?;
    @jsondata:Name {value: "LastPayEditDate"}
    string lastPayEditDate?;
    @jsondata:Name {value: "RateMidPoint"}
    decimal rateMidPoint?;
    @jsondata:Name {value: "RatePolicy"}
    JobStepPolicy ratePolicy?;
    @jsondata:Name {value: "CompRatio"}
    decimal compRatio?;
};

public type EmploymentAgreementSettlement record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeOnboardingPolicies_Patch_By_employeeOnboardingPolicy_xRefCode_isValidateOnly_clientNamespace
public type EmployeeOnboardingPoliciesPatchByEmployeeOnboardingPolicyXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeHRIncidentCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeHRIncident[] items?;
};

public type DocMgmtSecurityGroupUserMapCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDocumentManagementSecurityGroup[] items?;
};

# Represents the Queries record for the operation: EmployeeUKTaxDetails_Post_By_employeeUKTaxDetails_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKTaxDetailsPostByEmployeeUKTaxDetailsXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeDependentsBeneficiariesAddressCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeDependentsBeneficiariesAddress[] items?;
};

# Represents the Queries record for the operation: KpiData_Patch_By_orgUnitXRefCode_kpiXRefCode_kpiDataType_timePeriod_models_AggregateToDay_isValidateOnly_clientNamespace
public type KpiDataPatchByOrgUnitXRefCodeKpiXRefCodeKpiDataTypeTimePeriodModelsAggregateToDayIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
    # KPI time period - Enter values for either minute, day or week
    string timePeriod;
    # KPI reference code
    string kpiXRefCode;
    # Org unit reference code
    string orgUnitXRefCode;
    # Aggregate to day will be set to true by default. This will aggregate data from minute to day
    @http:Query {name: "AggregateToDay"}
    boolean aggregateToDay?;
    # KPI data type - Enter values for either actual, plan or forecast
    string kpiDataType;
};

public type EmploymentStatusGroup record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeUKNIDetails_Post_By_employeeNi_xRefCode_isValidateOnly_clientNamespace
public type EmployeeUKNIDetailsPostByEmployeeNiXRefCodeIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: AnalyticsReports_RefreshDatasetAsync_By_reqBody_datasetId_isValidateOnly_clientNamespace
public type AnalyticsReportsRefreshDatasetAsyncByReqBodyDatasetIdIsValidateOnlyClientNamespaceQueries record {
    # This parameter is applied here for testing purposes. Please remember to remove it when utilizing this endpoint to actually refresh the dataset
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: BackgroundScreening_PostScreeningStatuses_By_statusList_isValidateOnly_clientNamespace
public type BackgroundScreeningPostScreeningStatusesByStatusListIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type RelationshipType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Report meta data that defines report parameters.
# Parameter values are supplied by the end-user for execution.
# All parameters must be supplied during execution.
# Not all Parameters have default value
public type AnalyticsReportFilterMetadata record {
    # Operator type of the parameter, such as =, &lt;, &gt;=, etc...
    # Not all parameters have operator type.
    # For example, SQL Parameters don't have operators
    @jsondata:Name {value: "Operator"}
    string operator?;
    # Description of the Parameter.
    # The description will be localized, based on the Session Culture
    @jsondata:Name {value: "Description"}
    string description?;
    # True if a value needs to be supplied
    @jsondata:Name {value: "IsRequired"}
    boolean isRequired?;
    # Value that will be used.
    # Reference values should contain Ids and be comma separated. E.g "1,2,3"
    @jsondata:Name {value: "Value"}
    string value?;
    # List of available values a parameter can have
    @jsondata:Name {value: "AvailableValues"}
    AnalyticsListValue[] availableValues?;
    # Data type of the parameter
    @jsondata:Name {value: "DataType"}
    string dataType?;
    # True if the operator is editable
    @jsondata:Name {value: "Editable"}
    boolean editable?;
    # Sequence of the filter
    @jsondata:Name {value: "Sequence"}
    int:Signed32 sequence?;
    # Name of the parameter
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: EarningStatement_Get_By_pageSize_payGroupXRefCode_payDate_payPeriodStartDate_payPeriodEndDate_ppn_employeeXRefCodes_employeeLastNames_employeePayDateBegin_employeePayDateEnd_clientNamespace
public type EarningStatementGetByPageSizePayGroupXRefCodePayDatePayPeriodStartDatePayPeriodEndDatePpnEmployeeXRefCodesEmployeeLastNamesEmployeePayDateBeginEmployeePayDateEndClientNamespaceQueries record {
    # Comma delimited list of last names for employees
    string employeeLastNames?;
    # The pay run's period start date (format: yyyy-mm-dd)
    string payPeriodStartDate?;
    # Comma delimited list of XRef codes for employees
    string employeeXRefCodes?;
    # The employee's pay start date(format: yyyy-mm-dd)
    string employeePayDateBegin?;
    # The employee's pay end date(format: yyyy-mm-dd)
    string employeePayDateEnd?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # The pay group's reference code
    string payGroupXRefCode?;
    # The pay run's period end date (format: yyyy-mm-dd)
    string payPeriodEndDate?;
    # The pay run's pay date (format: yyyy-mm-dd)
    string payDate?;
    # The PayPeriodNumber(format: ##-##)
    string ppn?;
};

# Represents the Queries record for the operation: BenefitsDFLinkExports_GetBenefitsDFLinkOngoingExport_By_carrierXRefCode_planStartDate_planEndDate_payrollEarningAccumulationXRefCodes_blackoutPeriodStartDate_lookBackDays_lookForwardDays_clientNamespace
public type BenefitsDFLinkExportsGetBenefitsDFLinkOngoingExportByCarrierXRefCodePlanStartDatePlanEndDatePayrollEarningAccumulationXRefCodesBlackoutPeriodStartDateLookBackDaysLookForwardDaysClientNamespaceQueries record {
    # A reference code that maps to a given carrier
    string carrierXRefCode;
    # If applicable, the blackout period start date
    string blackoutPeriodStartDate?;
    # The number of days the export will look back from execution date to find employee elections
    int:Signed32 lookBackDays?;
    # A comma delimited list of reference codes, mapping to a list of individual payroll earning accumulations
    string payrollEarningAccumulationXRefCodes?;
    # The number of days the export will look forward from execution date to find employee elections
    int:Signed32 lookForwardDays?;
    # The plan start date
    string planStartDate;
    # The plan end date
    string planEndDate;
};

public type EVerify record {
    @jsondata:Name {value: "EVerifyStatusDate"}
    string eVerifyStatusDate?;
    @jsondata:Name {value: "EVerifyCaseNumber"}
    string eVerifyCaseNumber?;
    @jsondata:Name {value: "EVerifyStatus"}
    string eVerifyStatus?;
    @jsondata:Name {value: "EVerifyStatusDesc"}
    string eVerifyStatusDesc?;
};

public type PayloadIEnumerablePlanLaborStandardDriver record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PlanLaborStandardDriver[] data?;
};

# Represents the Queries record for the operation: EmployeeAuthorizationAssignment_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeAuthorizationAssignmentGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: EmployeePayAdjustments_Post_By_payAdjustment_isValidateOnly_isValidateLabor_clientNamespace
public type EmployeePayAdjustmentsPostByPayAdjustmentIsValidateOnlyIsValidateLaborClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operations validate the request without applying updates to the database
    boolean isValidateOnly?;
    # When a TRUE value is used in this parameter, POST operations validate against Labor Validation Engine to verify pay adjustment follows rules/qualifiers created
    boolean isValidateLabor?;
};

public type BenefitsDFLinkExportDependentElectionDetail record {
    @jsondata:Name {value: "CoverageEndDate"}
    string coverageEndDate?;
    @jsondata:Name {value: "EffectiveEndDate"}
    string effectiveEndDate?;
    @jsondata:Name {value: "PlanCode"}
    string planCode?;
    @jsondata:Name {value: "PolicyNumber"}
    string policyNumber?;
    @jsondata:Name {value: "EmployeeElectionId"}
    int:Signed32 employeeElectionId?;
    @jsondata:Name {value: "OptionCode"}
    string optionCode?;
    @jsondata:Name {value: "CareProviderDetails"}
    BenefitsDFLinkExportCareProvider[] careProviderDetails?;
    @jsondata:Name {value: "PlanTypeCode"}
    string planTypeCode?;
    @jsondata:Name {value: "PlanXrefCode"}
    string planXrefCode?;
    @jsondata:Name {value: "UniqueDependentId"}
    int:Signed32 uniqueDependentId?;
    @jsondata:Name {value: "RecordType"}
    string recordType?;
    @jsondata:Name {value: "PlanSubTypeCode"}
    string planSubTypeCode?;
    @jsondata:Name {value: "CoverageStartDate"}
    string coverageStartDate?;
    @jsondata:Name {value: "EffectiveStartDate"}
    string effectiveStartDate?;
    @jsondata:Name {value: "PlanStartDate"}
    string planStartDate?;
};

public type HRConfigurationEntity record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
};

# Represents the Queries record for the operation: EmployeeLocation_Patch_By_location_xRefCode_isValidateOnly_clientNamespace
public type EmployeeLocationPatchByLocationXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeDEUTax_Patch_By_deuEmployeeWageTax_xRefCode_isValidateOnly_clientNamespace
public type EmployeeDEUTaxPatchByDeuEmployeeWageTaxXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type LaborMetricType record {
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "LaborMetricTypeXRefCode"}
    string laborMetricTypeXRefCode?;
    @jsondata:Name {value: "ClockTransferCode"}
    string clockTransferCode?;
    @jsondata:Name {value: "Name"}
    string name?;
};

# Represents the Queries record for the operation: Departments_Post_By_department_isValidateOnly_clientNamespace
public type DepartmentsPostByDepartmentIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: MaritalStatus_Post_By_maritalStatus_xRefCode_isValidateOnly_clientNamespace
public type MaritalStatusPostByMaritalStatusXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeConfidentialIdentification record {
    @jsondata:Name {value: "ConfidentialIdentificationType"}
    ConfidentialIdentificationType confidentialIdentificationType?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "ExpiryDate"}
    string expiryDate?;
    @jsondata:Name {value: "RTWDocReviewOn"}
    string rTWDocReviewOn?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "RTWDocReview"}
    string rTWDocReview?;
    @jsondata:Name {value: "IssueDate"}
    string issueDate?;
    @jsondata:Name {value: "UseForRTW"}
    boolean useForRTW?;
    @jsondata:Name {value: "CountryCode"}
    string countryCode?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PlaceOfIssue"}
    string placeOfIssue?;
    @jsondata:Name {value: "IDNumber"}
    string iDNumber?;
};

# Represents the Queries record for the operation: EmployeeRole_Post_By_employeeRole_xRefCode_isValidateOnly_clientNamespace
public type EmployeeRolePostByEmployeeRoleXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeShortTimeWork record {
    @jsondata:Name {value: "EmployeeShortTimeWorkId"}
    int:Signed32 employeeShortTimeWorkId?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "IncreasedRate"}
    boolean increasedRate?;
    @jsondata:Name {value: "Consent"}
    boolean consent?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "DEUSTWParticipationReason"}
    DEUSTWParticipationReason dEUSTWParticipationReason?;
    @jsondata:Name {value: "LegalEntityDEUShortTimeWork"}
    LegalEntityDEUShortTimeWork legalEntityDEUShortTimeWork?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeBalanceTransactions_Post_By_employeeBalanceTransaction_isValidateOnly_clientNamespace
public type EmployeeBalanceTransactionsPostByEmployeeBalanceTransactionIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

public type DisabilityWorkingTime record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "DisabilityWorkingTimeId"}
    int:Signed32 disabilityWorkingTimeId?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type FLSAStatus record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PayloadPayRunStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    PayRunStatus data?;
};

# Represents the Queries record for the operation: EmployeeWorkAssignment_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeWorkAssignmentGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type ProjectAssignmentType record {
    @jsondata:Name {value: "XrefCodes"}
    string[] xrefCodes?;
    @jsondata:Name {value: "IsAssignedAll"}
    boolean isAssignedAll?;
};

# Represents the Queries record for the operation: Courses_Patch_By_course_xRefCode_isValidateOnly_clientNamespace
public type CoursesPatchByCourseXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
    # The course payload that will be used for course creation
    string xRefCode;
};

# Represents the Queries record for the operation: EmployeeSchedules_Get_By_filterScheduleStartDate_filterScheduleEndDate_employeeXRefCode_departmentXRefCode_jobXRefCode_positionXRefCode_orgUnitXRefCode_unfill_expand_pageSize_clientNamespace
public type EmployeeSchedulesGetByFilterScheduleStartDateFilterScheduleEndDateEmployeeXRefCodeDepartmentXRefCodeJobXRefCodePositionXRefCodeOrgUnitXRefCodeUnfillExpandPageSizeClientNamespaceQueries record {
    # This parameter accepts a comma-separated list of top-level entities that contain the data elements needed for downstream processing.  When this parameter is not used, only data elements from the master record will be included.  For more information, please refer to the Introduction to Dayforce Web Services document
    string expand?;
    # When a TRUE value is used in this parameter, the API returns all Unfill shifts.
    #                                  When a FALSE value is used in this parameter, only employee schdules are returned
    boolean unfill?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # Exclusive period end aligned to the employee business day start to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    string filterScheduleEndDate;
    # Only valid when Unfill = FALSE or not provided
    string employeeXRefCode?;
    string jobXRefCode?;
    # Inclusive period start aligned to the employee business day start date to determine which employee schedule data to retrieve . Example: 2017-01-01T13:24:56
    string filterScheduleStartDate;
    string positionXRefCode?;
    string departmentXRefCode?;
    # Not required when Unfill = TRUE, Will send all unfilled shifts for the specified date range
    string orgUnitXRefCode?;
};

public type SuperannuationContributionType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: PayrollElections_DeleteElections_By_payrollElections_isValidateOnly_clientNamespace
public type PayrollElectionsDeleteElectionsByPayrollElectionsIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: UserPayAdjustCodeGroup_Patch_By_userPayAdjCodeGroup_xRefCode_isValidateOnly_clientNamespace
public type UserPayAdjustCodeGroupPatchByUserPayAdjCodeGroupXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type EmployeeIRLTaxEWSS record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "LegalEntity"}
    LegalEntity legalEntity?;
    @jsondata:Name {value: "LegalEntityXrefCode"}
    string legalEntityXrefCode?;
    @jsondata:Name {value: "IsEWSSEligible"}
    boolean isEWSSEligible?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type PersonManagementHistory record {
    @jsondata:Name {value: "Policy"}
    string[] policy?;
    @jsondata:Name {value: "ValidationMessage"}
    Validation validationMessage?;
    @jsondata:Name {value: "ApprovedBy"}
    string approvedBy?;
    @jsondata:Name {value: "TerminationDate"}
    string terminationDate?;
    @jsondata:Name {value: "PersonType"}
    string personType?;
    @jsondata:Name {value: "RemovalAction"}
    string removalAction?;
    @jsondata:Name {value: "PurgeDate"}
    string purgeDate?;
    @jsondata:Name {value: "Name"}
    string name?;
};

public type Payee record {
    @jsondata:Name {value: "OperatingCountryName"}
    string operatingCountryName?;
    @jsondata:Name {value: "Description"}
    string description?;
    @jsondata:Name {value: "PayeeCategoryName"}
    string payeeCategoryName?;
    @jsondata:Name {value: "BusinessNumber"}
    string businessNumber?;
    @jsondata:Name {value: "DeductionPayee"}
    boolean deductionPayee?;
    @jsondata:Name {value: "Address"}
    PayeeAddress address?;
    @jsondata:Name {value: "PayeeCategoryXRefCode"}
    string payeeCategoryXRefCode?;
    @jsondata:Name {value: "HealthCareProvider"}
    PayeeHealthCareProvider healthCareProvider?;
    @jsondata:Name {value: "Name"}
    string name?;
    @jsondata:Name {value: "PayeeParameters"}
    PayeeParameter[] payeeParameters?;
    @jsondata:Name {value: "Active"}
    boolean active?;
    @jsondata:Name {value: "StateCoverage"}
    PayeeStateCoverage[] stateCoverage?;
    @jsondata:Name {value: "SystemPayee"}
    boolean systemPayee?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "UniqueSuperIdentifier"}
    string uniqueSuperIdentifier?;
    @jsondata:Name {value: "EarningPayee"}
    boolean earningPayee?;
    @jsondata:Name {value: "PaymentMethod"}
    PayeePaymentMethod paymentMethod?;
    @jsondata:Name {value: "ElectronicServiceAddress"}
    string electronicServiceAddress?;
    @jsondata:Name {value: "OperatingCountryCode"}
    string operatingCountryCode?;
};

public type OperatingHoursExceptionDay record {
    @jsondata:Name {value: "ExceptionStartDateTime"}
    string exceptionStartDateTime?;
    @jsondata:Name {value: "ExceptionDescription"}
    string exceptionDescription?;
    @jsondata:Name {value: "IsClosed"}
    string isClosed?;
    @jsondata:Name {value: "OperatingHoursRecurExceptionDetails"}
    OperatingHoursRecurExceptionDetails operatingHoursRecurExceptionDetails?;
    @jsondata:Name {value: "ExceptionEndDateTime"}
    string exceptionEndDateTime?;
    @jsondata:Name {value: "ExceptionName"}
    string exceptionName?;
};

public type PositionAssignment record {
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "BudgetedHeadCount"}
    decimal budgetedHeadCount?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "Location"}
    Location location?;
};

public type PFRatingScale record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type OperatingHoursDayPattern record {
    @jsondata:Name {value: "SaturdayEndTime"}
    string saturdayEndTime?;
    @jsondata:Name {value: "ThursdayStartTime"}
    string thursdayStartTime?;
    @jsondata:Name {value: "ThursdayEndTime"}
    string thursdayEndTime?;
    @jsondata:Name {value: "SundayStartTime"}
    string sundayStartTime?;
    @jsondata:Name {value: "TuesdayEndTime"}
    string tuesdayEndTime?;
    @jsondata:Name {value: "TuesdayStartTime"}
    string tuesdayStartTime?;
    @jsondata:Name {value: "WednesdayEndTime"}
    string wednesdayEndTime?;
    @jsondata:Name {value: "SundayEndTime"}
    string sundayEndTime?;
    @jsondata:Name {value: "SaturdayStartTime"}
    string saturdayStartTime?;
    @jsondata:Name {value: "MondayEndTime"}
    string mondayEndTime?;
    @jsondata:Name {value: "WednesdayStartTime"}
    string wednesdayStartTime?;
    @jsondata:Name {value: "FridayStartTime"}
    string fridayStartTime?;
    @jsondata:Name {value: "FridayEndTime"}
    string fridayEndTime?;
    @jsondata:Name {value: "MondayStartTime"}
    string mondayStartTime?;
};

public type EmployeeEEO record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type LegalEntityMasterBankAccountSetting record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: Projects_Patch_By_projectData_projectXRefCode_isValidateOnly_clientNamespace
public type ProjectsPatchByProjectDataProjectXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # Project XRefCode
    string projectXRefCode;
    # When a TRUE value is used in this parameter, PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: EmployeeCANStateTax_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeCANStateTaxGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

# Represents the Queries record for the operation: PayrollPayEntry_Get_By_payGroupXRefCode_source_importsFromDate_importsToDate_problemsOnly_periodStartDate_periodEndDate_payDate_ppn_offCyclePayRunXRefCode_importIdentifiers_clientNamespace
public type PayrollPayEntryGetByPayGroupXRefCodeSourceImportsFromDateImportsToDateProblemsOnlyPeriodStartDatePeriodEndDatePayDatePpnOffCyclePayRunXRefCodeImportIdentifiersClientNamespaceQueries record {
    # The time data import history from date
    string importsFromDate?;
    # The off cycle pay run reference code
    string offCyclePayRunXRefCode?;
    # The pay run period start date
    string periodStartDate?;
    # If true, then return only time data which has errors. If false, then return both error and non error records
    boolean problemsOnly?;
    # The time data import source name
    string 'source?;
    # The comma separated list of import identifiers
    string importIdentifiers?;
    # The time data import history to date
    string importsToDate?;
    # The pay run period end date
    string periodEndDate?;
    # The pay run pay date
    string payDate?;
    # The pay run's pay period number (format: ##-##)
    string ppn?;
};

public type EmployeeSkillCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeSkill[] items?;
};

public type Segment record {
    @jsondata:Name {value: "OrgUnitXRefCode"}
    string orgUnitXRefCode?;
    @jsondata:Name {value: "PayAdjCodeXRefCode"}
    string payAdjCodeXRefCode?;
    @jsondata:Name {value: "Comment"}
    string comment?;
    @jsondata:Name {value: "JobXRefCode"}
    string jobXRefCode?;
    @jsondata:Name {value: "TimeEnd"}
    string timeEnd?;
    @jsondata:Name {value: "TimeStart"}
    string timeStart?;
    @jsondata:Name {value: "PositionXRefCode"}
    string positionXRefCode?;
    @jsondata:Name {value: "OrgLocationTypeXRefCode"}
    string orgLocationTypeXRefCode?;
    @jsondata:Name {value: "ProjectXRefCode"}
    string projectXRefCode?;
    @jsondata:Name {value: "DocketXRefCode"}
    string docketXRefCode?;
    @jsondata:Name {value: "LaborMetrics"}
    EmployeeScheduleSegmentLaborMetric[] laborMetrics?;
    @jsondata:Name {value: "NetHours"}
    decimal netHours?;
    @jsondata:Name {value: "DepartmentXRefCode"}
    string departmentXRefCode?;
};

# Represents the Queries record for the operation: EmployeeHCE_Get_By_xRefCode_contextDate_contextDateRangeFrom_contextDateRangeTo_clientNamespace
public type EmployeeHCEGetByXRefCodeContextDateContextDateRangeFromContextDateRangeToClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The Context Date value is an “as-of” date used to determine which employee data to search when records have specific start and end dates.  The service defaults to the current datetime if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDate?;
    # The Context Date Range To value is the end of the range of dates to determine which employee data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type PaginatedPayloadIEnumerableEmployeeRawPunch record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    EmployeeRawPunch[] data?;
};

public type Skills record {
    @jsondata:Name {value: "IsMandatory"}
    boolean isMandatory?;
    @jsondata:Name {value: "SkillLevelXRefCode"}
    string skillLevelXRefCode?;
    @jsondata:Name {value: "SkillXRefCode"}
    string skillXRefCode?;
};

public type EmployeeEmploymentType record {
    @jsondata:Name {value: "TaxPayerId"}
    string taxPayerId?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "GamingProfitsDistributions"}
    boolean gamingProfitsDistributions?;
    @jsondata:Name {value: "PensionType"}
    PensionTypeConfiguration pensionType?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ContractorTaxFormType"}
    string contractorTaxFormType?;
    @jsondata:Name {value: "IR35"}
    boolean iR35?;
    @jsondata:Name {value: "EmploymentType"}
    EmploymentTypeConfig employmentType?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "DBAName"}
    string dBAName?;
};

public type PayloadIEnumerableEmployeeEmploymentStatus record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeEmploymentStatus[] data?;
};

public type QuestionsInResponse record {
    @jsondata:Name {value: "Answers"}
    QuestionAnswers[] answers?;
    @jsondata:Name {value: "Questions"}
    QuestionModel[] questions?;
    @jsondata:Name {value: "Url"}
    string url?;
    @jsondata:Name {value: "RetrievedOnMillis"}
    int retrievedOnMillis?;
};

public type DisabilityEvidenceType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "DisabilityEvidenceTypeId"}
    int:Signed32 disabilityEvidenceTypeId?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: DataPrivacy_PersonManagementEraseHistory_By_pageSize_personType_contextDateRangeFrom_contextDateRangeTo_requestId_clientNamespace
public type DataPrivacyPersonManagementEraseHistoryByPageSizePersonTypeContextDateRangeFromContextDateRangeToRequestIdClientNamespaceQueries record {
    # The Context Date Range From value is the start of the range of dates used to determine which user data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeFrom?;
    # The right to be forgotten request identifier. The value provided must be exact match; otherwise, a bad request (400) error will be returned
    int:Signed32 requestId?;
    # The number of records returned per page in the paginated response
    int:Signed32 pageSize?;
    # Can be either Employee or Candidate
    string personType?;
    # The Context Date Range To value is the end of the range of dates to determine which user data to search when records have specific start and end dates.  The service defaults to null if the requester does not specify a value.  Example: 2017-01-01T13:24:56
    string contextDateRangeTo?;
};

public type ConfidentialIdentificationType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type Patents record {
    @jsondata:Name {value: "_Total"}
    int:Signed32 total?;
    @jsondata:Name {value: "Values"}
    PatentDetails[] values?;
};

public type Zone record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type WorkPatternShiftType record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type EmergencyContactPersonAddressCollection record {
    @jsondata:Name {value: "Items"}
    EmergencyContactPersonAddress[] items?;
};

# Represents the Queries record for the operation: KpiData_Post_By_orgUnitXRefCode_kpiXRefCode_kpiDataType_timePeriod_models_AggregateToDay_isValidateOnly_clientNamespace
public type KpiDataPostByOrgUnitXRefCodeKpiXRefCodeKpiDataTypeTimePeriodModelsAggregateToDayIsValidateOnlyClientNamespaceQueries record {
    boolean isValidateOnly?;
    # KPI time period - Enter values for either minute, day or week
    string timePeriod;
    # KPI reference code
    string kpiXRefCode;
    # Org unit reference code
    string orgUnitXRefCode;
    # Aggregate to day will be set to true by default. This will aggregate data from minute to day
    @http:Query {name: "AggregateToDay"}
    boolean aggregateToDay?;
    # KPI data type - Enter values for either actual, plan or forecast
    string kpiDataType;
};

public type PayloadBoolean record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    boolean data?;
};

public type EmployeeOccupationalPension record {
    @jsondata:Name {value: "PensionProviderXrefCode"}
    string pensionProviderXrefCode?;
    @jsondata:Name {value: "PensionStartDate"}
    string pensionStartDate?;
    @jsondata:Name {value: "PaymentCompletedBy"}
    string paymentCompletedBy?;
    @jsondata:Name {value: "MembershipNumber"}
    string membershipNumber?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

public type OrgUnitLegalEntity record {
    @jsondata:Name {value: "LegalEntity"}
    HRConfigurationEntity legalEntity?;
    @jsondata:Name {value: "EffectiveEnd"}
    string effectiveEnd?;
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "EffectiveStart"}
    string effectiveStart?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LegalEntityWorkSiteState"}
    LegalEntityWorkSiteState legalEntityWorkSiteState?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "OverrideCustomerFundingIdentifier"}
    LegalEntityMasterBankAccountSetting overrideCustomerFundingIdentifier?;
};

public type EmployeeVolunteerListCollection record {
    @jsondata:Name {value: "Items"}
    EmployeeVolunteerList[] items?;
};

# Represents the Queries record for the operation: PayrollPayEntry_QuickEntryPost_By_importData_isValidateOnly_clientNamespace
public type PayrollPayEntryQuickEntryPostByImportDataIsValidateOnlyClientNamespaceQueries record {
    # If TRUE, POST operations validate the request without queue the import. The default value is FALSE. Note, POST operation will only validate data structure
    boolean isValidateOnly?;
};

public type PayloadLegacyLaborMetricCodes record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    LegacyLaborMetricCodes data?;
};

public type Response record {
    @jsondata:Name {value: "Identifier"}
    string identifier?;
};

public type PaginatedPayloadIEnumerableBackgroundJobLog record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Paging"}
    Paging paging?;
    @jsondata:Name {value: "Data"}
    BackgroundJobLog[] data?;
};

public type ArchiveDocument record {
    @jsondata:Name {value: "CultureId"}
    int:Signed32 cultureId?;
    @jsondata:Name {value: "FileName"}
    string fileName?;
    @jsondata:Name {value: "DocumentType"}
    string documentType?;
    @jsondata:Name {value: "DocumentGroup"}
    string documentGroup?;
    @jsondata:Name {value: "Title"}
    string title?;
    @jsondata:Name {value: "Contents"}
    string contents?;
    @jsondata:Name {value: "PageCount"}
    int:Signed32 pageCount?;
    @jsondata:Name {value: "ReportAlternateTitle"}
    string reportAlternateTitle?;
    @jsondata:Name {value: "UserId"}
    int:Signed32 userId?;
    @jsondata:Name {value: "EmployeeXRefCode"}
    string employeeXRefCode?;
    @jsondata:Name {value: "IsAvailableOnCloud"}
    boolean isAvailableOnCloud?;
    @jsondata:Name {value: "PublishDateTime"}
    string publishDateTime?;
    @jsondata:Name {value: "SizeBytes"}
    int sizeBytes?;
    @jsondata:Name {value: "SourceReportUniqueId"}
    string sourceReportUniqueId?;
    @jsondata:Name {value: "Link"}
    string link?;
};

public type PayloadIEnumerableEmployeeCANFederalTax record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeCANFederalTax[] data?;
};

public type QuestionModel record {
    string question?;
    string max?;
    string format?;
    @jsondata:Name {value: "HTML"}
    boolean hTML?;
    string 'type?;
    boolean required?;
    QuestionHierarchicalOptionModel[] hierarchicalOptions?;
    QuestionConditionModel condition?;
    string min?;
    QuestionOptionModel[] options?;
    int:Signed32 'limit?;
    string fontSize?;
    string id?;
    string text?;
};

# Represents the Queries record for the operation: EmployeeWorkAssignment_Patch_By_workAssignment_xRefCode_isValidateOnly_clientNamespace
public type EmployeeWorkAssignmentPatchByWorkAssignmentXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

public type KpiTargetPatternDetail record {
    @jsondata:Name {value: "Value"}
    decimal value?;
    @jsondata:Name {value: "PatternIndex"}
    int:Signed32 patternIndex?;
};

public type EmployeeDeductionParameter record {
    @jsondata:Name {value: "DeductionParameter"}
    DeductionParameter deductionParameter?;
    @jsondata:Name {value: "Value"}
    decimal value?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
    @jsondata:Name {value: "PayGroupValue"}
    decimal payGroupValue?;
};

public type LMSEmployeeCertificationCollection record {
    @jsondata:Name {value: "Items"}
    LMSEmployeeCertification[] items?;
};

public type WorkContractPremiumPolicy record {
    @jsondata:Name {value: "XRefCode"}
    string xRefCode?;
    @jsondata:Name {value: "LongName"}
    string longName?;
    @jsondata:Name {value: "ShortName"}
    string shortName?;
    @jsondata:Name {value: "LastModifiedTimestamp"}
    string lastModifiedTimestamp?;
};

# Represents the Queries record for the operation: EmployeeEthnicity_Patch_By_employeeEthnicity_xRefCode_isValidateOnly_clientNamespace
public type EmployeeEthnicityPatchByEmployeeEthnicityXRefCodeIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST and PATCH operations validate the request without applying updates to the database
    boolean isValidateOnly?;
};

# Represents the Queries record for the operation: Courses_Post_By_course_isValidateOnly_clientNamespace
public type CoursesPostByCourseIsValidateOnlyClientNamespaceQueries record {
    # When a TRUE value is used in this parameter, POST operation validate the request without applying the changes to the database
    boolean isValidateOnly?;
};

public type PayloadIEnumerableEmployeeIRLTaxEWSS record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeIRLTaxEWSS[] data?;
};

public type PayloadIEnumerableEmployeeUKStudentLoan record {
    @jsondata:Name {value: "ProcessResults"}
    ProcessResult[] processResults?;
    @jsondata:Name {value: "Data"}
    EmployeeUKStudentLoan[] data?;
};
