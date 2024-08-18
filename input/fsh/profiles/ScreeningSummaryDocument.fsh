Profile: ScreeningSummaryDocument
Parent: DocumentReference
Description: "A FHIR DocumentReference representation of a screening summary report"
Id: nz-screening-summary

* ^version = "1.0.0"

// elements modified from parent profile
* text 0..0   // As an HTML rendition of the screening summary shall appear be in content.attachment by default, this text Narrative is not to be used
* docStatus 0..0
* category from nz-screening-programmetype-code (required)
* category ^short = "In screening summary DocRefs, denotes the type of screening programme only; cannot be used for other categorization purposes"
* type = $sct#422735006 "Summary clinical document (record artifact)"
* type ^short = "All screening summary DocRefs have this type code"
* authenticator 0..0
* subject only Reference(Patient)
* subject ^short = "Identifies the patient by an NHI identifier (a FHIR logical reference), AND a local Patient instance (a literal reference)"
* date ^short = "The 'as-at' date (UTC) of the screening summary report"
* author only Reference(Organization)
* custodian only Reference(Organization)
* description 0..0
* securityLabel 0..0
* relatesTo 0..0

* content ^short = "Attaches a rendition of the screening summary report"
//* content.attachment.contentType 1..1
* content.attachment.data ^short = "Screening summary document inlined as base64 content. By default this is an HTML rendition."
* content.attachment.creation 0..1
* content.attachment.creation ^short = "The dateTime (UTC) the screening summary content was generated if different from the report 'as-at' date"
// x* content.format from NzScreeningDocumentMediaTypesVS|1.0.0 (required)

* implicitRules 0..0
* contained 0..0
* contained ^short = "A single contained Patient instance conveys patient demographic attributes."
* extension 0..0
* language 0..0
* modifierExtension 0..0
// * context.sourcePatientInfo 1..1
// * context.sourcePatientInfo only Reference(Patient)
// * context.sourcePatientInfo ^short = "Must reference the contained (inline) Patient instance which conveys patient demographic attributes."

* content.extension 0..0
* content.modifierExtension 0..0