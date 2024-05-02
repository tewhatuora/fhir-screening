////////////////////////////////////////////////////
// sets up a logical ref. to Organisation resource in another server using HPI org ID as identifier (GXXNNN-C)
RuleSet: OrganisationRefByHPI(hpi-organisation-id, org-name)
* type = "Organization"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "{hpi-organisation-id}"
* display = "{org-name}"

////////////////////////////////////////////////////
// logical ref. to Organisation by name only
RuleSet: OrganisationRefByName(org-name)
* type = "Organization"
* identifier.value = "{org-name}"
* display = "{org-name}"

// sets up a logical ref. to Practitioner resource in another server using HPI CPN as identifier (NNXXXX)
RuleSet: ReferencePractitioner(hpi-practitioner-cpn, practitioner-name)
* type = "Practitioner"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-id"
* identifier.value = "{hpi-practitioner-cpn}"
* display = "{practitioner-name}"