### Overview of screening summary searching

API consumers obtain screening summaries using the standard FHIR search API.

A search is done by a `GET` on the /DocumentReference REST resource, using FHIR's `_include` operation to incorporate the patient demographic data as a `Patient` FHIR instance.

If the API is not able to supply a screening summary for a subject NHI on the register, for example when the specified subject has no screening history, an `OperationOutcome` will be returned (instead of the DocumentReference and Patient instances).

### Example search query

```HTTP
  GET {API_URL}/DocumentReference?
    subject:identifier=SCF7824
    & category=http://snomed.info/sct|1230046007
    & _include=DocumentReference:subject
    & contenttype=application/pdf
```

API consumers should use the following parameters to constrain every search for screening summaries.

| **request parameter** | **description** |
|:---------------|:-----------------------------|
| *subject:identifier* | Specifies the subject NHI number to search for. |
| *category* | Filters screening summaries by the type of national screening programme.  Refer to [this ValueSet] (ValueSet-nz-screening-programmetype-code.html) for codes which are valid codes to use. |
| *_include* | Includes the subject patient demographic as a `Patient` instance (NzProfile from NZ Base IG) in the response. |
| *contenttype* (optional) | Specify the preferred content type of the rendered screening summary report.  **By default the API returns the screening summary rendered as HTML (text/html).  The API consumer may specify `application/pdf` to get a PDF rendition instead. |

### Search API response

The API returns a FHIR `type:#searchset` [Bundle](https://hl7.org/fhir/R4B/bundle.html) resource instance containing the results of the search.

For each entry  in the response Bundle, up to three search mode types may appear as described below.

| **entry `mode`**  | **Circumstances when returned**                           | **Examples** |
|:------------------|:----------------------------------------------------------|:---------------|
| *#match*     | In normal searches this entry provides the matching subject's screening summary document as a [*ScreeningSummaryDocument* (`DocumentReference`)](StructureDefinition-nz-screening-summary.html) resource instance | [Normal search with no special outcome](Bundle-SearchResponse-HTMLMatchNoOutcome.html) |
| *#include*   | In normal searches with the `_include` operation this entry provides the matching subject's data as an included *NzPatient* (`Patient`) resource instance | [Normal search with no special outcome](Bundle-SearchResponse-HTMLMatchNoOutcome.html)|
| *#outcome*   | When the API cannot supply a screening summary, this entry provides an informational reason as a diagnostic message in a FHIR `OperationOutcome` resource instance | [#1 Outcome message but NO screening summary](Bundle-SearchResponse-NoMatchOneOutcome.html) <br> [#2 Screening summary WITH an outcome message](Bundle-SearchResponse-HTMLMatchWithOutcome.html)
 |

**Note: API consumers should be prepared for multiple mode entries to appear in combination in the response to a given search.**

### No matching subject NHI

If the API finds no screening records for a specified NHI subject identifier, the API returns 200 OK and an empty `Bundle` (`"total": 0` - no entries).  

**API consumers should not expect this API to validate NHI identifiers given as a search parameters.** Use the New Zealand [NHI FHIR API](https://nhi-ig.hip.digital.health.nz/) for NHI matching and validation.

### Error scenarios

In the event of a authorization or technical error, the API simply returns an HTTP status code and `OperationOutcome` as per [FHIR spec](https://hl7.org/fhir/R4B/http.html#Status-Codes).
