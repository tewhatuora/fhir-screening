Instance: TermsOfUseOrgFacility
InstanceOf: Questionnaire
Usage: #definition

Description: "Captures acceptance of Terms Of Use by NZ health practitioners accessing screening information"

* url = Canonical(TermsOfUseOrgFacility)

* identifier[0].use = #official
* identifier[=].value = "terms-of-use-orgfacility"
* identifier[=].period.start = "2024-09-16"

* version = "1.0.0"
* date = "2024-09-16"
* status = #active
* experimental = false

* name = "TermsOfUseOrgFacility"
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

// In this Questionnaire all items are contained by an innerContainer group within an outer group item (nested two levels deep)
* item[0].linkId = "container"
* item[=].type = #group

* item[=].item[0].linkId = "containerInner"
* item[=].item[=].type = #group

// Items start here
* item[=].item[=].item[0].linkId = "terms"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].text = "Information Access and Use Agreement for Aotearoa Health Sector Organisations"
* item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].item[=].text.extension.valueString = "<div><ol><li>This Agreement is between Health New Zealand I Te Whatu Ora (We / Us / Our) and [Full Legal Name of Organisation or sole trader and trading name if different / Physical and Mailing Address / NZBN / HPI ORG ID / - including HPI FAC ID Facility details for locations at which the Organisation provides health services] (You / Your)].</li><li><strong>Introduction</strong><br> We operate digital Application Programming Interface (API) Services that enable third party applications or solutions approved by Us (the Application) to interact with Health New Zealand I Te Whatu Ora’s information (Our Information). You (the Organisation) are to use an Application that is involved in the provision of health and or disability services in the New Zealand Health sector to access and / or contribute to Our Information.</li> <li><strong>Scope</strong><br> This Agreement sets out the terms and conditions that apply to You in all interactions with the Application and use of Our Information. We give You limited, non-exclusive, non-assignable and non-transferable licence to use Our API Services (via the Application) and to access and manage Our Information for the approved purpose(s) (Purpose) described in the Schedule(s).</li> <li><strong>Accuracy of Information</strong><br> We are relying on the accuracy of the information You provide to Us about You and about Your Authorised Users both prior to entering this Agreement and during the term of this Agreement. You confirm that that information is and will remain accurate and that You will provide to Us any documents You have confirmed You hold as part of the Agreement onboarding process, or in provisioning access to Authorised Users, within 24 hours of request by us.</li> <li><strong>Use of Application</strong><br> You must only use or provide access to the Application and Our Information for the Purpose and to the Authorised Users (and Roles) in accordance with the terms of this Agreement and any additional terms and conditions that may be specified in the Schedule. You will comply with any API policies, API standards, API specifications, operational requirements and business processes we publish on our website governing use of the API Services.</li> <li><strong>Term</strong><br> This Agreement is for a term of one year from the date above, unless ended earlier in any of the situations described in clause 23. Renewal of this Agreement will depend upon You confirming ongoing compliance with the terms of this Agreement. If the Agreement is not renewed Your ability to access Our Information via the Application will cease.</li> <li><strong>Service availability</strong><br> Although We do not guarantee service availability, We will strive to ensure that the API Services are available. If We need to temporarily suspend or limit the API Services for operational reasons, We will do Our best to advise the Application vendor beforehand so they can help You manage such availability limits.</li> <li><strong>Our Information</strong><br> We are kaitiaki and responsible for stewardship of all of Our Information that You have access to under this Agreement, and You do not obtain any ownership of Our Information under this Agreement. You are authorised to use Our Information only for the Purpose, and may only grant access to Your Authorised Users on the conditions set out in this Agreement.</li> <li><strong>Accuracy</strong><br> If You are contributing to Our Information, You must take reasonable steps to ensure that Your contributions, and those of Your Authorised Users, are accurate and that that You have authorisation from the individual concerned before forwarding any identifiable information about them. You will let Us know promptly if You identify any inaccuracies in Our Information.</li> <li><strong>Confidentiality</strong><br> Our Information is confidential, and You must keep it that way. You must not disclose Our Information to any third party, other than Your Authorised Users or the person the information is about, unless disclosure is required by law or any government agency, minister of the Crown or parliamentary officer or the information is already, or becomes, public knowledge other than because of Your breach of this clause. You understand that Our Information will include personal information as defined in the Privacy Act 2020 or health information covered by the Health Information Privacy Code 2020.</li> <li><strong>Legislative Obligations</strong><br> You must be familiar with and comply with all Your statutory obligations, including the Health Act 1956, Privacy Act 2020 and the Health Information Privacy Code 2020.</li> <li><strong>Privacy Breach</strong><br> If a privacy breach (or near miss) occurs, You must comply with the Privacy Breach policy available on Our website at the time of the breach and promptly notify Us of the privacy breach (or near miss) at hnzPrivacy@TeWhatuOra.govt.nz.</li> <li><strong>Credentials</strong><br> Each Authorised User must be given unique login credentials to enable them to be identified when accessing the Application and for the Application audit log. You are responsible for ensuring Your Authorised Users keep their Application login credential details safe and secure.<br> You are responsible for confirming the identification of each Authorised User, both in terms of who they are, and also the qualification they hold and its currency (for example with a current Annual Practicing Certificate) prior to granting login credentials to an Authorised User and permitting access to the Application and Our Information. You must ensure that You record accurate details for each Authorised User within the Application credential process to accurately establish the Authorised User’s name, HPI CPN and HPI FAC ID so that will form part of the audit record submitted via the Application with each request.<br> You must ensure that Your Authorised Users only use their own credentials to access the Application and do not set up a shared login or use the login of another person. You ensure any access credentials are swiftly removed if the Authorised User changes role or leaves Your Organisation.</li> <li><strong>Currency of Your Application implementation(s)</strong><br> You must ensure that the Application version You are using remains up to date. To retain access to Our Information You agree that You will ensure You update Your implementation of the Application within 3 months and, in any case, be able to demonstrate, on request by us, that You are using no less than the previous version (i.e. n-1) of any of the Applications.</li> <li><strong>Monitoring</strong><br> From time to time, We may ask You for assurances and records to show that You are complying with this Agreement, which You must provide to Us promptly.</li> <li><strong>Standards</strong><br> You must meet Our certification requirements to gain initial access to the API services and Our Information, in accordance with the Certification Policy We will publish on Our website. You must periodically undergo recertification, which will occur at least annually, or: <ol type='a'> <li>At a frequency stated in the Schedule.</li> <li>On request from Us at any time.</li> </ol> </li> <li><strong>Intellectual property</strong><br> We own all intellectual property rights, or are kaitiaki for Our Information and Our API Services. You must not: <ol type='a'> <li>Use the Application or Our Information in any way not expressly authorised in this Agreement without Our written permission.</li> <li>Copy, reverse-engineer, modify or make derivative work of the API Services.</li> </ol> </li> <li><strong>No sub-licensing or on-selling</strong><br> You must not share, sell, or sub-license access to Our Information or sell Your rights under this Agreement.</li> <li><strong>Your contractors</strong><br> You must ensure that Your Authorised Users who may access Our Information sign an agreement which binds them to the same obligations You are bound to under this Agreement (and this may include electronic acceptance of specific Terms of Use incorporated into the Application for that purpose).</li> <li><strong>Audit logs</strong><br> We will capture and keep audit logs of Your access, and that of Your Authorised Users, to Our Information and retain those audit logs for the period required by the Public Records Act 2005. We may in future routinely display to health consumers who has accessed their information and that may include these audit records (and identifying Authorised User details).</li> <li><strong>Artificial Intelligence</strong><br> You must not use Our Information in, or to train, any artificial intelligence model or tool without Our written consent.</li> <li><strong>Suspension</strong><br> We can suspend Your access to and Your use of Our Information if You do not comply with this Agreement or if You are acting unlawfully or in a way that we consider could undermine trust in the health system.</li> <li><strong>Termination</strong><br> You can end this Agreement on written notice at any time before the term is completed. We can end this Agreement: <ol type='a'> <li>On 90 days’ notice for any reason,</li> <li>Immediately for a serious breach of any of Your obligations relating to privacy, confidentiality, or security, or</li> <li>If You fail to remedy any other breach of this Agreement within 5 days of Our notice of breach to You.</li> </ol> </li> <li><strong>Consequences of termination</strong><br> Upon termination: <ol type='a'> <li>You must immediately stop using any Application that connects to Our API Services and Our Information.</li> <li>Any license(s) We have granted under this Agreement will terminate immediately and Your access credentials for the Application (and those of Your Authorised Users) will be revoked and/or terminated.</li> <li>You must permanently delete all Our Information (including cached Information) stored pursuant to Your use of the Application other than data which has been used in the provision of care or treatment of patients, and that has been incorporated directly into a healthcare record for that individual.</li> </ol> </li> <li><strong>Access control</strong><br> Your Organisation must control who is permitted to access the Application and Our Information within Your Organisation (Authorised Users). You must: <ol type='a'> <li>Meet the login and credential requirements in <strong>clause 13</strong>.</li> <li>Maintain a list of individuals within Your Organisation authorised to access the Application (the Authorised Users), and ensure that any role changes or departures from Your Organisation result in immediate and appropriate changes in access control for that Authorisation User, including removal of access where appropriate.</li> <li>Ensure that only Authorised Users access Our Information via the Application, and only for the Purpose.</li> <li>Ensure that Your Authorised Users understand and agree to observe all Your obligations for protecting Our Information.</li> <li>Have measures in place to prevent access by people who are not Authorised Users.</li> <li>Have a process for recording who is accessing the Application and Our Information, and what they are doing with Our Information.</li> <li>Regularly review Your records to identify misuse or unauthorised access.</li> <li>Produce and retain audit logs of access to Our Information within Your own systems for at least the duration of this Agreement and provide them to Us on request.</li> </ol> </li> <li><strong>General Terms</strong><br> <ol type='a'> <li><em>Updates.</em> We may update the terms of this Agreement from time-to-time by posting the changes on Our website. We will advise You of changes by email. You will comply with such updated requirements.</li> <li><em>Warranties excluded.</em> The API Services and Our Information are provided on an <em>“As Is”</em> and <em>“As Available”</em> basis without any warranties, whether expressly mentioned or implied. Further while We will endeavour to provide You with accurate and up to date information via the API Services, We give no warranty of any kind that the information is accurate and up to date.</li> <li><em>Liability.</em> We exclude all liability to You on Our part and on the part of Our officers, employees and agents for any loss, damage, cost or expense, loss of profits or savings suffered or incurred by You or Your Authorised Users in connection with use of, reliance on, access to, or inability to access, the API Services or Our Information provided via them, whether in contract, tort (including negligence), statute or otherwise. If We are liable to You, Your Authorised Users or any third party under or in connection with this Agreement, Our maximum aggregate liability, whether in contract, tort (including negligence), statute or otherwise is limited to $100.</li> <li><em>Indemnity.</em> You indemnify Us against all liability, losses, damages, costs and expenses which are awarded against, incurred or suffered by us, in relation to non-performance or breach of any Your obligations under this Agreement.</li> <li><em>IP Indemnity.</em> You warrant that Your use of the Application and Our Information will not violate any third-party rights (including intellectual property rights) or any laws, rules, regulations or orders.</li> <li><em>No endorsement claims.</em> You must not, expressly or by implication, claim that Health NZ endorses any of Your products or services by virtue of the fact that You have been given access to any of Our API Services or Our Information.</li> <li><em>No assignment.</em> You may not transfer Your rights or obligations in this Agreement to any third party without Our written consent.</li> <li><em>Survival.</em> The provisions of this Agreement that are by nature intended to survive termination or expiry of this Agreement will remain in full force. For clarity this includes clauses 7, 8, 9, 10, 12, 14, 15, 17, 19 and 26 b), c), d), e), and i).</li> <li><em>Governing law.</em> This Agreement is governed by the laws of New Zealand and the courts in New Zealand will have exclusive jurisdiction to settle any claim or dispute in connection with this Agreement.</li> </ol> </li> <li><strong>Definitions</strong><br> <ol type='a'> <li><strong>API</strong> Application Programming Interface</li> <li><strong>Application</strong> means the Approved Applications that We have approved to connect to our API Services and which are listed in the Schedule.</li> <li><strong>Authorised Users</strong> are those employees or contractors for Your organisation with a role as identified in the Schedule who are authorised to access the Application and issued with login credentials in accordance with this Agreement.</li> <li><strong>Organisation</strong> (and Your Organisation) means the provider of Services which is party to this Agreement, and has an HPI ORG ID (and includes the Facilities at which it provides services which have linked HPI FAC ID).</li> <li><strong>Our Information</strong> means the information made available via Our API Services which will be available to You via the Application.</li> <li><strong>Services</strong> includes personal health services, public health services, disability support services or services provided to a person who has requested assisted dying under the End of Life Choice Act 2019 (as per the Pae Ora (Healthy Futures) Act 2024).</li> </ol> </li></ol></div>"

