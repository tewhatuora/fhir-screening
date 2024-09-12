// REST resource CRUD operations
RuleSet: GenericCRUDInteractions
* interaction[0].code = #create
* interaction[+].code = #read
* interaction[+].code = #update
* interaction[+].code = #delete
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// REST resource search only interfaces (no CRUD)
RuleSet: SearchOnlyInteraction
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// adds markdown doc to a CapabilityStatement element
RuleSet: ResourceDocumentation(markdown)
* documentation = "{markdown}"

// documents errors per HNZ standard (https://apistandards.digital.health.nz/api-development/Synchronous%20APIs/Error%20Handling)
RuleSet: APIStandardsDocumentation
* documentation = """
  ### Request-Context custom header

  All HNZ FHIR API requests must include the health user and context of usage of the application making the API request.

  This context is supplied using the 'Request-Context' custom header in the form of a base64-encoded JSON object.

  All applications consuming the Screening FHIR API must set properties in `Request-Context` as follows

  |**Context property**|**Value**|
  |:------------------|:---------|
  | `userIdentifier`  | The userid of the user as authenticated by the PMS/health application (REQUIRED) |
  | `purposeOfUse`    | Set to `"SCREENING"` (REQUIRED)                                                  |
  | `userFullName`    | Full name of the user of the PMS/health application. (REQUIRED)                  |
  | `registrationAuthorityNumber` | The practitioner number and the Registration Authority that issued it (REQUIRED) |
  | `hpiFacility`     | The HPI Facility identifier of the health facility where the PMS/health application is being used (REQUIRED) |
  | `hpiPractitioner` | If available, the HPI Practitioner identifier (Common Person Number) of the user (OPTIONAL) |
  | `hpiOrganisation` | If available, the HPI Organisation identifier for the NZ health organisation the user is affiliated with (OPTIONAL) |
  
  A schema definition and examples for `Request-Context` can be [found here](https://github.com/tewhatuora/schemas/blob/main/json-schema/Request-Context-v2.json)


  ### Request-Context custom header

  All screening FHIR API requests must include a request context *custom header* supplying identifiers for the health user 
  and organisation behind the API request.

  API consumers must set a `Request-Context` custom header to a base64-encoded JSON object containing the following properties: 
  
  |**Required context property**|**Attribute value**|
  |:------------------|:---------|
  | `userIdentifier`  | The userid of the user as authenticated by the PMS/health application. |
  | `hpiPractitioner` | HPI pracitioner identifiers -- Common Person Number and Registration Authority number |
  | `hpiFacility`     | Identifies the health facility (by HPI Facility Id) where the practitioner is working |
  | `purposeOfUse`    | Set to SCREENING        |
  | `userFullName`    | The full name of the practitioner using the application |
  
  The schema for the request context JSON object [is defined here](https://raw.githubusercontent.com/tewhatuora/schemas/main/json-schema/Request-Context-v2.json)

  ### Error status codes

  #### Read (GET) Operation Statuses

  |**Code**|**Meaning**|**Description**|
  |:--:|:-----------------|:--|
  |200|OK                 |The request was successful, and the response body contains the representation requested|
  |302|FOUND              |A common redirect response; you can GET the representation at the URI in the Location response header|
  |304|NOT MODIFIED       |Your client's cached version of the representation is still up to date|
  |400|BAD REQUEST        |Missing or bad `Security-Context` custom header; FHIR request payload does not validate against Implementation Guide|
  |401|UNAUTHORIZED       |The supplied credentials, if any, are not sufficient to access the resource|
  |403|FORBIDDEN          |Insufficient privilege to access the requested FHIR resource/operation|
  |404|NOT FOUND          |The requested representation was not found. Retrying this request is unlikely to be successful|
  |429|TOO MANY REQUESTS  |Your application is sending too many simultaneous requests|
  |500|SERVER ERROR       |An internal server error prevented return of the representation response|
  |503|SERVICE UNAVAILABLE|We are temporarily unable to return the representation. Please wait and try again later|

  #### Search (GET) Operation Statuses

  |**Code**|**Meaning**   |**OperationOutcome** in response?|**Description**|
  |:--:|:-----------------|:----------------------------------|:----------------------------------|
  |200|OK                 |Yes, when there are additional messages about a match result|The request was successful, and the response body contains the representation requested|
  |302|FOUND              |No |A common redirect response; you can GET the representation at the URI in the Location response header|
  |400|BAD REQUEST        |Missing or bad `Security-Context` custom header; FHIR request payload does not validate against Implementation Guide|
  |401|UNAUTHORIZED       |The supplied credentials, if any, are not sufficient to access the resource|
  |403|FORBIDDEN          |Insufficient privilege to access the requested FHIR resource/operation|
  |429|TOO MANY REQUESTS  |No |Your application is sending too many simultaneous requests|
  |500|SERVER ERROR       |No |An internal server error prevented return of the representation response|
  |503|SERVICE UNAVAILABLE|No |The server is temporarily unable to return the representation. Please wait and try again later|

  #### Create (POST or PUT) Operation Statuses

  |**Code**|**Meaning**|**Description**|
  |:--:|:-----------------|:--|
  |200|OK                 |The request was successful, and the resource was updated. The response body contains the updated representation|
  |201|CREATED            |The request was successful, a new resource was created, and the response body contains the representation|
  |204|OK - NO CONTENT    |The request was successful, but no content is returned in the response. In reality this is seldom used for REST APIs and more typically for process APIs. Should include a `Location` header indicating the location of an associated relevant resource|
  |207|MULTI STATUS       |The HTTP 207 Multi-Status response code indicates that there might be a mixture of responses.|
  |400|BAD REQUEST        |Missing or bad `Security-Context` custom header; FHIR request payload does not validate against Implementation Guide|
  |401|UNAUTHORIZED       |The supplied credentials, if any, are not sufficient to access the resource|
  |403|FORBIDDEN          |Insufficient privilege to access the requested FHIR resource/operation|
  |404|NOT FOUND          |The endpoint that the API Consumer is attempting to create or update does not exist. Retrying this request is unlikely to be successful|
  |405|METHOD NOT ALLOWED |You can't POST or PUT to the resource|
  |422|UNPROCESSABLE CONTENT|The server understands the requests content and syntax however it is unable to process the instruction. Retrying this request will not succeed - the request must be modified|
  |429|TOO MANY REQUESTS  |Your application is sending too many simultaneous requests|
  |500|SERVER ERROR       |We couldn't create or update the resource. Please try again later|

  #### Delete (DELETE) Operation Statuses

  |**Code**|**Meaning**|**Description**|
  |:--:|:-----------------|:--|
  |204|OK                 |The request was successful; the resource was deleted|
  |400|BAD REQUEST        |Missing or bad `Security-Context` custom header; FHIR request payload does not validate against Implementation Guide|
  |401|UNAUTHORIZED       |The supplied credentials, if any, are not sufficient to access the resource|
  |403|FORBIDDEN          |Insufficient privilege to access the requested FHIR resource/operation|
  |404|NOT FOUND          | |
  |405|METHOD NOT ALLOWED |You can't DELETE the resource|
  |429|TOO MANY REQUESTS  |Your application is sending too many simultaneous requests|
  |500|SERVER ERROR       |We couldn't delete the resource. Please try again later|

  ### Non existent API endpoints

  When a consumer attempts to call a non-existent API end point, respond
  with a **501 Not Implemented** status code.
"""