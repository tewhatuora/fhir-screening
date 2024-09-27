// INSERT this to generate an OperationOutcome with the supplied message
// fsh usage: * resource.element insert OperationOutcome([[instance-1]],[[The requested operation was not allowed]])
RuleSet: OperationOutcome(instance-id,message)
* resourceType = "OperationOutcome"
* id = "{instance-id}"
* issue[0].severity = #information
* issue[=].code = #informational
* issue[=].diagnostics = "{message}"
