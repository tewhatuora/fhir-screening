
// //////// //////// //////// //////// //////// //////// //////// //////// ////////
Instance: APIError-MissingOrgFacilityToU
InstanceOf: OperationOutcome
Usage: #example
Description: "Public API response when no Terms of Use acceptance record was found for the health organisation/facility"

* issue[+].severity = #error
* issue[=].code = #value
* issue[=].details.coding.code = #NO_TOU_ORGFAC     // home grown code for now
* issue[=].diagnostics = "No Terms of Use acceptance was found for the organisation or facility in the context of this API request"


// //////// //////// //////// //////// //////// //////// //////// //////// ////////
Instance: APIError-InvalidHPI
InstanceOf: OperationOutcome
Usage: #example
Description: "Public API response when Request-Context set by PMS/API consumer contains a Practitioner, Organisation or Facility Id that is not valid"

* issue[+].severity = #error
* issue[=].code = #value
* issue[=].details = #HPI_INVALID                 // home grown code for now
* issue[=].diagnostics = "THe practitioner Id does not validate in HPI lookup"


// //////// //////// //////// //////// //////// //////// //////// //////// ////////
Instance: APIError-CompleteTermsOfUseForm
InstanceOf: OperationOutcome
Usage: #example
Description: "Public API response when it has determined a Practitioner needs to accept Terms of Use"

* issue[+].severity = #error
* issue[=].code = #suppressed
* issue[=].details = #PRACTITIONER_TOU_ACCEPT_NEEDED                 // home grown code for now
* issue[=].diagnostics = "No terms of use acceptance was found for the indicated practitioner.  The practitioner should complete the Terms Of Use form at the link provided in this response."

* issue[+].severity = #information
* issue[=].code = #informational
* issue[=].details = #PRACTITIONER_TOU_ACCEPT_NEEDED                 // home grown code for now
* issue[=].diagnostics = "https://forms.health.nz/TermsOfUsePractitioner?token=eyJ...M2v-U"
