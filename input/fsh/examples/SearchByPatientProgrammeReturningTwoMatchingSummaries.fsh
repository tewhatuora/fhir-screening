Instance: SearchByPatientProgrammeReturningTwoMatchingSummaries
InstanceOf: Bundle
Usage: #example
Description: "Example of response to search by patient and programme type, with matches returned inline"

* meta.versionId = "1"
* meta.lastUpdated = "2024-05-28T01:00:00Z"

* id = "c56c7765-d991-4f7d-8c8e-fd0612e6228c"
* type = #searchset
* total = 2
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7824"

// results entry match 1 of 2
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
* entry[=].resource.content.attachment insert ExampleDoc1PDFContent
* entry[=].resource.content.format = $MediaTypesCS#application/pdf
* entry[=].resource.contained = screening-subject-1
* entry[=].resource.subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* entry[=].resource.context.sourcePatientInfo.reference = "#screening-subject-1"

// results entry match 2 of 2
* entry[+].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/d90faa7a-cdc4-4e2f-8480-9f0a8542d6b3"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "d90faa7a-cdc4-4e2f-8480-9f0a8542d6b3"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocumentReference)
* entry[=].resource.meta.versionId = "1"
* entry[=].resource.meta.lastUpdated = "2024-05-13T22:00:00Z"
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.content.attachment insert ExampleDoc1HTMLContent
* entry[=].resource.content.format = $MediaTypesCS#text/html
* entry[=].resource.contained = screening-subject-1
* entry[=].resource.subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* entry[=].resource.context.sourcePatientInfo.reference = "#screening-subject-1"
