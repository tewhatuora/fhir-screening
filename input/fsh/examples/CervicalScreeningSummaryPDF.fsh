Instance: CervicalScreeningSummaryPDF
InstanceOf: ScreeningSummaryDocumentReference
Usage: #example
Description: "Example of an NZ cervical screening summary as a FHIR DocumentReference with PDF content"

* meta.profile = Canonical(ScreeningSummaryDocumentReference)
* meta.versionId = "1"
* meta.lastUpdated = "2024-05-13T22:00:00Z"

* masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* identifier insert DocIdentifier(1,[[National Screening Unit]])
* custodian insert OrganisationRefByName([[National Screening Unit]])
* status = #current
* type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])

* category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])

* content.attachment insert ExampleDoc1PDFContent
* content.format = $MediaTypesCS#application/pdf

* contained = screening-subject-1
* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* context.sourcePatientInfo.reference = "#screening-subject-1"

