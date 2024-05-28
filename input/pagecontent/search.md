### Overview of screening summary searching

The FHIR API features a FHIR resource search to enable consuming applications to retrieve screening histories.

The search is done using a `GET` on the /DocumentReference REST resource.

The API consumer specifies parameters to sufficiently constrain the search.  

A typical search would specify query parameters:

1. The person who is the subject of the enquiry, identified by their NHI number,
1. The type of national screening programme of interest, specified as a SNOMED 'serviceType' code,
1. The format of screening summary (PDF or HTML).

### Search API response

As a FHIR API, this API will return a FHIR [Bundle](https://hl7.org/fhir/R4B/bundle.html) resource instance containing the results of the search.

Results in the returned Bundle can be a mixture of DocumentReference and OperationOutcome resources, further elaborated below.

#### Instances of the FHIR `DocumentReference` resource

ALl of these instances will be profiled as per the [*ScreeningSummaryDocumentReference* structure](StructureDefinition-nz-screening-summary.html) defined in this IG.

Clients can expect these instances as the 'normal' response data to their search requests.

Each instance provides a subject screening history with screening subject demographics, programme participation status and screening history, all rendered into a single PDF or HTML report (document attachment).  

Note: The API can return multiple instances of these resources for a given NHI, if there are multiple entries in the backend register or where more than one report format is available.

#### *[FHIR OperationOutcome](https://hl7.org/fhir/R4B/bundle.html)* instances.

The API uses one or more OperationOutcome instancess when there is a need to convey information about a search and a DocumentReference response cannot be provided.

An `OperationOutcome` will be included as a result Bundle entry in cases such as when a person has withdrawn from a screening programme and all their data has been deleted from the Register.

Note: a search response could contain BOTH an OperationOutcome AND a screening summary DocumentReference because it may be possible to supply a screening history and provide extra screening information about the subject person to the requesting party.

### Examples of search responses

Refer to these artifacts for examples of response payloads in different search scenarios supported by this API.

| name | example screening scenario | example instance demonstrating response payload |
|:--------------|:---------------------------------------------------|:-------------------------|
| **'normal' screening history lookup** | A patient with a screening history presents for cervical screening. | [`1 match, no issue`](Bundle-ResponseBundleExample-OneMatchNoIssue.html) |
| **new subject, non-existent NHI** | A new patient, without NHI and not on the register, presents for cervical screening - there is no screening history to display for this subject | [`No match, 1 issue`](Bundle-ResponseBundleExample-NoMatchOneIssue.html) |
| **no summary, multiple issues** | A screening summary cannot be obtained for the subject and there are multiple pieces of information to convey. |  [`No match, multiple issues`](Bundle-ResponseBundleExample-NoMatchMultipleIssue.html) |
| **subject has screening history but there is an issue** | A screening summary can be produced for the subject but there is also additional information to convey. |  [`One match, one issue`](Bundle-ResponseBundleExample-OneMatchOneIssue.html) |
| **multiple screening summary match** | A patient with a screening history presents for cervical screening. |  [`Two match, no issue`](Bundle-ResponseBundleExample-TwoMatchNoIssue.html) |
| **technical error response** | The API cannot produce a screening summary nor an OperationOutcome message - this is only expected in technical error scenarios such as a security authorization issue | HTTP status code and `OperationOutcome` as per [FHIR spec](https://hl7.org/fhir/R4B/http.html#Status-Codes). |
