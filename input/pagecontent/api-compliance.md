# Compliance testing

As part of onboarding to Health New Zealand/Te Whatu Ora APIs we require Digital Suppliers to demonstrate how they meet compliance testing requirements. Some of these compliance testing use cases are generic for every HNZ API e.g. requirements for the audit logging whilst others are API specific and defined by the business and product teams.  Compliance testing is a pre-requisite for being granted production credentials. 

Provide the following details in a test report and email to screeningintegrations@tewhatuora.govt.nz

---
    Tester details 
    a. Organisation Name 
    b. Application name and version 
    c. National Screening Summary FHIR IG Version tested against
    f. Testing start date and time and end date and time 
    g. Tester name and contact details 
    h. List of operations included in your integration (eg GET on the /DocumentReference, )

    For each test supply screen shots of the user interface for:

        the input data as entered in the integrating application (“the application”)

        the output:

            any error messages presented by the application

            the confirmation or result of the request presented by the application

        For update operations the state of the record pre-request should be included.

        Note: If non-interactive, please provide JSON request (update / create) or response (get/search).

    For each test supply a timestamp when each request is sent.

## Compliance Monitoring:

API subscribers must conduct regular audits and user feedback to ensure ongoing adherence to the IG.
Compliance tests

Not all compliance tests in this implementation guide will be appropriate for every application. If there are tests that do not apply please discuss this with us and where appropriate write a description in the compliance test submission why the particular test does not apply.

Mandatory vs Optional tests

- If there are tests below that are labelled mandatory but do fit the application’s use case then please let us know why.
- Some tests are labelled conditional mandatory . These tests are Mandatory only if you are using this piece of data for your use case.

