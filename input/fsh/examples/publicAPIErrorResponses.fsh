
/************/
Instance: APIError-MissingOrgFacilityToU
InstanceOf: OperationOutcome
Usage: #example
Description: "Public API response when no Terms of Use acceptance record was found for the health organisation"

* issue[+].severity = #error
* issue[=].code = #value
* issue[=].details.coding.code = #NO_TOU_ORGFAC     // home grown code for now
* issue[=].diagnostics = "No Terms of Use acceptance was found for the organisation in the context of this API request"


/************/
Instance: APIError-InvalidHPI
InstanceOf: OperationOutcome
Usage: #example
Description: "Public API response when Request-Context set by PMS/API consumer contains a Practitioner that is not valid"

* issue[+].severity = #error
* issue[=].code = #value
* issue[=].details = #HPI_INVALID                 // home grown code for now
* issue[=].diagnostics = "The practitioner Id does not validate in HPI lookup"

/************/
Instance: APIError-InvalidHPIOrganisation
InstanceOf: OperationOutcome
Usage: #example
Description: "Public API response when Request-Context set by PMS/API consumer contains an Organisation that is not valid"

* issue[+].severity = #error
* issue[=].code = #value
* issue[=].details = #HPI_INVALID                 // home grown code for now
* issue[=].diagnostics = "The organisation Id does not validate in HPI lookup"

/************/
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

/************/
Instance: APIError-Unauthorised
InstanceOf: OperationOutcome
Usage: #example
Description: """
            Access to cervical screening summary documents is **restricted**.<br>
                This API uses informaton that is held in the Health Practitioner Index (HPI) in order to validate information that is provided by
                the API Consumer in their `Request-Context` header. Below are some examples where access to data may be declined.<br>
                - A request is made to the API by practitioners who **DO NOT** hold a Nursing Council (NC) or Medical Council (MC) registration that is currently active.
                - A request is made to the API by a practitioner who is recorded as deceased in the HPI.
                - A request is made to the API by a practitioner who does not hold a **current** registration
            """
* issue[+].severity = #error
* issue[=].code = #suppressed
* issue[=].details = #UNAUTHORISED_PRACTITIONER_TYPE                 // home grown code for now
* issue[=].diagnostics = "Access to cervical screening summaries is restricted to medical council or nursing council registrations."

* issue[+].severity = #error
* issue[=].code = #suppressed
* issue[=].details = #UNAUTHORISED_PRACTITIONER_DECEASED                 // home grown code for now
* issue[=].diagnostics = "Practitioner deceased."

* issue[+].severity = #error
* issue[=].code = #suppressed
* issue[=].details = #UNAUTHORISED_REGISTRATION_NOT_CURRENT                 // home grown code for now
* issue[=].diagnostics = "Practitioner registration must be current."

* issue[+].severity = #error
* issue[=].code = #suppressed
* issue[=].details = #UNAUTHORISED_ORGANISATION_INACTIVE                 // home grown code for now
* issue[=].diagnostics = "Organisation must be active."
