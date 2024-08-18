Instance: MadeleineMeringue
InstanceOf: Patient
Description: "Example of a female screening participant who is NZ European ethnicity"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(ZCU7824)

* name.use = #usual
* name.family = "Meringue"
* name.given = "Madeleine"

* birthDate = "2008-11-24"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "female"

* address[0].use = #home
* address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "373 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"

* gender = http://hl7.org/fhir/administrative-gender#female "female"

// macro for use in patient construction in examples eg. where _included
// I have tried re-using this ruleset to make the instance above but FSH sends the sharks out every time ...
RuleSet: makeMadeleineMeringue(instanceid)
* resourceType = "Patient"
* id = "{instanceid}"

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(ZCU7824)

* name.use = #usual
* name.family = "Meringue"
* name.given = "Madeleine"

* birthDate = "2008-11-24"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "female"

* address[0].use = #home
* address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "373 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"

* gender = http://hl7.org/fhir/administrative-gender#female "female"


