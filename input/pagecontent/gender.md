### How NSS gender information is mapped into FHIR representation

### Subject gender

Appears primarily in the `.gender` element of the FHIR `Patient` instance (*NzPatient* profile).

'Gender diverse' is a special case with an additional mapping using the *genderOriginalText* extension. 

| gender in<br>*National Screening Solution* | FHIR [AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)<br>coding in `Patient.gender`<br>*CodeableConcept* | [`gender.genderOriginalText`](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient-definitions.html#Patient.gender.extension:genderOriginalText) <br>(extension to NzPatient profile in NZ Base IG)<br>*valueString*|
|:----|:----:|----:|
|*Female*|`#female`|none|
|*Male*|`#male`|none|
|*Unknown*|`#unknown`|none|
|*Gender Diverse*|`#other`|"Gender Diverse"|


### Sex assigned at birth

Maps directly to the FHIR `Patient` instance (*NzPatient* profile) using the special extension from the NZ Base IG.

|Sex Assigned At Birth<br>in *National Screening Solution*|FHIR [AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html) coding<br>in `Patient.sex-at-birth`<br>*CodeableConcept* | 
|:----|----:|
|*Female*|`#female`|
|*Male*|`#male`|
|*Other*|`#other`|
