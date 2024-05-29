// Instance: SearchResponse-NoMatchMultipleIssue
// InstanceOf: Bundle
// Usage: #example
// Description: "Example of search response when there are no matches but several issues to display"

// * meta.versionId = "1"
// * meta.lastUpdated = "2024-05-28T01:00:00Z"

// * id = "ResponseBundleExample-NoMatchMultipleIssue"
// * type = #searchset
// * total = 2   // there can be N entries for N issues, N=2 in this example
// * link[0].relation = "self"
// * link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7824&contenttype=application/pdf"

// // results entry match 1 of n
// * entry[0].search.mode = #outcome
// * entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/OperationOutcome/OperationOutcomeInstance-1"
// * entry[=].resource insert SearchInformationalOperationOutcome(1,[[No screening history to display]])

// * entry[+].search.mode = #outcome
// * entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/OperationOutcome/OperationOutcomeInstance-2"
// * entry[=].resource insert SearchInformationalOperationOutcome(2,[[Patient (NHI) not registered]])
