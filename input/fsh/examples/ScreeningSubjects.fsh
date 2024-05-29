Instance: MadeleineMeringue
InstanceOf: Patient
Description: "Example Patient instance representing a screening participant who is NZ European ethnicity"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(SCF7824)

* name.use = #usual
* name.family = "Meringue"
* name.given = "Madeleine"

* birthDate = "2008-11-24"

* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"

* address[0].use = #home
* address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "373 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"

// * gender = #female

// * extension[interpreterRequired].url = "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired"
// * extension[interpreterRequired].valueBoolean = false
// * extension[nzCitizen].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
// * extension[nzCitizen].extension[0].url = "status"
// * extension[nzCitizen].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"
// * extension[nzCitizen].extension[+].url = "source"
// * extension[nzCitizen].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/information-source-code#BREG "Birth Register"

// * telecom[0] insert ContactPoint(phone,[[+64 22 134 1304]],1)
// * telecom[+] insert ContactPoint(phone,[[+64 22 134 1304]],1)
// * telecom[+] insert ContactPoint(phone,[[+64 9 379 1357]],2)
// * telecom[+] insert ContactPoint(email,[[sugarhit@gmail.com]],3)

// * communication[0].language.coding[0].system = "urn:ietf:bcp:47"
// * communication[0].language.coding[0].code = #tgl
// * communication[0].language.coding[0].display = "Tagalog"

// * contact[0] insert WhanauCareTeamMember( true,$sct#58626002,[[Mother]],[[Beryl]],[[Hackett]],[[2023-06-01]],[[2026-01-01]],[[+64 21 111 111]],[[person1@gmail.com]] )            // legal guardian / mother 
// * contact[+] insert WhanauCareTeamMember( true,$sct#58626002,[[Spouse]],[[Matt]],[[Meringue]],[[2023-06-01]],[[2026-01-01]],[[+64 21 111 222]],[[person2@gmail.com]] )            // caregiver / spouse
// * deceasedBoolean = false


Instance: MickMahoe
InstanceOf: NzPatient
Description: "Example Patient instance representing a screening participant who has Maori ethnicity"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(SCF7826)

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

