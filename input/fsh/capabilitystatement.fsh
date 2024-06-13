Instance: FHIRScreeningCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* name = "FHIRScreeningCapabilityStatement"
* title = "National Screening FHIR API Capability Statement"
* status = #draft
* date = "2024-05-03"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* publisher = "Health New Zealand / Te Whatu Ora"
* description = "National Screening FHIR API"
* kind = #instance
* implementation.description = "National Screening FHIR API"
* implementation.url = "https://fhir.api.digital.health.nz/R4"
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/token"
* rest.security.extension.extension[+].url = "authorize"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/authorize"

* rest.interaction.code = #transaction
* rest.interaction insert StandardErrorsDocumentation

// DocumentReference searching 
* rest.resource[+].type = #DocumentReference
* rest.resource[=] insert ResourceDocumentation([[Provides a document rendition of screening summary information]])
* rest.resource[=].profile = Canonical(ScreeningSummaryDocument)
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "DocumentReference:subject"
* rest.resource[=].searchRevInclude = ""

// * rest.resource[=].searchParam[0].name = "identifier"
// * rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#DocumentReference-masterIdentifier"
// * rest.resource[=].searchParam[=].type = #token
// * rest.resource[=].searchParam[=].documentation = "The identifier of the versioned master document"

// * rest.resource[=].searchParam[0].name = "_profile"
// * rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
// * rest.resource[=].searchParam[=].type = #reference
// * rest.resource[=].searchParam[=].documentation = "Filter document instances tagged with the **NZ screening document** profile eg. ?_profile=https://build.fhir.org/ig/tewhatuora/fhir-screening.fhir.ig/StructureDefinition/nz-screening-summary"

* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#DocumentReference-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = """NHI of the person who is the subject of the screening summary document.
- If no screening information exists in the Register for a given subject NHI, the API returns `200 OK` and an empty FHIR Bundle.
"""

* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#DocumentReference-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Filters screening summaries by selecting the type of screening programme" 

* rest.resource[=].searchParam[+].name = "contenttype"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#DocumentReference-contenttype"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Optional parameter that allows a PDF rendition (#application/pdf) of the screening summary content to be requested instead of the default HTML." 

// * rest.resource[=].searchParam[+].name = "type"
// * rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#clinical-type"
// * rest.resource[=].searchParam[=].type = #token
// * rest.resource[=].searchParam[=].documentation = "Filters the kind of document" 

// virtual Patient instances for conveying patient demographic 
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
* rest.resource[=]
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=] insert ResourceDocumentation([[This API serves Patient instances ONLY by inclusion in a DocumentReference search result.  API consumers have no direct access to the FHIR Patient resource type.]])
* rest.resource[=].searchInclude = ""
* rest.resource[=].searchRevInclude = ""
