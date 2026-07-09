### Purpose of Te Puna 
Te Puna is the core technology platform that supports the delivery and operation of the BreastScreen Aotearoa (BSA) national breast screening programme. Its purpose is to provide a single, integrated source of information for managing participants, screening activities, clinical workflows, imaging, assessments, reporting, and programme administration. 

Te Puna enables BreastScreen Aotearoa to: 

- Manage participant enrolment and eligibility. 

- Maintain participant demographic and screening history information. 

- Support the end-to-end screening pathway, from invitation through to screening, assessment, and outcome management. 

- Coordinate activities between screening providers, assessment services, radiology providers, and programme administrators. 

- Record and manage screening episodes and associated clinical information. 

- Store and provide access to screening results, reports, and related diagnostic information. 

- Support programme monitoring, reporting, quality assurance, and population health activities. 

- Enable information sharing with authorised internal and external systems 

### Te Puna's Role in the Screening Journey 
At a high level, Te Puna acts as the system of record for key BreastScreen Aotearoa information, supporting the participant journey: 

<!-- <img style="width:500px; float:none" src="PathwayImage.png"/> -->


Te Puna maintains information associated with each stage of this journey and makes relevant information available to authorised users and systems. 

The Te Puna FHIR API exposes selected information held within Te Puna enabling authorised consumers to retrieve information such as: 

- Screening CarePlan

- Diagnostic findings and reports (DiagnosticReport) 

### Business Rules 
#### Searching Care Plan 

The participants NHI is usually used to get their Care Plan details, although there are options to include a status parameter to narrow down the results, e.g. draft, active, ended 

There is an option to return all plans between a date range or by status. Where a status is used then multiple different status can be entered but must be comma separated. These types of calls will return a large result set.


#### Searching Diagnostic Report 

Diagnostic reports are usually searched by the NHI. Only one NHI is allowed per search. Searches by NHI and Status and by Date Range are allowed. 

Searching on just the Status is allowed, with options to search by Final, or Preliminary being supported. This is likely to return a large number of reports. 

 

### Use Cases

Screening Use Case Summary

- Care Plan - the participants overall participation in the BreastScreen Aotearoa programme.
 
- Dagnostic Report - a participants Radiologist report 

  


##### Care Plan

A Care Plan represents a participant's enrolment and current status in the BreastScreen Aotearoa programme, including their pathway and lead provider information. It is the longitudinal record of programme participation, while Episodes of Care represent individual screening journeys. 

The Care Plan remains active while the participant stays in the programme, whereas each Episode of Care starts and finishes for a particular screening event 

The Care Plan resource:
 - Represents BSA programme enrolment.
 - Facilitates reporting on programme participation and outcomes
 - Includes
    - Enrolment Date
    - Programme Status
    - Pathway State
    - Pathway Sub State
    - Last screening information
    - Lead Provider responsible for the participant
 

Care Plan Status Mapping

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
<td>DRAFT</td>
<td>Participant has not yet fully enrolled in BSA.</td>
</tr>
    
<tr><td>ENROLLED</td>
<td>ACTIVE</td>
<td>Participant is actively enrolled in the programme.</td>
</tr>

<tr><td>NOT_ENROLLED</td>
<td>ENDED</td>
<td>Participant is no longer enrolled in BSA.</td>
</tr>
</table>
 

Use Cases

- Search screening Care Plans by NHI   

- Search screening Care Plans by NHI and Status  

- Search screening Care Plans by Date Range  

- Search screening Care Plans by Status  



##### Diagnostic Report

The Diagnostic Report resource provides the clinical findings and outcomes generated during the BreastScreen Aotearoa screening pathway. It represents radiologist reports and related diagnostic information produced from screening and assessment activities. 

The report forms part of the participant's screening record and supports the communication of screening outcomes, clinical conclusions, and associated reporting information to internal and external clinical systems.  
 
 Diagnostic report attributes include: 

 - Status
 - Issued Date
 - Screening Date
 - Report content

Diagnostic Report Status Mapping

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
<td>Report created but not yet started</td>
</tr>

<tr><td>DRAFT_IN_PROGRESS</td>
<td>partial</td>
<td>Report is being drafted</td>
</tr>
    
<tr><td>DOUBLE_READ_IN_PROGRESS</td>
<td>preliminary</td>
<td>Under double-read review</td>
</tr>
    
<tr><td>PENDING_DOUBLE_READ</td>
<td>preliminary</td>
<td>Awaiting double-read</td>
</tr>
    
<tr><td>COMPLETED</td>
<td>final</td>
<td>Report finalised</td>
</tr>
    
<tr><td>COMPLETED_REPORT_SENT</td>
<td>final</td>
<td>Report finalised and sent</td>
</tr>
    
<tr><td>ADDENDUM_IN_PROGRESS</td>
<td>amended</td>
<td>Report is being amended after finalisation</td>
</tr>
</table>

Use Cases

- Search Radiologist report by NHI

- Search Radiologist report by NHI and Date Range 

- Search Radiologist report by NHI and Status



 

 
