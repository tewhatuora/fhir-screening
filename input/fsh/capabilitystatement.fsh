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
* implementation.url = "https://fhir.api.digital.health.nz/R4"
* fhirVersion = #4.0.1
* format = #json
* version = "0.9.3"
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = #SMART-on-FHIR
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://ppd.auth.services.health.nz/realms/hnz-integration/protocol/openid-connect/token"
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
* rest.security.extension[=].valueCode = #client-confidential-symmetric
// * rest.security.service = http://hl7.org/fhir/restful-security-service#OAuth
// * rest.security.extension[0].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
// * rest.security.extension[=].extension[0].url = "token"
// * rest.security.extension[=].extension[=].valueUri = "https://ppd.auth.services.health.nz/realms/hnz-integration/protocol/openid-connect/token"
// * rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
// * rest.security.extension[=].valueCode = #client-confidential-symmetric

* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].url = Canonical(HnzCustomHeadersExtension)
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[key].valueString = "Correlation-Id"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/shared-care/Correlation-Id.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = false
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].extension[key].valueString = "x-api-key"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/shared-care/Api-Key.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = true
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].extension[key].valueString = "Request-Context"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://github.com/tewhatuora/schemas/blob/main/openapi-definitions/Request-Context.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = true
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[documentation].valueString = """A base64-encoded JSON object that defines the context of the current request.
See https://github.com/tewhatuora/schemas/blob/main/json-schema/Request-Context.json for the schema
"""
* extension[HnzApiSpecBuilderExtension].extension[licenseURL].valueUri = "https://www.tewhatuora.govt.nz/assets/Our-health-system/Digital-health/Digital-Service-Hub/API-Access-and-Use-Agreement.docx"
* extension[HnzApiSpecBuilderExtension].extension[licenseName].valueString = "Health New Zealand Digital Services Hub API Access and Use Agreement"
* extension[HnzApiSpecBuilderExtension].extension[externalDocs].valueUri = "https://fhir-ig.digital.health.nz/screening"

* rest.interaction.code = #search-system
* rest.interaction insert StandardErrorsDocumentation

// DocumentReference searching 
* rest.resource[+].type = #DocumentReference
* rest.resource[=] insert ResourceDocumentation([[Provides a document rendition of screening summary information]])
* rest.resource[=].profile = Canonical(ScreeningSummaryDocument)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = """A base64-encoded JSON object that defines the context of the current request.

Applications using this screening FHIR API **MUST** populate the following attributes in `RequestContext`

- *userIdentifier* - the identity of the user as known by the application which consumes this FHIR API
- *userRole* - the role of the user as known by the application which consumes this FHIR API
- *secondaryIdentifier* - identify the user's health organisation (as they affiliate with for the purpose of this API usage) as an HPI organisation identifier.

See [Te Whatu Ora github](https://github.com/tewhatuora/schemas/blob/main/json-schema/Request-Context.json) for the schema that defines this JSON data structure.
"""

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
// * rest.resource[+].type = #Patient
// * rest.resource[=].profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * rest.resource[=]
// * rest.resource[=].readHistory = false
// * rest.resource[=].updateCreate = false
// * rest.resource[=].conditionalCreate = false
// * rest.resource[=].conditionalRead = #not-supported
// * rest.resource[=].conditionalUpdate = false
// * rest.resource[=].conditionalDelete = #not-supported
// * rest.resource[=] insert ResourceDocumentation([[This API serves Patient instances ONLY by inclusion in a DocumentReference search result.  API consumers have no direct access to the FHIR Patient resource type.]])
// * rest.resource[=].searchInclude = ""
// * rest.resource[=].searchRevInclude = ""
