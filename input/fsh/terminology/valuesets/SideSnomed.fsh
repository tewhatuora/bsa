
ValueSet: BsaSideSnomedSubset
Id: Bsa-Side-Snomed-Subset
Title: "Side"
Description: "SNOMED codes for side of mammography  finding"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url =  $ValueSet-breast-side 
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-08-12T00:00:00+13:00"
* ^publisher = "Te Whatu Ora - Health New Zealand"





//NZ Edition July 2026
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].version = "http://snomed.info/sct/21000210109/version/20260701"

* ^compose.include[0].concept[0].code = #80248007
* ^compose.include[0].concept[0].display = "Left breast structure"
* ^compose.include[0].concept[1].code = #73056007
* ^compose.include[0].concept[1].display = "Right breast structure"