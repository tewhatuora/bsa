Instance: CAREPLAN-1
InstanceOf: CarePlan
Usage: #example
* id = "CP1"
* meta.source = "#XER6yVmYcwvvarZA"
* extension[0].id = "ProgrammeStatus"
* extension[=].url = "https://bsa-uat.pinga.health/ig/site/StructureDefinition-programme-status.html"
* extension[=].valueCodeableConcept = $CodeSystem-programme-status.html#NOT_ENROLLED "NOT_ENROLLED"
* extension[=].valueCodeableConcept.text = "NOT_ENROLLED"
* extension[+].id = "PathwayState"
* extension[=].url = "https://bsa-uat.pinga.health/ig/site/StructureDefinition-pathway-state.html"
* extension[=].valueCodeableConcept = $CodeSystem-pathway-state.html#Exited "Exited"
* extension[=].valueCodeableConcept.text = "Exited"
* extension[+].id = "PathwaySubState"
* extension[=].url = "https://bsa-uat.pinga.health/ig/site/StructureDefinition-pathway-substate.html"
* extension[=].valueCodeableConcept = $CodeSystem-pathway-substate.html#Deceased "Deceased"
* extension[=].valueCodeableConcept.text = "Deceased"
* extension[+].id = "PathwayStatusLastModified"
* extension[=].url = "https://bsa-uat.pinga.health/ig/site/StructureDefinition-pathway-state-date-last-modified.html"
* extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* extension[+].id = "DateLastScreened"
* extension[=].url = "http://hospital.health.org/fhir/StructureDefinition/date-last-screened"
* extension[=].valueDateTime = "2015-08-10T03:09:18+00:00"
* status = #on-hold
* intent = #plan
* subject = Reference(PAT-XXXXXX)
* period.start = "2005-05-16T00:00:00+00:00"
* period.end = "2017-08-13T12:00:00+00:00"
* author = Reference(ORG-XXX) "Lead Provider Example"