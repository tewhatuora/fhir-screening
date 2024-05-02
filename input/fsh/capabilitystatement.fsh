Instance: FHIRScreeningCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* name = "FHIRScreeningCapabilityStatement"
* title = "National Screening FHIR API Capability Statement"
* status = #draft
* date = "2023-10-19"
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

// 
* rest.resource[+].type = #DocumentReference
* rest.resource[=].profile = Canonical(ScreeningSummaryDocumentReference)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=] insert ResourceDocumentation([[This server profiles FHIR DocumentReference to support NZ national screening programme summary reports]])
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The patient's official NHI identifier"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter **NZ screening instances** using ?Resource-profile=https://build.fhir.org/ig/tewhatuora/fhir-screening/StructureDefinition/nz-screening-summary"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
