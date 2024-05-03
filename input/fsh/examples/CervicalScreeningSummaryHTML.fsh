Instance: CervicalScreeningSummaryHTML
InstanceOf: ScreeningSummaryDocumentReference
Usage: #example
Description: "Example of an FHIR cervical screening summary as an HTMNL attachment (inline)"

* meta.profile = Canonical(ScreeningSummaryDocumentReference|1.0.0)
* meta.versionId = "1"
* meta.lastUpdated = "2024-05-01T22:00:00Z"

* masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* identifier insert DocIdentifier(1,[[National Screening Unit]])
* custodian insert OrganisationRefByName([[National Screening Unit]])
* status = #current
* type = $sct#422735006 "Summary clinical document (record artifact)"
* category = nz-screening-programmetypes#NCSP
* content.attachment insert ExampleDoc1HTMLContent
* content.format = $MediaTypesCS#text/html

