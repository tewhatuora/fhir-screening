// INSERT this to generate an OperationOutcome with the supplied message
RuleSet: SearchInformationalOperationOutcome(instance-id,message)
* resourceType = "OperationOutcome"
* id = "{instance-id}"
* issue[0].severity = #information
* issue[=].code = #informational
* issue[=].diagnostics = "{message}"
