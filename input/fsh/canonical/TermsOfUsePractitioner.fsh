Instance: TermsOfUsePractitioner
InstanceOf: Questionnaire
Usage: #definition

Description: "Captures acceptance of Terms Of Use by NZ health practitioners accessing screening information"

* url = Canonical(TermsOfUsePractitioner)

* identifier[0].use = #official
* identifier[=].value = "terms-of-use-practitioner"
* identifier[=].period.start = "2024-09-16"

* version = "1.0.0"
* date = "2024-09-16"
* status = #active
* experimental = false

* name = "TermsOfUsePractitioner"
* title = "Terms of Use acceptance - NZ health practitioners accessing screening information"
* purpose = "Captures acceptance of Terms Of Use by NZ health practitioners accessing screening information"
* subjectType[0] = #Location
* subjectType[+] = #Organization

* publisher = "Health NZ"
* contact[0].name = "Health New Zealand / Te Whatu Ora"
* contact[=].telecom[0].system = #email
* contact[=].telecom[=].value = "integration@tewhatuora.govt.nz"
* contact[=].telecom[+].system = #url
* contact[=].telecom[=].value = "https://www.tewhatuora.govt.nz"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"

// For this Questionnaire all items are contained within a single outer group item
* item[0].linkId = "container"
* item[=].type = #group

// Items start here
* item[=].item[0].linkId = "terms"
* item[=].item[=].type = #display
* item[=].item[=].text = "New Zealand Health Information - Terms of Access and Use for Practitioners"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension.valueString = "<p>In your role, providing health and / or disability support services (User), your EMR / PMS system is accessing to Health New Zealand (HNZ) information services, such as the Aotearoa Immunisation and some Screening Registers. As a User, you will be contributing to, and have access to identifiable information about individuals receiving health services (the Information). Privacy is a priority to all of us contributing to delivery of healthcare in New Zealand. HNZ is kaitiaki for the Information and is reliant on you to manage that Information carefully and only as authorised. Access to this Information is only provided to you on the following terms:</p><p><strong>Do not proceed to access the Information unless you accept all of the following terms</strong>:</p><p>As a User you confirm that you:</p><ol><li>will comply with the Health Act 1956, Privacy Act 2020 and the Health Information Privacy Code 2020, in relation to any Information.</li><li>will complete any training required for access to the Information (and the organisation you work for will be responsible for advising you of what that training is).</li><li>will ensure that each health consumer about whom you access or use Information has either been provided with relevant Privacy Statement materials by you, or can reasonably have been expected to have been provided with those materials by the processes your employer operates.</li><li>must: <ol type=\"a\"><li>only use the Information as part of delivery of health and / or disability services for identified health consumers where you are part of the care delivery team.</li><li>keep Information secure and confidential, for example retaining it within secure point of care records, and ensuring it is not visible on an unattended computer screen, or in an unattended area which may allow access to the Information by unauthorized persons.</li><li>only look at and / or download the Information you need to perform your role, and not disclose it to anyone else unless they need it to perform their role.</li><li>not share your access credentials with anyone or let anyone else use your credentials.</li><li>not let anyone else use your device or computer where they may access the Information unless they have logged in with their own credentials.</li><li>only access the Information using secure devices or computer systems approved by your organisation (they must have strong password protection or encryption to prevent unauthorised access and be kept up to date with all security software releases).</li></ol></li><li>accept and understand that all access to the Information by you will be logged for audit and reporting purposes and may be monitored. Each health consumer has a right to see who has accessed information about them.</li><li>Acknowledge that while HNZ endeavours to make high quality and accurate data available, you acknowledge that at times it may be imperfect, or incomplete and that utilising this data does not supersede appropriate clinical judgement, and quality and safety practices.</li><li>will immediately advise the Te Whatu Ora (HNZ) Privacy Officer (<a href=\"mailto:hnzprivacy@TeWhatuOra.govt.nz\">hnzprivacy@TeWhatuOra.govt.nz</a>) and your own Privacy Officer if you think there may have been, or is about to be, a privacy or security breach. The sooner HNZ is made aware of a potential breach, the sooner it can resolve any issues.</li><li>must help us with any inquiry into any breach, or potential breach, of privacy if requested.</li></ol><p><em>Your IT system may supply information for HNZ national collections (such as patient demographic information or immunisation details) so you must:</em></p><ol start=\"9\"><li>keep your records current as that will ensure only accurate and up to date Information is submitted: <ol type=\"a\"><li>You must enter electronic records contemporaneously (or as soon as reasonably practicable after the attendance).</li><li>If you operate with both paper and electronic records at your organisation ensure you have, and follow, procedures requiring the electronic record to be the master record, and how updates are managed.</li></ol></li></ol><p>National Cervical Screening Programme</p><ol start=\"10\"><li>Information from the National Cervical Screening Programme (NCSP) must only be accessed by those authorised to do so. Authorised roles include: <ol type=\"a\"><li>a health practitioner engaged to provide cervical screening services for a person, and in the case of a Nurse Practitioner, Registered Nurse or Enrolled Nurse must have completed the relevant NCSP Learning Pathway; or</li><li>a specific role authorised by the NCSP Manager for outreach or other related services.</li></ol></li><li>If you are authorised to access information about cervical screening you:</li><ol type=\"a\"><li>understand that this access is strictly controlled by law under Part 4A of the Health Act 1956 and you must comply with those legal requirements.</li><li>must satisfactorily complete any training offered to you by the National Cervical Screening Programme.</li></ol><li>You must comply with any standard operating procedures or national policy, operations, and quality standards applicable to your role as part of the National Cervical Screening Programme.</li></ol><p>We may update these terms from time to time. If we do so you will need to reconfirm your acceptance before continuing to access the Information.</p><p>If any User does not comply with these User requirements their access to Health New Zealand API services may be removed, and the matter referred to the User's Responsible Authority and / or employer.</p>"

