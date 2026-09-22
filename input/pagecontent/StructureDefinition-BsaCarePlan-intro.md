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




### Care Plan Status Mapping

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Te Puna Care Plan Status</th>
<th>FHIR Status</th>
<th>Description</th>
</tr>
 
<tr><td>PRE_ENROLLED</td>
<td>draft</td>
<td>Participant has not yet fully enrolled in BSA.</td>
</tr>
    
<tr><td>ENROLLED</td>
<td>active</td>
<td>Participant is actively enrolled in the programme.</td>
</tr>

<tr><td>NOT_ENROLLED</td>
<td>completed</td>
<td>Participant is no longer enrolled in BSA.</td>
</tr>
</table>
 

Use Cases

- Search screening Care Plans by NHI   

- Search screening Care Plans by NHI and Status  

- Search screening Care Plans by Date Range  

- Search screening Care Plans by Status  