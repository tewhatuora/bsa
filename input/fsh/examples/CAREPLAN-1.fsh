Instance: CAREPLAN-1
InstanceOf: CarePlan
Description: "Example BSA Care Plan resource"
Usage: #example
* id = "CP1"


* extension[0].url = "https://breastscreening.health.nz/ig/StructureDefinition/programme-status"
* extension[=].valueCodeableConcept.coding.system =  "https://breastscreening.health.nz/ig/CodeSystem/programme-status"
* extension[=].valueCodeableConcept.coding.code = #not-enrolled 

* extension[+].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-state"
* extension[=].valueCodeableConcept.coding.system =  "https://breastscreening.health.nz/ig/CodeSystem/pathway-state"
* extension[=].valueCodeableConcept.coding.code = #exited

* extension[+].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-substate"
* extension[=].valueCodeableConcept.coding.system = "https://breastscreening.health.nz/ig/ValueSet/pathway-substate"
* extension[=].valueCodeableConcept.coding.code =  #deceased 

* extension[+].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-state-date-last-modified"
* extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* status = #on-hold
* intent = #plan
* subject = Reference(Patient/ZXE24NV) "Participant NHI Id"
* period.start = "2005-05-16T00:00:00+00:00" 
* period.end = "2017-08-13T12:00:00+00:00"
* author = Reference(Organization/GZZ991-D) "Lead Provider HPI Org Id"