* item[=].item[+].linkId = "note"
* item[=].item[=].type = #display
* item[=].item[=].text = "Below are the details your system has provided us. Please confirm they are correct before proceeding. If they are incorrect please do not proceed but contact your practice administrator."
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension.valueString = "<p><strong>Below are the details your system has provided us. Please confirm they are correct before proceeding. If they are incorrect please do not proceed and contact your practice administrator.</strong></p>"

* item[=].item[+].linkId = "cpn"
* item[=].item[=].type = #string
* item[=].item[=].readOnly = true
* item[=].item[=].text = "Common Person Number (aka HPI Practitioner Id)"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].item[=].extension.valueString = "hpiPractitioner.identifier.value"

* item[=].item[+].linkId = "name"
* item[=].item[=].type = #string
* item[=].item[=].readOnly = true
* item[=].item[=].text = "Name"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].item[=].extension.valueString = "hpiPractitioner.display"

* item[=].item[+].linkId = "raNumber"
* item[=].item[=].type = #string
* item[=].item[=].readOnly = true
* item[=].item[=].text = "Registration Authority Number (eg. Medical Council number)"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].item[=].extension.valueString = "registrationAuthorityNumber.value"

* item[=].item[+].linkId = "facOrgId"
* item[=].item[=].type = #string
* item[=].item[=].readOnly = true
* item[=].item[=].text = "HPI Facility or Organisation Id"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].item[=].extension.valueString = "subject.identifier.value"

* item[=].item[+].linkId = "facOrgName"
* item[=].item[=].type = #string
* item[=].item[=].readOnly = true
* item[=].item[=].text = "HPI Facility or Organisation name"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].item[=].extension.valueString = "subject.display"

* item[=].item[+].linkId = "acceptance"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "I accept the Health New Zealand Information Access Terms of Use"
* item[=].item[=].required = true
