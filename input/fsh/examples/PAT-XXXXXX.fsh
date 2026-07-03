Instance: PAT-XXXXXX
InstanceOf: Patient
Usage: #example
* meta.source = "#Extqzq4AHbQ342tS"
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
* identifier[0].use = #official
* identifier[=].type = $v2-0203#NI "National unique individual identifier"
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "SSS0075"
* identifier[+].use = #secondary
* identifier[=].type = $v2-0203#MR "Medical record number"
* identifier[=].system = "http://hospital.health.org/patient-id"
* identifier[=].value = "XXXXXX"
* active = false
* name.use = #official
* name.text = "TestingName_0075 TestingMiddleName_0075 TestingLastName_0075"
* name.family = "TestingLastName_0075"
* name.given[0] = "TestingName_0075"
* name.given[+] = "TestingMiddleName_0075"
* telecom[0].system = #phone
* telecom[=].value = "0276011510"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "bsa.testing@tewhatuora.govt.nz"
* telecom[=].use = #home
* gender = #female
* deceasedDateTime = "2016-04-03T12:00:00+00:00"
* address.use = #home
* address.type = #physical
* address.line = "Auckland, Mt Roskill, Auckland, 1041"
* address.city = "Auckland"
* address.district = "Mt Roskill"
* address.postalCode = "1041"
* managingOrganization = Reference(ORG-XXX) "Test Lead Provider"