* item[=].item[=].item[+].linkId = "schedule"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].item[=].text.extension.valueString = "<p><strong>Specific usage terms and conditions</strong></p><p>While We endeavour to make sure Our Information is high quality and accurate, You acknowledge that at times it may be imperfect, or incomplete and that utilising Our Information does not supersede appropriate clinical judgement, and quality and safety practices.</p><p>If you operate with both paper and electronic records at your organisation you must ensure that you have procedures requiring the electronic record to be the master record, and record how updates are to be managed, and require your Authorised Users to follow those procedures.</p><p>You must require Your Authorised Users to access Our Information using secure devices or computer systems approved by You (they must have strong password protection or encryption to prevent unauthorised access and be kept up to date with all security software releases).</p><p><strong>Approved Application(s)</strong></p><ul><li>Authorised Practice Management System used to access Our Information, including but not limited to the following information (as those sources become available to the Approved Application):<ul><li>National Health Index, Health Provider Index, Entitlements or National Enrolment Register Information</li><li>National Cervical Screening Programme Register Information (ONLY where Your Organisation has a role in delivery of cervical screening services under Section 112J(2)(a) or (b) of the Health Act 1956)</li><li>National e-prescribing (NZEPS) or the Medicines Data Repository</li><li>Medical Warning System</li><li>Aotearoa Immunisation Register</li></ul></li></ul><p><strong>Approved Purpose(s)</strong></p><ul><li>To enable Authorised Users to access Our Information via Approved Applications. This access must be to support direct provision of Services to an identified health consumer for whom You are arranging and delivering Services; and</li><li>To enable Authorised Users to supply identified health consumer information to Us to be included in Our Information via Approved Applications where You are arranging and delivering Services for that health consumer.</li></ul><p><strong>Authorised Users (and roles)</strong></p><p>Health practitioners as defined in the Health Practitioners Competence Assurance Act 2003 (or any replacement legislation) provided that for access to National Cervical Screening Programme Register Information (NCSP Information) You must only permit access for health practitioners engaged to provide cervical screening services to a health consumer, and in the case of a Nurse Practitioner, Registered Nurse or Enrolled Nurse they must have completed the relevant NCSP Learning Pathway prior to being permitted to access this information.</p>"

* item[=].item[=].item[+].linkId = "note"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].text = "Below are the details your system has provided us. Please confirm they are correct before proceeding. If they are incorrect please do not proceed but contact your practice administrator."
* item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].item[=].text.extension.valueString = "<p><strong>Below are the details your system has provided us. Please confirm they are correct before proceeding. If they are incorrect please do not proceed and contact your practice administrator.</strong></p>"

* item[=].item[=].item[+].linkId = "facOrgId"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].text = "HPI Facility or Organisation Id"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].item[=].item[=].extension.valueString = "subject.identifier.value"

* item[=].item[=].item[+].linkId = "facOrgName"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].text = "HPI Facility or Organisation name"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].item[=].item[=].extension.valueString = "subject.display"

* item[=].item[=].item[+].linkId = "authorisedName"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Authorised Signatory Name"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "authorisedRole"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Authorised Signatory Role"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "acceptance"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].text = "I accept the Health New Zealand Information Access Terms of Use"
* item[=].item[=].item[=].required = true
