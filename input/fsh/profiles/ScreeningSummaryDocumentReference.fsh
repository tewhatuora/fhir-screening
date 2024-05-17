Profile: ScreeningSummaryDocumentReference
Parent: DocumentReference
Description: "A FHIR DocumentReference representation of a screening summary report"
Id: nz-screening-summary

* ^version = "1.0.0"

// elements modified from parent profile
* docStatus 0..0
* category from nz-screening-programmetype-code (required)
* category ^short = "In screening summary DocRefs, denotes the type of screening programme only; cannot be used for other categorization purposes"
* type = $sct#422735006 "Summary clinical document (record artifact)"
* type ^short = "All screening summary DocRefs have this type code"
* authenticator 0..0
* subject only Reference(Patient)
* date ^short = "The 'as-at' date (UTC) of the screening summary report"
* author only Reference(Organization)
* custodian only Reference(Organization)
* description 0..0
* securityLabel 0..0
* relatesTo 0..0
* content 1..1
* content ^short = "Limit of one screening summaryu attachment per instance"
//* content.attachment.contentType 1..1
* content.attachment.data ^short = "Screening summary document inlined as base64 content; maximum data size 16KB"
* content.attachment.creation 0..1
* content.attachment.creation ^short = "The date (UTC) the screening summary content was generated if different from the report 'as-at' date"
* content.format from NzScreeningDocumentMediaTypesVS|1.0.0 (required)
* implicitRules 0..0
* contained 0..1
* contained only Patient
* contained ^short = "A single contained Patient instance conveys patient demographic attributes"
* extension 0..0
* language 0..0
* modifierExtension 0..0
* context 0..0
* content.extension 0..0
* content.modifierExtension 0..0