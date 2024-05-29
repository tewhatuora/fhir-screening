////////////////////////////////////////////////////
// Patients

// sets up simple logical ref by NHI number without display name
RuleSet: NHIIdentifier(nhi-id)
* use = #official
* system = "https://standards.digital.health.nz/ns/nhi-id"
* value = "{nhi-id}"


// reference by NHI
RuleSet: NHIPatientRef(nhi-id, patient-name)
* type = "Patient"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "{nhi-id}"
* display = "{patient-name}"


////////////////////////////////////////////////////
// Reference(org | practitioner)

// org by HPI org ID
RuleSet: OrganisationRefByHPI(hpi-organisation-id, org-name)
* type = "Organization"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "{hpi-organisation-id}"
* display = "{org-name}"

// org by name only
RuleSet: OrganisationRefByName(org-name)
* type = "Organization"
* identifier.value = "{org-name}"
* display = "{org-name}"

// Practitioner using HPI CPN as identifier (NNXXXX)
RuleSet: ReferencePractitioner(hpi-practitioner-cpn, practitioner-name)
* type = "Practitioner"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-id"
* identifier.value = "{hpi-practitioner-cpn}"
* display = "{practitioner-name}"