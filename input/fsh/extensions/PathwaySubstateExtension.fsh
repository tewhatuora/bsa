Extension: PathwaySubstateExtension
Id: pathway-substate
Title: "Pathway Substate Extension"
Description: "The current substate of the participant within the screening pathway."
* ^url = "https://breastscreening.health.nz/ig/StructureDefinition/pathway-substate"
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "CarePlan"
* . 0..1
* . ^short = "Pathway substate"
* . ^definition = "The current substate of the participant within the screening pathway."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PathwaySubStateValueSet (required)