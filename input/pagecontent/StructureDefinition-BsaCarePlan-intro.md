### CarePlan Profile

**[CarePlan - Breast Screening](StructureDefinition-BsaCarePlan.html)**

This profile defines constraints on the CarePlan resource for representing a participant's enrollment and progression through the breast screening programme. It tracks the participant's pathway state, programme status, and key dates throughout their screening journey.

**Key Features:**
- Required subject (Patient reference)
- Fixed intent of "plan"
- Enrollment period tracking
- Managing organization reference
- Support for programme and pathway tracking extensions

**Must Support Elements:**
- `status` - Current status of the care plan
- `intent` - Always set to "plan"
- `subject` - The patient enrolled in screening
- `period` - Enrollment and exit dates
- `author` - Managing organization