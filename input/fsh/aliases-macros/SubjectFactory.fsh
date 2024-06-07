RuleSet: MakePatient(nhi,first-name,last-name,birth-date,instanceid)
* resourceType = "Patient"
* id = "{instanceid}"
* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "{nhi}"
* name.use = #usual
* name.family = "{last-name}"
* name.given = "{first-name}"
* birthDate = "{birth-date}"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* address[0].use = #home
* address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "373 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"