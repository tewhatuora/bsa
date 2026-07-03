
Profile:        BSACarePlan

Parent:         CarePlan         

Id:             BsaCarePlan
Title:          "BSA Care Plan"
Description:    "Describes a participant's BSA screening enrolment and pathway status"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/BsaCarePlan"


//excluded
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* replaces 0..0
* partOf 0..0
* contributor 0..0
* careTeam 0..0
* addresses 0..0
* goal 0..0
* supportingInfo 0..0
* activity 0..0

//restricted
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

//extensions
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




