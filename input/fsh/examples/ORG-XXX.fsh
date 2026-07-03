Instance: ORG-XXX
InstanceOf: Organization
Usage: #example
* meta.source = "#jLbtiOwSKTk6J4gm"
* identifier[0].use = #official
* identifier[=].type = $v2-0203#XX "Organization identifier"
* identifier[=].system = "http://hospital.health.org/organization-id"
* identifier[=].value = "45"
* identifier[+].use = #usual
* identifier[=].system = "http://hospital.health.org/organization-business-id"
* identifier[=].value = "45"
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Organization Name"
* alias = "Organization Alias"
* telecom.system = #email
* telecom.value = "bsa.testing@tewhatuora.govt.nz"
* telecom.use = #work