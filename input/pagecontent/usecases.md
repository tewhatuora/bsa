# Use Cases

## Unscreened and underscreened
This use case supports the uptake of the breast cancer screening by providing information that can be used to determine participants that are unscreened and underscreened.  It will be used by systems such as the Consumer Population and Identification Register (CPIR) to manage campaigns for outreach to these participants who are unscreened and underscreened.

## Custom scopes

Unscreened and underscreened are **business concepts** derived from given FHIR resource values, i.e. the programme and pathway state and the date of last screening for a participant’s CarePlan.  Custom scopes are used to restrict access to only relevant resources and fields needed to support this use case.  The FHIR resources relevant to this use case are:
- Patient
- CarePlan

The custom scopes for this use case are:
- system/Patient.unscreened.rs
- system/CarePlan.unscreened.rs