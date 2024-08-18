
// //////// //////// //////// //////// //////// //////// //////// //////// ////////
// EXAMPLE 1
Instance: SearchResponse-FullReportNoOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of response to search returning an HTML screening summary document"

* id = "SearchResponse-FullReportNoOutcome"
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=ZCU7824&_include=DocumentReference%3Asubject"

// results entry 1 of 2 - the matching Screening Summary DOCUMENTREFERENCE
* entry[+].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocument)
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.subject = Reference(MadeleineMeringue)
* entry[=].resource.subject insert NHIPatientRef(ZCU7824,[[Madeleine Meringue]])
* entry[=].resource.content.attachment insert FullReportExampleHTMLContent
// * entry[=].resource.content.format = $MediaTypesCS#text/html

// results entry 2 of 2 - the included PATIENT resource
* entry[+].search.mode = #include
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/Patient/14a27af4-d621-4068-b678-e878246c48b9"
* entry[=].resource insert makeMadeleineMeringue([[14a27af4-d621-4068-b678-e878246c48b9]])

//////// //////// //////// //////// //////// //////// //////// //////// ////////
// EXAMPLE 2
Instance: SearchResponse-ParticipantInfoOnlyWithOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of response to search for dormant NHI where there is participant info and an outcome message"

* id = "SearchResponse-ParticipantInfoOnlyWithOutcome"
* type = #searchset
* total = 1       // no. of #match mode entries
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7800&_include=DocumentReference%3Asubject"

// results entry 1 - the matching screening summary (participant info only)
* entry[+].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocument)
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.subject = Reference(MadeleineMeringue)
* entry[=].resource.subject insert NHIPatientRef(ZCU7824,[[Madeleine Meringue]])
* entry[=].resource.content.attachment insert ParticipantOnlyExampleHTMLContent
// * entry[=].resource.content.format = $MediaTypesCS#text/html

// results entry 2 included patient resource
* entry[+].search.mode = #include
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/Patient/14a27af4-d621-4068-b678-e878246c48b9"
* entry[=].resource insert makeMadeleineMeringue([[14a27af4-d621-4068-b678-e878246c48b9]])

// results entry 3 - OperationOutcome informational message
* entry[+].search.mode = #outcome
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/OperationOutcome/OperationOutcomeInstance-1"
* entry[=].resource insert SearchInformationalOperationOutcome([[OperationOutcomeInstance-1]],[[The NHI requested is dormant and linked to a live identifier so the live NHI has been returned]])



// //////// //////// //////// //////// //////// //////// //////// //////// ////////
// EXAMPLE 3
Instance: SearchResponse-NoMatchOneOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of search response Bundle with #match entries but an outcome that imagines a patient withdrawn from the programme"

* id = "SearchResponse-NoMatchOneOutcome"
* type = #searchset
* total = 0       // no #match mode entries
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7828&_include=DocumentReference%3Asubject"

// results entry 1 - the OperationOutcome
* entry[+].search.mode = #outcome
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/OperationOutcome/OperationOutcomeInstance-1"
* entry[=].resource insert SearchInformationalOperationOutcome([[OperationOutcomeInstance-1]],[[This NHI has no screening information to display. The participant has withdrawn from the National Cervical Screening Programme.]])



// //////// //////// //////// //////// //////// //////// //////// //////// ////////
// EXAMPLE 4
Instance: SearchResponse-DeceasedFullReportNoOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of search response returning HTML screening summary document for a deceased person"

* id = "SearchResponse-DeceasedFullReportNoOutcome"
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=ZCQ3240&_include=DocumentReference%3Asubject"

// results entry 1 of 2 - the matching Screening Summary DOCUMENTREFERENCE
* entry[+].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/9f966515-f908-4892-a5f7-340e15507233"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "9f966515-f908-4892-a5f7-340e15507233"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocument)
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.subject = Reference(KassandraTemahoe)
* entry[=].resource.subject insert NHIPatientRef(ZCQ3240,[[Kassandra Temahoe]])
* entry[=].resource.content.attachment insert MockDeceasedHTMLSummaryContent
// * entry[=].resource.content.format = $MediaTypesCS#text/html

// results entry 2 of 2 - the included PATIENT resource
* entry[+].search.mode = #include
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/Patient/14a27af4-d621-4068-b678-e878246cbaba"
* entry[=].resource insert makeKassandraTemahoe([[14a27af4-d621-4068-b678-e878246cbaba]])