|**Reference**|**Requirement**|**Purpose**|**Input Values**|**Expected Outcome**|**Mandatory / Optional / Recommended**|**Supporting Information**|
|:------------|:--------------|:----------|:---------------|:-------------------|:-------------------------------------|:-------------------------|
|General-1 |**Role-Based Access Control (RBAC)**|Ensure Cervical screening FHIR API access permission can be granted using role-based access control to authorised users only.|User roles, access permissions, instructions on who is authorised to access the API|Only Registered Healthcare Providers with an HPI CPN, a Current Medical or Nursing Council registration and an Active Practicing Certificate can access the Cervical Screening FHIR API.|Mandatory|Implement role-based access control mechanisms to restrict access appropriately.<br>Create specific role/permission set for Cervical Screening summary.<br>Role/permission can only be enabled for Orgs that have accepted the Terms of Use|
|General- 2|**Display of Guidance of RBAC Instructions Provided by HNZ**|Display guidance and access instructions provided by Health New Zealand|“Only Registered Health Care Providers with an HPI CPN, a current Medical or Nursing Council registration and an Active Practicing Certificate can access National Cervical Screening Information”<br>OR<br>“This permission allows access to ‘Cervical Screening History Summary’ document as held in the National Cervical Screening Register and can only be assigned to Registered Healthcare Providers with a current Medical or Nursing Council registration and an Active Practicing Certificate, performing GP, RN, NP, etc. roles”|Instructional content from HNZ (Instructions on who is authorised to access the API)<br>Users are well-informed on who can use the API|Mandatory|Ensure that the guidance is easily accessible and understandable.|
|General - 3|**Display guidance on getting access to Scereening History Summary API, provided by HNZ**|Display guidance and access instructions provided by Health New Zealand to get API credentials at ORG level.<br>“To get access to the Screening History Summary API, please contact the Screening Integrations team at screeningintegrations@TeWhatuOra.govt.nz|Instructional content from HNZ (Instructions on how Organisations can get access to the API)|Organisations/ Practice Managers know how to get access to the API.|Optional|Where the application allows access to the API using ORG level credentials (API Key, etc.) ensure that the guidance is displayed or easily accessible.|
|General- 4|**Icon & Icon Name**|Implement specific icons, radio buttons and naming conventions where feasible and use hover-over text for invoking the screening reports.|Icon files, icon names as provided by HNZ|Consistent and recognisable icons for users.<br>Future proofing when screening summaries for other programmes are made available.|Recommended -  highly preferred|Ensure icons are intuitive and follow HNZ guidelines. Any deviations need to be agreed with the HNZ product owner.|
|General- 5|**Presentation of CSHS generation time/date stamps**|Ensure that it is evident what time/date the Screening Summary History report was generated when summaries saved.|FHIR Documentreference|Accurate and user-friendly presentation of reports and clear time/date stamping|Mandatory - Conditional|Demonstrate that if CSHS saved in your system it is clearly evident on the UI the time/date the report was generated. This is a clinical safety requirement.|
|General- 6|**Error Handling and messages to end users**|Implement robust error handling within your application and ensure meaningful error messages are displayed to end users as specified in our implementation guide|Error codes, error messages.|Clear and actionable error messages for users.|Mandatory|Refer to the error message handling guidelines<br>[Sequences](https://fhir-ig.digital.health.nz/screening/sequences.html)<br>[Use Cases](https://fhir-ig.digital.health.nz/screening/usecases.html)|
|General- 7|**FHIR Form for Practitioner Acceptance**|Handle the operation outcome and `magic link` for Practitioner ToU FHIR form for acceptance and provide the relevant information to generate the `magic link`.|Practitioner details from system, acceptance form data.|Practitioners can accept terms and get access|Mandatory|Ensure the form is compliant with FHIR standards and securely handles practitioner information.<br>Demonstrate invoking end user TOU acceptance form - Expected that when a  user invokes screening summary API for the first time (or if the request outcome response is 403 with a magic link), the FHIR TOU form will show and allow the user to accept or decline.<br>Expected that when a user, who has previously declined the TOU form, invokes the screening summary API again (or if the request outcome response is 403 with a magic link), the FHIR TOU form will show and allow the user to accept or decline.|
|General- 8|**Active publishing to Patient Portals**|If the API subscriber application enables publishing the CSHS to a Patient portal, this should be disabled by default and should require active publishing only once a registered health care provider has reviewed the summary and content.|N/A|RHP has viewed and then chooses to publish . This would ensure that a clinician can contact the patient prior to publishing the screening summary to patient portal in case of certain scenarios, e.g. in case of cervical cancer detection, abnormal result, etc.|Mandatory - Conditional|This requirement may not be applicable to all API subscribers<br>Mandatory if Patient Portal publishing enabled.|
|General- 9|**Patient Demographic data**|Patient demographic data returned in the payload must not be used as the primary source of truth in your system for patient demographic data.| |Patient demographic data returned from this API isn’t used to update patient details in your system. If you require this data you must connect to NHI.|Mandatory| |
|General-10|**Data Integrity**|API subscribers must ensure the integrity and accuracy of the information displayed to end users.||System testing should show data returned from the API is the data shown to end users without transformation|Mandatory|Any discrepancies or errors in the data must be promptly addressed and corrected.|
|General-11|**User Feedback**|API subscribers must provide log and provide visibility of end-user reported issues to the HNZ on request in order for us to respond to these and consider them for product enhancement.||Feedback should be reviewed collaboratively to improve the service and address any issues.|Recommended|Strongly desired.|
|General-12|**Search outcome messages**|Demonstrate display of the search outcome message(s) returned by [`DocumentReference.Search`](https://fhir-ig.digital.health.nz/screening/usecases.html)|FHIR Search Outcome message|Provides additional context to the end-user to ensure informed decision making|Mandatory||
|General-13|**Error handling**|Application can handle an HTTP 429 error in a graceful way|||Should||
|Support -1|**Ticket Logging**|- API subscribers must provide a clear and accessible UI or support desk for end users to log tickets<br> - Support tickets need to contain time, date of issue, NHI of patient, issue description and screen shots if possible.|N/A|Outline your support process for users.|Mandatory||
|Support -2|**Support Information**|API subscriber must ensure that end users have access to user guides/training material that outline functionality.||Please show us your product documentation/user guides|Mandatory||
|Security-1|**Credentials**|Credentials match those issued to the testing organisation and their orgID and appID are audit logged|||Mandatory ||
|Audit-1|**Request context header**|Sending `Request-Context` header is populated with the correct Information and audit logged|||Mandatory||
|Audit-2|**Credentials**|Sending user ID changes when different end users are initiating the request. User IDs must be a HPI CPN if the end user is a Registered Health Provider issued with an HPI CPN|||Mandatory|User ID specific to end user is **MUST**<br>HPI CPN Conditional Mandatory if end user has one.|
|Audit-3|**Correlation-Id**|Each request has a UUID in the X-Correlation-Id field<br>If present this will be returned in the response|||Should||
