Instance: BSACapabilityStatement
InstanceOf: HnzToolingCapabilityStatement
Usage: #definition



* status =  #draft
* date = "2023-05-24"
* kind = #instance
* fhirVersion = #4.0.1
* format = #json
* patchFormat = #json
* version = "1.1.0"

* publisher = "New Zealand Ministry of Health"
* contact.name = "Pat Ryan"
* contact.telecom.system = #email
* contact.telecom.value = "pat.ryan@health.govt.nz"
* description = "BSA FHIR Capabilities"

* name = "BSACapabilityStatement"
* title = "BSA FHIR API Capability Statement"


* implementation.description = "Health NZ | Te Whatu Ora NZ Breats Screening Aotearoa API"
* implementation.url = "https://fhir-ig-uat.digital.health.nz/bsa"

* extension[HnzApiSpecBuilderExtension].extension[licenseURL].valueUri = "https://www.tewhatuora.govt.nz/assets/Our-health-system/Digital-health/Digital-Service-Hub/API-Access-and-Use-Agreement.docx"
* extension[HnzApiSpecBuilderExtension].extension[licenseName].valueString = "Health New Zealand Digital Services Hub API Access and Use Agreement"
* extension[HnzApiSpecBuilderExtension].extension[externalDocs].valueUri = "https://fhir-ig-uat.digital.health.nz/bsa"

* rest.mode = #server

* rest.resource.type = #DiagnosticReport
* rest.resource.documentation = "Describes a participant's BSA screening outcomes and radiologist assessment reports"
* rest.resource[=].profile =  $Profile-BsaDiagnosticReport
								
* rest.resource[=].interaction[0].code = #read
//comma delimited fields in documentation string extracted by makeCapabilityStatement.js:   <verb,url,doc,scope>
* rest.resource[=].interaction[=].documentation = "GET,[base]/DiagnosticReport/[id],Used to retrieve a participant's BSA screening outcomes and radiologist assessment reports, system/DiagnosticReport.r"
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = "GET,[base]/Coverage, Search for a patient's  participant's BSA screening outcomes and radiologist assessment reports,system/DiagnosticReport.s"

* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].type = #reference
* rest.resource[=].searchParam[0].documentation = "NHI id of patient who is the subject of the report"
 
* rest.resource[=].searchParam[1].name = "status"
* rest.resource[=].searchParam[1].type = #token
* rest.resource[=].searchParam[1].documentation = "report status"
 
* rest.resource[=].searchParam[2].name = "date"
* rest.resource[=].searchParam[2].type = #token
* rest.resource[=].searchParam[2].documentation = "The clinically relevant time of the report"

* rest.resource[=].searchParam[3].name = "category"
* rest.resource[=].searchParam[3].type = #token
* rest.resource[=].searchParam[3].documentation = "Which diagnostic discipline/department created the report"

* rest.resource[+].type = #CarePlan
* rest.resource.documentation = "Describes a participant's BSA screening enrolment and pathway status"
* rest.resource[=].profile = $Profile-BsaCarePlan
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[=].documentation = "GET,[base]/DiagnosticReport/[id],Used to retrieve a participant's BSA screening enrolment and pathway status, system/CarePlan.r"
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = "GET,[base]/Coverage, Search for a participant's BSA screening enrolment and pathway status,system/CarePlan.s"

* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].type = #reference
* rest.resource[=].searchParam[0].documentation = "NHI id of patient who is the subject of the CarePlan"
 

* rest.resource[=].searchParam[1].name = "_lastUpdated"
* rest.resource[=].searchParam[1].type = #token
* rest.resource[=].searchParam[1].documentation = "The date the care plan was last updated"