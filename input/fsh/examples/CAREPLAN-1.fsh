Instance: CAREPLAN-1
InstanceOf: CarePlan
Description: "Example BSA Care Plan resource"
Usage: #example
* id = "CP1"

* extension[0].id = "ProgrammeStatus"
* extension[=].url = "https://breastscreening.health.nz/ig/CodeSystem/programme-status"
* extension[=].valueCodeableConcept = #not-enrolled 
* extension[+].id = "PathwayState"
* extension[=].url = "https://breastscreening.health.nz/ig/CodeSystem/pathway-state"
* extension[=].valueCodeableConcept = #exited
* extension[+].id = "PathwaySubState"
* extension[=].url = "https://breastscreening.health.nz/ig/ValueSet/pathway-substate"
* extension[=].valueCodeableConcept =  #deceased 
* extension[+].id = "PathwayStatusLastModified"
* extension[=].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-state-date-last-modified"
* extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* status = #on-hold
* intent = #plan
* subject = Reference(Patient/ZXE24NV) "Participant NHI Id"
* period.start = "2005-05-16T00:00:00+00:00" 
* period.end = "2017-08-13T12:00:00+00:00"
* author = Reference(Organization/GZZ991-D) "Lead Provider HPI Org Id"