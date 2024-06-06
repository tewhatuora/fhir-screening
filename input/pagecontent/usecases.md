## Use cases

This page documents the various screening summary request scenarios and the expected FHIR API response for each scenario.

### Requests for screening information where there is screening history in the Register

|**Id**|**Scenario** | ***Participant Information* returned in screening summary?**| ***Screening History* returned in screening summary?** | **Additional search outcome message(s) returned by `DocumentReference.Search`** |
|:-|:--------------------------------------------------------------------------------------|:------|:--------|:----------------|
|H1| A participant is Sex Assigned at Birth female on the programme with Screening History. | Yes | Yes | - |
|H2| Deceased participant with screening history | Yes | Yes | - |
|H3| A participant is Sex Assigned at Birth Female below Eligibility age with screening history | Yes | Yes | - |
|H4| A participant is Sex Assigned at Birth Female above Eligibility age with screening history | Yes | Yes | - |
|H5| A Participant has cervical cancer and doesn't require ongoing screening. | Yes | Yes | - |
|H6| A participant with cancer has specifically been identified as requiring future screening | Yes | Yes | - |
|H7| A participant has had Total hysterectomy | Yes | Yes | - |
|H8| A participant has had sub-total hysterectomy | Yes | Yes | - |

---

### Requests for screening information where there is NO screening history in the Register

|**Id**|**Scenario** | ***Participant Information* returned in screening summary?**| ***Screening History* returned in screening summary?** | **Additional search outcome message(s) returned by `DocumentReference.Search`** |
|:-|:--------------------------------------------------------------------------------------|:------|:--------|:----------------|
|N1| A person is Sex Assigned at Birth female, participating in the programme but with no Screening History. | Yes | No | This NHI has no Screening history to display. |
|N2| Deceased person with No screening history | Yes | No | This NHI has no Screening history to display. |
|N3| Sex Assigned at Birth Female below Eligibility age without screening history | Yes | No | This NHI has no Screening history to display. |
|N4| Person is Sex Assigned at Birth Female above Eligibility age without screening history | Yes | No | This NHI has no Screening history to display. |
|N5| Person is cis gendered male | Yes | No | This NHI has no Screening history to display. |
|N6| Person has withdrawn from the program | Yes | No | This NHI has no Screening history to display. This subject has withdrawn from the National Cervical Screening Programme. |

### Special cases

|**Id**|**Scenario** | ***Participant Information* returned in screening summary?**| ***Screening History* returned in screening summary?** | **Additional search outcome message(s) returned by `DocumentReference.Search`** |
|:-|:--------------------------------------------------------------------------------------|:------|:--------|:----------------|
|x1| Participant has multiple NHI and a dormant NHI is searched for. | Yes | Yes (if available) | The requested NHI is dormant and linked to a live identifier, so the live NHI has been returned. |
|x2| Participant has multiple NHI and a dormant NHI is searched for (no history). | Yes | No | 1. The requested NHI is dormant and linked to a live identifier, so the live NHI has been returned.  2. This NHI has no Screening history to display. |

---