Profile: CarePlanBreastScreening
Parent: CarePlan
Id: CarePlan-BreastScreening
Title: "Breast Screening CarePlan Profile"
Description: "CarePlan profile for breast screening programme participants, tracking their pathway through the screening process."
* ^version = "1.0.0"
* ^status = #active
* . ^short = "Breast Screening CarePlan"
* . ^definition = "A CarePlan for tracking a participant's journey through the breast screening programme."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ProgrammeStatusExtension named programmeStatus 1..1 MS and
    PathwayStateExtension named pathwayState 1..1 MS and
    PathwaySubstateExtension named pathwaySubstate 0..1 MS and
    PathwayStateDateLastModifiedExtension named pathwayStateLastModified 1..1 MS
* extension[programmeStatus] ^short = "Programme enrollment status"
* extension[programmeStatus] ^definition = "The enrollment status of a participant in the breast screening programme."
* extension[pathwayState] ^short = "Current pathway state"
* extension[pathwayState] ^definition = "The current state of the participant within the screening pathway."
* extension[pathwaySubstate] ^short = "Current pathway substate"
* extension[pathwaySubstate] ^definition = "The current substate of the participant within the screening pathway."
* extension[pathwayStateLastModified] ^short = "Date pathway state last modified"
* extension[pathwayStateLastModified] ^definition = "The date when the pathway state was last modified."
* status MS
* intent = #plan (exactly)
* intent MS
* subject 1.. MS
* subject only Reference(Patient)
* subject ^short = "Patient enrolled in breast screening"
* period MS
* period ^short = "Enrollment period"
* period ^definition = "Period from enrollment to exit (if applicable)"
* author only Reference(Organization)
* author MS
* author ^short = "Managing organization"