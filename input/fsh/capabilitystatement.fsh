Instance: FHIRScreeningCapabilityStatement
InstanceOf: HnzToolingCapabilityStatement
Usage: #definition

* name = "FHIRScreeningCapabilityStatement"
* title = "National Screening FHIR API Capability Statement"
* status = #draft
* date = "2024-05-03"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* publisher = "Health New Zealand / Te Whatu Ora"
* description = "National Screening FHIR API"
* contact[+].name = "Health New Zealand Te Whatu Ora"
* contact[=].telecom.value = "https://www.tewhatuora.govt.nz"
* contact[=].telecom.system = #url
* kind = #instance
* implementation.description = "National Screening FHIR API"
* implementation.url = "https://api.nss.digital.health.nz/fhir/R4"
* fhirVersion = #4.0.1
* format = #json
* version = "1.0.2"
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = #SMART-on-FHIR
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://ppd.auth.services.health.nz/realms/hnz-integration/protocol/openid-connect/token"
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
* rest.security.extension[=].valueCode = #client-confidential-symmetric

* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].url = Canonical(HnzCustomHeadersExtension)
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[key].valueString = "Correlation-Id"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/shared-care/Correlation-Id.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = false
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].extension[key].valueString = "Request-Context"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/openapi-definitions/Request-Context.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = true
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[documentation].valueString = """A base64-encoded JSON object that defines the context of the current request.
See https://github.com/tewhatuora/schemas/blob/main/json-schema/Request-Context-v2.json for the schema this object must conform to.
"""
* extension[HnzApiSpecBuilderExtension].extension[licenseURL].valueUri = "https://www.tewhatuora.govt.nz/assets/Our-health-system/Digital-health/Digital-Service-Hub/API-Access-and-Use-Agreement.docx"
* extension[HnzApiSpecBuilderExtension].extension[licenseName].valueString = "Health New Zealand Digital Services Hub API Access and Use Agreement"
* extension[HnzApiSpecBuilderExtension].extension[externalDocs].valueUri = "https://fhir-ig.digital.health.nz/screening"

* rest.interaction.code = #search-system
* rest.interaction insert APIStandardsDocumentation     // see CapabilityHelpers.fsh

// DocumentReference searching 
* rest.resource[+].type = #DocumentReference
* rest.resource[=] insert ResourceDocumentation([[Provides a document rendition of screening summary information]])
* rest.resource[=].profile = Canonical(ScreeningSummaryDocument)
* rest.resource[=].interaction[+].code = #search-type
//* rest.resource[=].interaction[=].documentation = """"""
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude = "DocumentReference:subject"
* rest.resource[=].searchRevInclude = #not-supported

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

* rest.resource[=].searchParam[+].name = "_include"
* rest.resource[=].searchParam[=].definition = "https://www.hl7.org/implement/standards/FHIR/search.html#_include"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The optional parameter _include is used to follow links 'forward'. For example, to include relevant Patient resources for requested Encounter matches, based on the Encounter.subject element, using either the subject or patient search parameters.." 
