Instance: KassandraTemahoe
InstanceOf: NzPatient
Description: "Example screening subject who is gender-diverse (female at birth), Māori ethnicity"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(ZCQ3240)

* name.use = #usual
* name.family = "Temahoe"
* name.given = "Kassandra"

* birthDate = "1968-11-24"
* deceasedBoolean = true

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "female"

* gender = http://hl7.org/fhir/administrative-gender#other "other"

* gender.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/gender-original-text"
* gender.extension[=].valueString = "Gender Diverse"

* address[0].use = #home
* address[=].text = "375 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "375 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"


// macro for use in patient construction in examples eg. where _included
// I have tried re-using this ruleset to make the instance above but FSH sends the sharks out every time ...
RuleSet: makeKassandraTemahoe(instanceid)
* resourceType = "Patient"
* id = "{instanceid}"
* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(ZCQ3240)

* name.use = #usual
* name.family = "Temahoe"
* name.given = "Kassandra"

* birthDate = "1968-11-24"
* deceasedBoolean = true

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"

* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "female"

* gender = http://hl7.org/fhir/administrative-gender#other "other"

* gender.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/gender-original-text"
* gender.extension[=].valueString = "Gender Diverse"

* address[0].use = #home
* address[=].text = "375 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "375 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"
// * address[=].period.start = "2023-08-01"