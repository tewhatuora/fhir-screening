// INSERT this to generate an OperationOutcome with the supplied message
RuleSet: SearchInformationalOperationOutcome(id,message)
* resourceType = "OperationOutcome"
* id = "OperationOutcomeInstance-{id}"
* issue[0].severity = #information
* issue[=].code = #informational
* issue[=].diagnostics = "{message}"
