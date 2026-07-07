Instance: CAREPLAN-BUNDLE-11
InstanceOf: Bundle
Description: "Example BSA Care Plan search result"
Usage: #example
* id = "CPB1"
* type = #searchset
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/BsaCarePlan"
* entry[0].resource.resourceType = "CarePlan"
* entry[=].resource.extension[0].id = "ProgrammeStatus"
* entry[=].resource.extension[=].url =  "https://breastscreening.health.nz/ig/CodeSystem/programme-status"
* entry[=].resource.extension[=].valueCodeableConcept = #not-enrolled
* entry[=].resource.extension[+].id = "PathwayState"
* entry[=].resource.extension[=].url = "https://breastscreening.health.nz/ig/CodeSystem/pathway-state"
* entry[=].resource.extension[=].valueCodeableConcept = #Exited 
* entry[=].resource.extension[+].id = "PathwaySubState"
* entry[=].resource.extension[=].url = "https://breastscreening.health.nz/ig/ValueSet/pathway-substate"
* entry[=].resource.extension[=].valueCodeableConcept = #Deceased "Deceased"
* entry[=].resource.extension[=].valueCodeableConcept.text = "Deceased"
* entry[=].resource.extension[+].id = "PathwayStatusLastModified"
* entry[=].resource.extension[=].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-state-date-last-modified"
* entry[=].resource.extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* entry[=].resource.status = #on-hold
* entry[=].resource.intent = #plan
* entry[=].resource.subject = Reference(Patient/ZXE24NV) "Participant NHI ID"
* entry[=].resource.period.start = "2005-05-16T00:00:00+00:00"
* entry[=].resource.period.end = "2017-08-13T12:00:00+00:00"
* entry[=].resource.author = Reference(Organization/GZZ956-B) "Lead Provider HPI Org ID"

* entry[+].resource.resourceType = "CarePlan"
* entry[=].resource.extension[0].id = "ProgrammeStatus"
* entry[=].resource.extension[=].url = "https://breastscreening.health.nz/ig/CodeSystem/programme-status"
* entry[=].resource.extension[=].valueCodeableConcept = #NOT_ENROLLED "NOT_ENROLLED"
* entry[=].resource.extension[=].valueCodeableConcept.text = "NOT_ENROLLED"
* entry[=].resource.extension[+].id = "PathwayState"
* entry[=].resource.extension[=].url = "https://breastscreening.health.nz/ig/ValueSet/pathway-substate"
* entry[=].resource.extension[=].valueCodeableConcept = #Exited "Exited"
* entry[=].resource.extension[=].valueCodeableConcept.text = "Exited"
* entry[=].resource.extension[+].id = "PathwaySubState"
* entry[=].resource.extension[=].url = "https://breastscreening.health.nz/ig/ValueSet/pathway-substate"
* entry[=].resource.extension[=].valueCodeableConcept = $CodeSystem-pathway-substate.html#Deceased "Deceased"
* entry[=].resource.extension[=].valueCodeableConcept.text = "Deceased"
* entry[=].resource.extension[+].id = "PathwayStatusLastModified"
* entry[=].resource.extension[=].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-state-date-last-modified"
* entry[=].resource.extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* entry[=].resource.status = #active
* entry[=].resource.intent = #plan
* entry[=].resource.subject = Reference(Patient/ZUA48EH) "Participant NHI ID"
* entry[=].resource.period.start = "2015-05-16T00:00:00+00:00"

* entry[=].resource.author = Reference(Organization/GZZ956-B) "Lead Provider HPI Org ID"