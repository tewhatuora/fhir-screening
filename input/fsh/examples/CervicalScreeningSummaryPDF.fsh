Instance: CervicalScreeningSummaryPDF
InstanceOf: ScreeningSummaryDocumentReference
Usage: #example
Description: "Example of an FHIR cervical screening summary as a PDF attachment (inline)"

* meta.profile = Canonical(ScreeningSummaryDocumentReference|1.0.0)
* meta.versionId = "1"
* meta.lastUpdated = "2024-05-01T22:00:00Z"

* text insert ExampleDoc1Narrative([[generated]])

* masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* identifier insert DocIdentifier(1,[[National Screening Unit]])
* custodian insert OrganisationRefByName([[National Screening Unit]])
* status = #current
* category = nz-screening-programmetypes#NCSP
* content.attachment insert ExampleDoc1PDFContent()
* content.format = $MediaTypesCS#application/pdf
