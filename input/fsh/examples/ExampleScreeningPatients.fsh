//////// //////// //////// //////// //////// //////// //////// 
// example female NZ european patient
Instance: screening-subject-1
InstanceOf: NzPatient
Usage: #inline

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier[NHI] insert NHIIdentifier(SCF7824)

* name.use = #usual
* name.family = "Meringue"
* name.given = "Madeleine"

* birthDate = "2008-11-24"

* extension[ethnicity].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"

* address[0].use = #home
* address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "373 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"
// * address[=].period.start = "2023-08-01"

//////// //////// //////// //////// //////// //////// //////// 
// example male maori patient
Instance: screening-subject-2
InstanceOf: NzPatient
Usage: #inline

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier[NHI] insert NHIIdentifier(SCF7826)

* name.use = #usual
* name.family = "Mahoe"
* name.given = "Mick"

* birthDate = "1968-11-24"

* extension[ethnicity].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"

* address[0].use = #home
* address[=].text = "375 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "375 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"
// * address[=].period.start = "2023-08-01"



