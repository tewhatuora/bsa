Extension: PathwayStateDateLastModifiedExtension
Id: pathway-state-date-last-modified
Title: "Pathway State Date Last Modified Extension"
Description: "The date when the pathway state was last modified."
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "CarePlan"
* . 0..1
* . ^short = "Date pathway state last modified"
* . ^definition = "The date when the pathway state was last modified."
* value[x] 1..1
* value[x] only dateTime