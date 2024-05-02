Instance: CervicalScreeningSummaryPDF
InstanceOf: ScreeningSummaryDocumentReference
Usage: #example
Description: "Example of an FHIR cervical screening summary as a PDF attachment (inline)"

* meta.profile = Canonical(ScreeningSummaryDocumentReference|1.0.0)
* meta.versionId = "1"
* meta.lastUpdated = "2024-05-01T22:00:00Z"

// * text 

* masterIdentifier insert DocIdentifier(1,[[National Screening Unit]])
* identifier insert DocIdentifier(1,[[National Screening Unit]])
* status = #current
* category = nz-screening-programmetypes#NCSP
* content.attachment insert CSHExamplePDF([[That's All]])
* content.format = $MediaTypesCS#application/pdf

// * title = "Draft care plan for Madeleine Meringue (no secondary prevention planned)"

// * category = $sct#320721000210102 "Rheumatic fever secondary prevention care plan" 

// * created = "2023-06-12"

// * intent = #plan

// * created = "2023-06-12"
// * period.start = "2023-08-01"
// * period.end = "2033-07-31"
// * status = #draft

// * insert PatientInstanceReference(subject,MadeleineMeringue)
// * author insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
// * careTeam[0] = Reference(SecondaryProphylaxisCareTeam)

// * supportingInfo[0] = Reference(PatientMedicationAllergyQuestionnaireResponse)          // ****
// * supportingInfo[+] = Reference(MedicationsAndFollowUpGuidanceQuestionnaireResponse)    // ****
// * supportingInfo[+] = Reference(PatientWhanauGoalsPreferencesQuestionnaireResponse)     // ****

// // * extension[0].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-onhold-reason"
// // * extension[=].valueString = "Patient on holiday overseas"

// // * extension[+].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-closure-reason"
// // * extension[=].valueString = "Patient left New Zealand"

