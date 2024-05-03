// REST resource CRUD operations
RuleSet: GenericCRUDInteractions
* interaction[0].code = #create
* interaction[+].code = #read
* interaction[+].code = #update
* interaction[+].code = #delete
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// REST resource query/read-only operations
RuleSet: QuerySearchInteraction
* interaction[0].code = #read
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

RuleSet: ResourceDocumentation(markdown)
// adds markdown doc to a CapabilityStatement element

* documentation = "{markdown}"
