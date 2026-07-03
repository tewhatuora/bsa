CodeSystem: PathwayState
Id: pathway-state
Title: "Pathway State Code System"
Description: "Codes representing states in the screening pathway workflow."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-11-14"
* ^publisher = "Breast Screening New Zealand"
* ^caseSensitive = true
* ^content = #complete
* #available-for-invitation "Available for invitation" "Participant is eligible and ready to be invited for screening"
* #invited "Invited" "Invitation has been sent to the participant"
* #booked "Booked" "Screening appointment has been scheduled"
* #deferred "Deferred" "Screening has been deferred to a later date"
* #screening "Screening" "Participant is currently undergoing screening"
* #reading "Reading" "Screening images are being reviewed"
* #returned-to-routine "Returned to routine screening" "Participant has returned to routine screening cycle"
* #exited "Exited" "Participant has exited the screening pathway"