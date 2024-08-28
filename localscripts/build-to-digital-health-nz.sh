curl --location 'https://fhir-ig-builder.api.digital.health.nz/v1/build' \
--header 'x-api-key: RtrHimssjFa2oAM3qXBQB9eZFpaOXNL38gCcIEOw' \
--header 'Content-Type: application/json' \
--data '{"igSourceGitUrl":"https://github.com/tewhatuora/fhir-rheumatic-fever.git", "gitBranch":"master", "publishToRegistry": false}'