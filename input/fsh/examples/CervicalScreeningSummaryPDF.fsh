Instance: CervicalScreeningSummaryPDF
InstanceOf: ScreeningSummaryDocumentReference
Usage: #example
Description: "Example of an FHIR cervical screening summary as a PDF attachment (inline)"

* meta.profile = Canonical(ScreeningSummaryDocumentReference|1.0.0)
* meta.versionId = "1"
* meta.lastUpdated = "2024-05-01T22:00:00Z"

* masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* identifier insert DocIdentifier(1,[[National Screening Unit]])
* custodian insert OrganisationRefByName([[National Screening Unit]])
* status = #current
* type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])

// 2 categories
* category[0] = nz-screening-programmetypes#NCSP
* category[+] insert SNOMEDCodeableConcept(1230046007,[[Cervical cancer screening service (qualifier value)]])

* content.attachment insert ExampleDoc1PDFContent
* content.format = $MediaTypesCS#application/pdf

