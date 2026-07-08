Instance: CAREPLAN-1
InstanceOf: CarePlan
Description: "Example BSA Care Plan resource"
Usage: #example
* id = "CP1"


* extension[0].url = "https://breastscreening.health.nz/ig/StructureDefinition/programme-status"
* extension[=].valueCodeableConcept.coding.system = $CodeSystem-programme-status
* extension[=].valueCodeableConcept.coding.code = #not-enrolled 

* extension[+].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-state"
* extension[=].valueCodeableConcept.coding.system = $CodeSystem-pathway-state
* extension[=].valueCodeableConcept.coding.code = #exited

* extension[+].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-substate"
* extension[=].valueCodeableConcept.coding.system = $CodeSystem-pathway-substate
* extension[=].valueCodeableConcept.coding.code =  #deceased 

* extension[+].url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-state-date-last-modified"
* extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* status = #on-hold
* intent = #plan
* subject.type = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXE24NV"
* subject.display = "Participant NHI Id"
* period.start = "2005-05-16T00:00:00+00:00" 
* period.end = "2017-08-13T12:00:00+00:00"
* author.type = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* author.identifier.value = "GZZ991-D"
* author.display = "Lead Provider HPI Org ID"