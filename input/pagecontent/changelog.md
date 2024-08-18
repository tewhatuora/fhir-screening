# Changelog

## v0.9.2 (2024-06-19)

- The example FHIR `Patient` *Kassandra Temahoe* (ZCQ3240) now demonstrates how data will be returned if the subject is deceased.
- Updated sample HTML content.

## v0.9.1 (2024-06-13)

- The `.text` element is now excluded in the screening summary profile `DocumentReference`.
- Updated sample HTML content for 'participant-only' screening summary.
- Added error handling details to [capability statement](CapabilityStatement-FHIRScreeningCapabilityStatement.html) and [search behaviour](search.html) page.

## v0.9.0 (2024-06-07)

### Example screening summaries

- Added new example DocumentReference for subject ZCQ3240 (Kassandra Temahoe) with a partial screening summary document (no screening history)
- Updated example DocumentReference for subject ZCU7824 (Madeleine Meringue) to a full screening summary document with screening history
- Added screening summary examples (document images) and HTML previews to website
- Updated FHIR instance examples with more realistic HTML content
- Deleted bowel screening summary example

### Miscellaneous

- Removed empty onboarding page

## v0.8.0 (2024-06-05)

- Added [NSS to FHIR gender translation](gender.html) information for subject gender and sex-assigned-at-birth.
- Added two patient attributes to the API response data
  - gender
  - sex-at-birth
- Revised one of the example screening subject FHIR `Patient` instances to be gender-diverse
- Removed `meta.versionId` and `meta.lastUpdated` from example instance metadata
- Various alterations to the API capability statement:
  - **read**, **vread** and **_revinclude** operations have been removed
  - removed unnecessary query parameters *_profile*, *identifier*, *date* and *patient*
  - **_include** operation now spec'd in capability statement
- FHIR search response data model diagram moved to the [search behaviour](search.html) page.
- Revised definitions of use cases

---

## v0.7.0 (2024-05-29)

### API now returns patient data using FHIR's **_include operation** instead of as a contained instance

- Updated DocumentReference profile to remove contained instance and links
- Updated API search behaviour documentation
- Revised API search response examples
- Revised data model and sequence diagrams
- Changed profile name to `ScreeningSummaryDocument`
- Corrected total count to 0 in search response examples with no mode:match entries

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
