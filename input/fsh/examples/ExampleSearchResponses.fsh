// //////// //////// //////// //////// //////// //////// //////// //////// ////////
//
Instance: SearchResponse-HTMLMatchNoOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of response to search returning an HTML screening summary document"

* meta.versionId = "1"
* meta.lastUpdated = "2024-05-30T00:00:00Z"

* id = "SearchResponse-HTMLMatchNoOutcome"
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7824&_include=DocumentReference%3Asubject"

// results entry 1 of 2 - the matching Screening Summary DOCUMENTREFERENCE
* entry[0].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocument)
* entry[=].resource.meta.versionId = "1"
* entry[=].resource.meta.lastUpdated = "2024-05-13T22:00:00Z"
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.subject = Reference(MadeleineMeringue)
* entry[=].resource.subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* entry[=].resource.content.attachment insert ScreeningSummaryExampleHTMLencoded
* entry[=].resource.content.format = $MediaTypesCS#text/html


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


// //////// //////// //////// //////// //////// //////// //////// //////// ////////
//
Instance: SearchResponse-PDFMatchNoOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of response to search returning an PDF screening summary document"

* meta.versionId = "1"
* meta.lastUpdated = "2024-05-30T00:00:00Z"

* id = "SearchResponse-PDFMatchNoOutcome"
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&contenttype=application/pdf&subject%3Aidentifier=SCF7824&_include=DocumentReference%3Asubject"

// results entry 1 of 2 - the matching Screening Summary DOCUMENTREFERENCE with PDF
* entry[0].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocument)
* entry[=].resource.meta.versionId = "1"
* entry[=].resource.meta.lastUpdated = "2024-05-13T22:00:00Z"
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.subject = Reference(MadeleineMeringue)
* entry[=].resource.subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* entry[=].resource.content.attachment insert ExampleDoc1PDFContent
* entry[=].resource.content.format = $MediaTypesCS#application/pdf


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


// //////// //////// //////// //////// //////// //////// //////// //////// ////////
//
Instance: SearchResponse-NoMatchOneOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of search response where there is no ScreeningSummaryDocument but there is an outcome message"

* meta.versionId = "1"
* meta.lastUpdated = "2024-05-30T00:00:00Z"

* id = "SearchResponse-NoMatchOneOutcome"
* type = #searchset
* total = 0       // no #match mode entries
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7824&_include=DocumentReference%3Asubject"

// results entry 1 of 1 - the OperationOutcome
* entry[0].search.mode = #outcome
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/OperationOutcome/OperationOutcomeInstance-1"
* entry[=].resource insert SearchInformationalOperationOutcome([[OperationOutcomeInstance-1]],[[No screening history to display]])



// //////// //////// //////// //////// //////// //////// //////// //////// ////////
//
Instance: SearchResponse-HTMLMatchWithOutcome
InstanceOf: Bundle
Usage: #example
Description: "Example of search response where there is screening history but an outcome status also needs to be conveyed"

* meta.versionId = "1"
* meta.lastUpdated = "2024-05-30T00:00:00Z"

* id = "SearchResponse-HTMLMatchWithOutcome"
* type = #searchset
* total = 1
* link[0].relation = "self"
* link[=].url = "https://fhir.api-test.digital.health.nz/R4/DocumentReference?category=http%3A%2F%2Fsnomed.info%2Fsct%7C1230046007&subject%3Aidentifier=SCF7824&_include=DocumentReference%3Asubject"

// results entry 1 of 3 - a matching Screening Summary DOCUMENTREFERENCE
* entry[0].search.mode = #match
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/DocumentReference/9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.resourceType = "DocumentReference"
* entry[=].resource.id = "9f966515-f908-4892-a5f7-340e15507232"
* entry[=].resource.meta.profile = Canonical(ScreeningSummaryDocument)
* entry[=].resource.meta.versionId = "1"
* entry[=].resource.meta.lastUpdated = "2024-05-13T22:00:00Z"
* entry[=].resource.masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.identifier insert DocIdentifier(1,[[National Screening Unit]])
* entry[=].resource.custodian insert OrganisationRefByName([[National Screening Unit]])
* entry[=].resource.status = #current
* entry[=].resource.type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* entry[=].resource.category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])
* entry[=].resource.subject = Reference(MadeleineMeringue)
* entry[=].resource.subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* entry[=].resource.content.attachment insert ScreeningSummaryExampleHTMLencoded
* entry[=].resource.content.format = $MediaTypesCS#text/html


// results entry 2 of 3 - the included PATIENT resource
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

// results entry 3 of 3 - the special OperationOutcome
* entry[+].search.mode = #outcome
* entry[=].fullUrl =  "https://fhir.api-test.digital.health.nz/R4/OperationOutcome/OperationOutcomeInstance-1"
* entry[=].resource insert SearchInformationalOperationOutcome([[OperationOutcomeInstance-1]],[[Please contact the National Screening Unit about this person's registration status]])
