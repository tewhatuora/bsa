### DiagnosticReport Profile

**[DiagnosticReport - Breast Screening](StructureDefinition-DiagnosticReport.html)**

This profile defines constraints on the DiagnosticReport resource for representing a participant's BSA screening outcomes and radiologist assessment reports



### Business Rules 
#### Searching Care Plan 

The participant's NHI is usually used to get their Care Plan details, although there are options to include a status parameter to narrow down the results, e.g. draft, active, ended 

There is an option to return all plans between a date range or by status. Where a status is used then multiple different status can be entered but must be comma separated. These types of calls will return a large result set.


#### Searching Diagnostic Report 

Diagnostic reports are usually searched by the NHI. Only one NHI is allowed per search. Searches by NHI and Status and by Date Range are allowed. 

Searching on just the Status is allowed, with options to search by Final, or Preliminary being supported. This is likely to return a large number of reports. 

#### Diagnostic Report Status Mapping

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Te Puna Status</th>
<th>FHIR Status</th>
<th>Description</th>
</tr>

<tr><td>DRAFT_NOT_STARTED</td>
<td>registered</td>
<td>The existence of the report is registered, but there is nothing yet available.</td>
</tr>

<tr><td>DRAFT_IN_PROGRESS</td>
<td>partial</td>
<td>This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or unverified.</td>
</tr>
    
<tr><td>DOUBLE_READ_IN_PROGRESS</td>
<td>partial</td>
<td>This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or unverified.</td>
</tr>
    
<tr><td>PENDING_DOUBLE_READ</td>
<td>partial</td>
<td>This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or unverified.</td>
</tr>
    
<tr><td>COMPLETED</td>
<td>partial</td>
<td>This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or unverified.</td>
</tr>
    
<tr><td>COMPLETED_REPORT_SENT</td>
<td>final</td>
<td>The report is complete and verified by an authorized person.</td>
</tr>
    
<tr><td>ADDENDUM_IN_PROGRESS</td>
<td>amended</td>
<td>Subsequent to being final, the report has been modified. This includes any change in the results, diagnosis, narrative text, or other content of a report that has been issued.</td>
</tr>
</table>

Use Cases

- Search Radiologist report by NHI

- Search Radiologist report by NHI and Date Range 

- Search Radiologist report by NHI and Status



 

 


### Use Cases

Screening Use Case Summary

- Care Plan - the participant's overall participation in the BreastScreen Aotearoa programme.
 
- Dagnostic Report - a participant's Radiologist report 
