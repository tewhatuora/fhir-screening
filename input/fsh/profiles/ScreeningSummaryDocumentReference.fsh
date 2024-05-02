Profile: ScreeningSummaryDocumentReference
Parent: DocumentReference
Description: "A FHIR DocumentReference representation of a screening summary report"
* ^version = "0.1.0"

// elements modified from parent profile
* docStatus 0..0
* category from NzScreeningProgrammeTypesVS (required)
* authenticator 0..0
* subject only Reference(Patient)
* date obeys fhir-hnz-period-utc-1
* author only Reference(Organization)
* custodian only Reference(Organization)
* relatesTo 0..0
* content.format from NzScreeningDocumentMediaTypesVS|1.0.0 (required)
* implicitRules 0..0
* contained 0..0
* extension 0..0
* language 0..0
* modifierExtension 0..0
* context 0..0