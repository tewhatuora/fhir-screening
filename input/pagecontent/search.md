### Overview of screening summary searching

API consumers obtain screening summaries using the standard FHIR search API.

A search is done by a `GET` on the /DocumentReference REST resource, using FHIR's `_include` operation to incorporate the patient demographic data as a `Patient` FHIR instance.

For a description of the parameters API consumers can specify in a screening summary search see the API [capability statement](CapabilityStatement-FHIRScreeningCapabilityStatement.html)

In successful search scenario, the API returns a FHIR `Bundle`, with potentially two kinds of entry:

1. a `mode:#match` entry which is a profiled DocumentReference instance (containing the summary document rendition), and
1. a `mode:#include` entry which is a profiled Patient instance (containing subject demographic data).

If a screening summary document cannot be rendered for a given subject NHI (this happens when the specified subject has no screening history in the National Screening Register) the API will return an `OperationOutcome` as a `mode:#outcome` entry in a FHIR `Bundle`.

The following diagram shows these FHIR instances the API returns for a DocumentReference search.

The object diagram below illustrates the structure of FHIR DocumentReference instances returned by enquiries to this FHIR API.

<!-- markdownlint-disable MD033 -->

<div width="70%">
<!-- Generated from `input/images-source/obj-FHIR-data-screening-summary.plantuml` -->
{% include obj-FHIR-data-screening-summary.svg %}
</div>
<br clear="all">

---

### Example search query

```HTTP
  GET {API_URL}/DocumentReference?
    subject:identifier={NHI number}
    & category=http://snomed.info/sct|1230046007
    & _include=DocumentReference:subject
    [& contenttype=application/pdf]
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

| **entry mode**  | **Circumstances when returned**                           | **notes** |
|:------------------|:----------------------------------------------------------|:-----------|
| `match`     | In normal searches this entry provides the matching subject's screening summary document as a [*ScreeningSummaryDocument* (`DocumentReference`)](StructureDefinition-nz-screening-summary.html) resource instance | `Bundle.total` counts `match` mode entries only. |
| `include`   | In normal searches with the `_include` operation this entry provides the matching subject's data as an included *NzPatient* (`Patient`) resource instance | An `include` entry will only ever appear in association with a match entry, and not on its own |
| `outcome`   | When the API needs to return extra information message(s) in a FHIR `OperationOutcome` resource instance | An `outcome` entry can be pressent whether or not there are any `match` entries. |

**Note: API consumers MUST check all entries in each result Bundles for searches they request.**

### No matching subject NHI

If the API finds no screening records for a specified NHI subject identifier, the API returns `200 OK` HTTP code and a `Bundle` with no `#match` entries (`"total":0`).

**This API SHALL NOT validate NHI identifiers given as a search parameters.** Use the New Zealand [NHI FHIR API](https://nhi-ig.hip.digital.health.nz/) for NHI matching and validation purposes.

## Error scenarios

In the event of an authorization or technical error, this API returns an HTTP status code, and when a RESTful interaction has failed, error or warning messages in an `OperationOutcome` in the response payload (as per [FHIR specification](https://hl7.org/fhir/R4B/http.html#Status-Codes)).

For details see [Search Response Statuses](CapabilityStatement-FHIRScreeningCapabilityStatement.html#search-get-operation-statuses) in the API capability statement.
