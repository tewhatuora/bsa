Extension: ProgrammeStatusExtension
Id: programme-status
Title: "Programme Status Extension"
Description: "The enrollment status of a participant in the breast screening programme."
* ^url = "https://breastscreening.health.nz/ig/StructureDefinition/programme-status"
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "CarePlan"
* . 0..1
* . ^short = "Programme enrollment status"
* . ^definition = "The enrollment status of a participant in the breast screening programme."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ProgrammeStatusValueSet (required)