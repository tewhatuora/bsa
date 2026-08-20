
ValueSet: BsaNatureSnomedSubset
Id: Bsa-Nature-Snomed-Subset
Title: "Nature"
Description: "SNOMED codes for nature of mammography  finding"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url =  $ValueSet-nature 
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-08-12T00:00:00+13:00"
* ^publisher = "Te Whatu Ora - Health New Zealand"


//NZ Edition July 2026
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].version = "http://snomed.info/sct/21000210109/version/20260701"

* ^compose.include[0].concept[0].code = #300842002 
* ^compose.include[0].concept[0].display = "Structure of breast mass"
* ^compose.include[0].concept[1].code = #45138006 
* ^compose.include[0].concept[1].display = "Calcification of breast"
* ^compose.include[0].concept[2].code = #470123000 
* ^compose.include[0].concept[2].display = "Spiculated breast mass"
* ^compose.include[0].concept[3].code = #246201001 
* ^compose.include[0].concept[3].display = "Architectural distortion of breast"
* ^compose.include[0].concept[4].code = #1297138000 
* ^compose.include[0].concept[4].display = "Mammographic breast density finding"
* ^compose.include[0].concept[5].code = #246199009 
* ^compose.include[0].concept[5].display = "Multiple masses"
* ^compose.include[0].concept[6].code = #74964007 
* ^compose.include[0].concept[6].display = "Other"


