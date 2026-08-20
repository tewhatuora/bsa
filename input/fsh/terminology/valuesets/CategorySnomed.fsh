
ValueSet: BsaCategorySnomedSubset
Id: Bsa-Category-Snomed-Subset
Title: "Category"
Description: "SNOMED codes for category of mammography  finding"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url =  $ValueSet-category 
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-08-12T00:00:00+13:00"
* ^publisher = "Te Whatu Ora - Health New Zealand"


//NZ Edition July 2026
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].version = "http://snomed.info/sct/21000210109/version/20260701"

* ^compose.include[0].concept[0].code = #397141009  
* ^compose.include[0].concept[0].display = "Mammography assessment category 2 - benign finding"
* ^compose.include[0].concept[1].code = #397142002 
* ^compose.include[0].concept[1].display = "Mammography assessment category 3 - probably benign finding"
* ^compose.include[0].concept[2].code = #397143007 
* ^compose.include[0].concept[2].display = "Mammography assessment category 4 - suspicious abnormality"
* ^compose.include[0].concept[3].code = #397144001  
* ^compose.include[0].concept[3].display = "Mammography assessment category 5 - highly suggestive of malignancy"
* ^compose.include[0].concept[4].code = #428169002 
* ^compose.include[0].concept[4].display =  "Mammography assessment category 6 - known biopsy proven malignancy"



