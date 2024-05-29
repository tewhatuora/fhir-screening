Instance: SearchResponse-OneMatchNoIssue
InstanceOf: Bundle
Usage: #example
Description: "Example of response to search comprising two screening summary matches"

* meta.versionId = "1"
* meta.lastUpdated = "2024-05-28T01:00:00Z"

* id = "ResponseBundleExample-OneMatchNoIssue"
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7824&_include=DocumentReference%3Asubject"

// results entry 1 of 2 - the matching Screening Summary DOCUMENTREFERENCE
* entry[0].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocumentReference)
* entry[=].resource.meta.versionId = "1"
* entry[=].resource.meta.lastUpdated = "2024-05-13T22:00:00Z"
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.content.attachment insert ScreeningSummaryExampleHTMLencoded
* entry[=].resource.content.format = $MediaTypesCS#text/html
* entry[=].resource.subject = Reference(MadeleineMeringue)
* entry[=].resource.subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])


// results entry 2 of 2 - the included PATIENT resource
* entry[+].search.mode = #include
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/Patient/14a27af4-d621-4068-b678-e878246c48b9"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "14a27af4-d621-4068-b678-e878246c48b9"
* entry[=].resource.meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
* entry[=].resource.meta.versionId = "1"
* entry[=].resource.meta.lastUpdated = "2024-05-13T22:00:00Z"
* entry[=].resource.identifier insert NHIIdentifier(SCF7824)
* entry[=].resource.name.use = #usual
* entry[=].resource.name.family = "Meringue"
* entry[=].resource.name.given = "Madeleine"
* entry[=].resource.birthDate = "2008-11-24"
* entry[=].resource.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* entry[=].resource.extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* entry[=].resource.address[0].use = #home
* entry[=].resource.address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* entry[=].resource.address[=].line[0] = "373 Jackson Street"
* entry[=].resource.address[=].line[+] = "Petone"
* entry[=].resource.address[=].city = "Lower Hutt"
* entry[=].resource.address[=].postalCode = "5012"
* entry[=].resource.address[=].country = "NZL"
