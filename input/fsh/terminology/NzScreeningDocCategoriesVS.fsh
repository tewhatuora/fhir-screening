ValueSet: NzScreeningDocCategoriesVS
Id: nz-screening-doccategories-code
Title: "Codes for categorization of NZ screening programme summary documents"
Description:  "This value set defines the codes valid for categorization of NZ screening summary document references."
* ^version = "1.0.0"
* ^experimental = false
// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/nz-screening-doccategories"
* ^status = #active

* include codes from system nz-screening-programmetypes
* $sct#1230046007 "Cervical cancer screening service (qualifier value)"