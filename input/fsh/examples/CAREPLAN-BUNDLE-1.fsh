Instance: CAREPLAN-BUNDLE-11
InstanceOf: Bundle
Description: "Example BSA Care Plan search result"
Usage: #example
* id = "CPB1"
* type = #searchset
* meta.profile = $Profile-BsaCarePlan
* entry[0].resource.resourceType = "CarePlan"
* entry[=].resource.extension[+].url = $Extension-programme-status
* entry[=].resource.extension[=].valueCodeableConcept.coding.system = $CodeSystem-programme-status 
* entry[=].resource.extension[=].valueCodeableConcept = #not-enrolled
* entry[=].resource.extension[+].url = $Extension-pathway-state
* entry[=].resource.extension[=].valueCodeableConcept.coding.system = $CodeSystem-pathway-state 
* entry[=].resource.extension[=].valueCodeableConcept = #exited 
* entry[=].resource.extension[+].url =  $Extension-pathway-substate 
* entry[=].resource.extension[=].valueCodeableConcept = #deceased "Deceased"
* entry[=].resource.extension[=].valueCodeableConcept.coding.system = $CodeSystem-pathway-substate
* entry[=].resource.extension[=].valueCodeableConcept.text = "Deceased"
* entry[=].resource.extension[+].url =  $Extension-pathway-state-date-last-modified
* entry[=].resource.extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* entry[=].resource.status = #on-hold
* entry[=].resource.intent = #plan
* entry[=].resource.subject.type = "https://standards.digital.health.nz/ns/nhi-id"
* entry[=].resource.subject.identifier.value = "ZXE24NV"
* entry[=].resource.subject.display = "Participant NHI Id"
* entry[=].resource.period.start = "2005-05-16T00:00:00+00:00"
* entry[=].resource.period.end = "2017-08-13T12:00:00+00:00"
* entry[=].resource.author.type = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* entry[=].resource.author.identifier.value = "GZZ956-B"
* entry[=].resource.author.display = "Lead Provider HPI Org ID"

* entry[+].resource.resourceType = "CarePlan"
* entry[=].resource.extension[+].url =  $Extension-programme-status  
* entry[=].resource.extension[=].valueCodeableConcept.coding.system =   $CodeSystem-programme-status 
* entry[=].resource.extension[=].valueCodeableConcept = #enrolled
* entry[=].resource.extension[+].url =  $Extension-pathway-state 
* entry[=].resource.extension[=].valueCodeableConcept.coding.system =  $CodeSystem-pathway-state
* entry[=].resource.extension[=].valueCodeableConcept = #booked 
* entry[=].resource.extension[=].valueCodeableConcept.text = "booked"
* entry[=].resource.extension[+].url = $Extension-pathway-substate
* entry[=].resource.extension[=].valueCodeableConcept.coding.system = $CodeSystem-pathway-substate 
* entry[=].resource.extension[=].valueCodeableConcept = #confirmed "Confirmed"
* entry[=].resource.extension[=].valueCodeableConcept.text = "Confirmed"
* entry[=].resource.extension[+].url = $Extension-pathway-state-date-last-modified 
* entry[=].resource.extension[=].valueDateTime = "2025-11-07T13:16:36+00:00"
* entry[=].resource.status = #active
* entry[=].resource.intent = #plan
* entry[=].resource.subject.type = "https://standards.digital.health.nz/ns/nhi-id"
* entry[=].resource.subject.identifier.value = "ZUA48EH"
* entry[=].resource.subject.display = "Participant NHI Id"
* entry[=].resource.period.start = "2015-05-16T00:00:00+00:00"
* entry[=].resource.author.type = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* entry[=].resource.author.identifier.value = "GZZ956-B"
* entry[=].resource.author.display = "Lead Provider HPI Org ID"