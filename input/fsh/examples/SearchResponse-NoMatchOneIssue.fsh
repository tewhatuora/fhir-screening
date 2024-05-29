// Instance: SearchResponse-NoMatchOneIssue
// InstanceOf: Bundle
// Usage: #example
// Description: "Example of screening summary search response when there is an issue to display and no matches"

// * meta.versionId = "1"
// * meta.lastUpdated = "2024-05-28T03:00:00Z"

// * id = "ResponseBundleExample-NoMatchOneIssue"
// * type = #searchset
// * total = 1
// * link[0].relation = "self"
// * link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7824&contenttype=application/pdf"

// // results entry match 1 of 1
// * entry[0].search.mode = #outcome
// * entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/OperationOutcome/OperationOutcomeInstance-1"
// * entry[=].resource insert SearchInformationalOperationOutcome(1,[[No screening history to display]])
