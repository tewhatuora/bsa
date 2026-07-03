Extension: PathwayStateExtension
Id: pathway-state
Title: "Pathway State Extension"
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "CarePlan"
* . 0..1
* . ^short = "Pathway state"
* . ^definition = "The current state of the participant within the screening pathway."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PathwayStateValueSet (required)