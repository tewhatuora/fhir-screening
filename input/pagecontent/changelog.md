# Changelog

## v0.7.0 (2024-05-29)

### API now returns patient data using FHIR's **_include operation** instead of as a contained instance

- Updated DocumentReference profile to remove contained instance and links
- Updated API search behaviour documentation
- Revised API search response examples
- Revised data model and sequence diagrams
- Changed profile name to `ScreeningSummaryDocument`

---

## v0.6.0 (2024-05-28)

- Added business view, draft use cases and API operations.

- Added API sequence diagrams

- Added page describing API search behaviour

- Added examples showing results for different search scenarios as combinations of ScreeningSummary and OperationOutcome instances

---

## v0.5.0 (2024-05-23)

### Adjustments to patient referencing within the DocumentReference profile / examples

- The DocumentReference profile now requires two Reference(Patient)s -- **.subject** and **context.sourcePatientInfo** -- the first is a reference to NHI while the second is a reference to the inline (contained)
NzPatient instance.  This change was needed so that searches by GET DocumentReference?subject= searches work in the expected FHIR way

- The example DocumentReference instances have been adjusted to reflect the revised Patient instance referencing/linking per above.

---

## v0.4.0 (2024-05-17)

Refinements after presentation to HL7NZ FHIR Working Group

- Improved short descriptions of profiled elements
- The .date element is now purposed to convey the screening summary report 'as-at' date instead of instance creation date
- Date search parameter type added to API capability statement
- Minor improvements to FHIR data model

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
