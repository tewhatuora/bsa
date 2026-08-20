
ValueSet: BsaSiteSnomedSubset
Id: Bsa-Site-Snomed-Subset
Title: "Site"
Description: "SNOMED Codes for breast body site"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url =  $ValueSet-breast-site 
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-08-12T00:00:00+13:00"
* ^publisher = "Te Whatu Ora - Health New Zealand"


//NZ Edition July 2026
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].version = "http://snomed.info/sct/21000210109/version/20260701"

* ^compose.include[0].concept[0].code =  $SCT#110494001
* ^compose.include[0].concept[0].display =  "Structure of upper outer quadrant of breast"
* ^compose.include[0].concept[1].code =  $SCT#110495000 
* ^compose.include[0].concept[1].display = "Structure of upper inner quadrant of breast"
* ^compose.include[0].concept[2].code =  $SCT#110504006 
* ^compose.include[0].concept[2].display = "Structure of lower outer quadrant of breast"
* ^compose.include[0].concept[3].code =  $SCT#110505007 
* ^compose.include[0].concept[3].display = "Structure of lower inner quadrant of breast"
* ^compose.include[0].concept[4].code =  $SCT#110493007 
* ^compose.include[0].concept[4].display = "Structure of central portion of breast"
* ^compose.include[0].concept[5].code =  $SCT#34707002 
* ^compose.include[0].concept[5].display = "Axillary structure"
* ^compose.include[0].concept[6].code =  $SCT#773259003 
* ^compose.include[0].concept[6].display = "Structure of axillary tail of breast"

