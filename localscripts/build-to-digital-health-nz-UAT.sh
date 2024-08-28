curl --location 'https://fhir-ig-builder.api-uat.digital.health.nz/v1/build' \
--header 'x-api-key: rCxZD9X41qWHRcZw1l1Aa9PmIZt8PRPaOAWixTF6' \
--header 'Content-Type: application/json' \
--data '{"igSourceGitUrl":"https://github.com/tewhatuora/fhir-screening.git", "gitBranch":"specPractitionerAcceptance", "publishToRegistry": false}'
