Instance: BowelScreeningSummary
InstanceOf: ScreeningSummaryDocument
Usage: #example
Description: "Example of an NZ bowel screening summary as a FHIR DocumentReference with HTML narrative content only"

* meta.profile = Canonical(ScreeningSummaryDocument)
* meta.versionId = "2"
* meta.lastUpdated = "2024-05-29T09:00:00Z"

* masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* identifier insert DocIdentifier(1,[[National Screening Unit]])
* custodian insert OrganisationRefByName([[National Screening Unit]])
* status = #current
* type insert SNOMEDCodeableConcept(422735006,[[Summary clinical document (record artifact)]])

* category[0] insert SNOMEDCodeableConcept(1163003002,[[Colorectal cancer screening service (qualifier value)]])

* content.attachment insert ScreeningSummaryExampleHTMLencoded
* content.format = $MediaTypesCS#text/html

// form a Patient reference to both a logical (NHI) resource and and a local literal resource
* subject = Reference(MickMahoe)
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF7826"
* subject.display = "Mick Mahoe"