
Instance: DIAGNOSTICREPORT-BUNDLE-1
InstanceOf: Bundle
Description: "Example BSA Diagnostic Report search result"
Usage: #example
* id = "DRB1"

* type = #searchset

* meta.profile =  $Profile-BsaDiagnosticReport

* entry[0].resource.resourceType = "DiagnosticReport"
* entry[=].resource.status = #final
* entry[=].resource.subject.type = "https://standards.digital.health.nz/ns/nhi-id"
* entry[=].resource.subject.identifier.value = "ZNK28DJ"
* entry[=].resource.subject.display = "Participant NHI Id"
* entry[=].resource.issued = "2005-05-16T00:00:00+00:00"
* entry[=].resource.code.coding.system = "http://loinc.org"
* entry[=].resource.code.coding.code = #18748-4
* entry[=].resource.category.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* entry[=].resource.category.coding.code = #RAD
* entry[=].resource.presentedForm.contentType = #text/html
* entry[=].resource.presentedForm.data = "SGVsbG8gV29ybGQhISE="


* entry[+].resource.resourceType = "DiagnosticReport"
* entry[=].resource.status = #preliminary
* entry[=].resource.subject.type = "https://standards.digital.health.nz/ns/nhi-id"
* entry[=].resource.subject.identifier.value = "ZUA48EH"
* entry[=].resource.subject.display = "Participant NHI Id"
* entry[=].resource.issued = "2025-05-16T00:00:00+00:00"
* entry[=].resource.code.coding.system = "http://loinc.org"
* entry[=].resource.code.coding.code = #18748-4
* entry[=].resource.category.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* entry[=].resource.category.coding.code = #RAD
* entry[=].resource.presentedForm.contentType = #text/html
* entry[=].resource.presentedForm.data = "SGVsbG8gV29ybGQhISE="
