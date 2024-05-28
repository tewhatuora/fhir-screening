## Business View

### About

The National Screening Unit's Cervical Screening Register is a key component of the National Cervical Screening Programme (NCSP) as the national database for information relating to cervical screening events.  Currently there is lack of timely access to Cervical Screening Summaries for frontline screen takers and participants. This is a barrier to opportunistic and planned screening events.

The Screening History API aims to surface a *participant's cervical screening history* to Primary and Community screen-takers, colposcopy practitioners, health professionals involved with Cervical Cancer treatment and participants (health consumers). Provider systems that integrate using this API can enable Cervical Screen takers and other clinical staff to accurately assess the participant's cervical screening needs by providing appropriate, relevant and timely access to participant’s cervical screening history from their clinical application of choice.

Initially this solution will surface a clinician- and participant-focused Cervical Screening History document to be consumed by the clinical or patient application of choice, e.g. Practice Management Systems, Electronic Medical Records, Case Management Systems and Patient Portals.

### Context

This API enables health care providers and the Health Care Consumer participating in cervical screening to retrieve a consumer’s/ their own screening history from their preferred application, such as PMS systems, Electronic Medical Records, Case Management Systems and Patient Portals. 

Screening summaries accessible using this API will support:

- Assessment of when a Cervical Screen is due,
- Next event due of the clinical pathway,
- Previous clinical history from other Cervical Screening Events,
- Enrolment information, e.g withdrawn from the National cervical screening programme.

The initial API is not intended for any other purpose, eg.

- Validating a patient's NHI identifier (NHI FHIR API should be used for such purposes), or
- Assessing *eligibility* for free HPV screening

### What information does a Screening Summary contain

For the initial API which supports cervical screening, a Screening Summary is a document (PDF/HTML) containing the following information (grouped by sections):

**Participant Details:**

- Date of Birth
- Ethnicity
- Full Name
- NHI Number
- Address

**Participant Summary** (Clinical summary for cervical screening)

- Pathway status
- Next Expected Event
- Next Event due Date
- Programme Status
- Unenrolled Reason
- Correspondence
- Immune Deficient
- Total Hysterectomy
- Cervical Cancer

### Screening History

- Individual medical history of all recorded diagnostic results and events related to cervical screening for the participant in reverse chronological order. The individual medical history may contain any of the following:

  - Events - Referral, Colposcopy Visit, Did Not Attend Visit
  - Medical Condition, Medical Procedure
  - Synopsis Test Result - Cytology, Histology, HPV
  - Test results - Cytology, Histology, HPV

- An explanatory reason if no screening history exists, e.g.

  - Newly enrolled participant
  - Participant has withdrawn from the National Cervical Screening Programme
  - Participant isn’t eligible for Cervical screening.

### Access

Health providers listed in Schedule 2 of the [Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) are allowed to access the participants screening history information held in the National Screening Solution (Cervical Screening Register) for the purpose of Cervical Screening, screening follow up, Cervical Cancer Treatment, Outreach and participants access to their own information. 

This includes the following kinds of health providers:

- Primary Care Practices,
- Hauora providers,
- Sexual Health Aotearoa,
- colposcopy clinics
- other specialist health services, e.g. oncology, Corrections Facilities, etc.

The Screening history FHIR API provides a new way of accessing this information directly from within a Health provider's clinical application.

All access requests will be governed by Te Whatu Ora’s Digital Services Hub onboarding process. For more information see - [On-boarding and Compliance](https://nhi-ig.hip.digital.health.nz/OnboardingAndComplianceTesting.html)

### Expectations and Requirements

Te Whatu Ora expects parties integrating with this API to develop implementations that align with all of the following expectations:

- A performant implementation that improves the capability of end users to perform identity,
- An implementation that will make efficient use of the web services and ensure unnecessary load is not created on Te Whatu Ora’s systems,
- The implementation will meet the relevant compliance requirements,
- The user interface will encourage and support user compliance with standard business processes,
- The user interface will support users in the appropriate and accurate use and management of patient identity data.

Conformance with these expectations will be assessed by testing to be agreed between the integrator and Te Whatu Ora.
