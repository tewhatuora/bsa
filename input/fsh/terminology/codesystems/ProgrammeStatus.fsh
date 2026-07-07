CodeSystem: ProgrammeStatus
Id: programme-status
Title: "Programme Status Code System"
Description: "Codes representing a participant's enrollment status in the breast screening programme."
* ^url = "https://breastscreening.health.nz/ig/CodeSystem/programme-status"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-11-14"
* ^publisher = "Breast Screening New Zealand"
* ^caseSensitive = true
* ^content = #complete
* #pre-enrolled "Pre enrolled" "Participant is in the pre-enrollment phase, eligible for screening but not yet fully enrolled"
* #enrolled "Enrolled" "Participant is actively enrolled in the breast screening programme"
* #not-enrolled "Not enrolled" "Participant is not enrolled in the programme (exited, opted out, or never enrolled)"