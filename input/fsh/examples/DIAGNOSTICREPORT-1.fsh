
Instance: DIAGNOSTICREPORT-1
InstanceOf: DiagnosticReport
Description: "Example BSA Diagnostic Report resource"
Usage: #example
* id = "DR1"
* status = #final
* subject = Reference(Patient\ZKP3289)
* issued = "2005-05-16T00:00:00+00:00"
* code.coding.system = "http://loinc.org"
* code.coding.code = #18748-4

* category.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category.coding.code = #RAD
* presentedForm.contentType = #text/html
* presentedForm.data =   "SGVsbG8gV29ybGQhISE="
