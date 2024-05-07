////////
// insert a SNOMED as a CodeableConcept eg.
//  * category[+] insert SNOMEDCodeableConcept(422735006,[["Summary clinical document (record artifact)"]])
//
RuleSet: SNOMEDCodeableConcept(code,display)
* coding.system = $sct
* coding.code = #"{code}"
* coding.display = "{display}"
