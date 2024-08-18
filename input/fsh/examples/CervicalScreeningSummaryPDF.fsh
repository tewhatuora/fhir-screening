Instance: CervicalScreeningSummaryPDF
InstanceOf: ScreeningSummaryDocument
Usage: #example
Description: "Cervical screening summary with PDF-encoded document sample content"

* meta.profile = Canonical(ScreeningSummaryDocument)
// * meta.versionId = "1"
// * meta.lastUpdated = "2024-05-13T22:00:00Z"

* masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* identifier insert DocIdentifier(1,[[National Screening Unit]])
* custodian insert OrganisationRefByName([[National Screening Unit]])
* status = #current
* type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])
* category[0] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])

// form dual subject references to both a local instance (literal ref) and an NHI (logical resource ref)
* subject = Reference(MadeleineMeringue)
* subject insert NHIPatientRef([[ZCU7824]],[[Madeleine Meringue]])

* content.attachment insert ExampleDoc1PDFContent
// * content.format = $MediaTypesCS#application/pdf

