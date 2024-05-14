# Changelog

## v0.3.0 (2024-05-13)

- Patient demographic attributes now represented using a contained [NzPatient](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html) (NZ Base IG) instance
- Replaced the specific IG-local Code System with a ValueSet drawing on SNOMED codes to define the types of NZ preventive screening programmes this API supports
- Added example instance of a **bowel** screening summary document
- Added this changelog.
- Added Developer Support nav section making API spec, artifact zips and changelog available

---

## v0.2.0 (2024-05-08)

- DocumentReference.category now additionally categorizes by the SNOMED type of screening service
- Changed DocumentReference.type coding to SNOMED from LOINC-coded
- Second example added showing screening summary content encoded as HTML

## v0.1.0 (2024-04-22)

Initial basic facade API based on FHIR DocumentReference wrapper of screening summary report content
