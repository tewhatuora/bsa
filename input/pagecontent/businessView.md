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

<img style="width:500px; float:none" src="TePuna.png"/>

Te Puna maintains information associated with each stage of this journey and makes relevant information available to authorised users and systems. 

The Te Puna FHIR API exposes selected information held within Te Puna enabling authorised consumers to retrieve information such as: 

- Participant demographics (Patient) 

- Screening episodes and pathway status (CarePlan) 

- Diagnostic findings and reports (DiagnosticReport) 

- Organisations and service providers (Organization) 

### Business Rules 
#### Searching Care Plan 

The participants NHI is usually used to get their Care Plan details, although there are options to include a status parameter to narrow down the results, e.g. draft, active, ended 

There is an option to return all plans between a date range or by status. Where a status is used then multiple different status can be entered but must be comma separated. These types of calls will return a large result set.

#### Searching Patient
<!-- The [ NHIPatient API](https://nhi-ig.hip.digital.health.nz/matchPatient.html) should be used to search for patient. -->
Once a patient's NHI ID has been established their BSA screening details may be accessed using the BSA APIs with the NHI Id as the patient parameter


#### Searching Appointments 

Participant Appointments are usually searched for by NHI. The search allows for multiple NHI’s to be entered if they are comma separated.  

There are options to narrow the result sets by applying date parameters with the NHI. Searches just with an Appointment Status as the parameter is allowed, e.g. Booked,Pending, Fulfilled, Arrived, etc.  Multiple different statuses can be entered but must be comma separated. The capacity also exists to just search by Date range   

The search has an option to return future Appointments by entering a Status and a From Date. 

 

#### Searching Episodes of Care 

Participant Episodes of Care are usually searched for by NHI. The search allows for multiple NHI’s to be entered if they are comma separated.  

Searches just with Episode of Care Statuses as a parameter are allowed, e.g. Planned, Active, Finished.  Multiple different statuses can be entered but must be comma separated. The capacity also exists to just search by Date range   

Searches can also be by Organisation if you have the Organisation Id   

 

#### Searching Organisation 

<!-- The [ HpiOrganization API](https://hpi-ig.hip.digital.health.nz/StructureDefinition-HpiOrganization.html) should be used to search for organisation and getting organisation details -->
The Organisation resource can only be searched on organisations id's and names that are managed in Te Puna. These do not map to information held by the Health Provider Index

 

#### Searching Diagnostic Report 

Diagnostic reports are usually searched by the NHI. Only one NHI is allowed per search. Searches by NHI and Status and by Date Range are allowed. 

Searching on just the Status is allowed, with options to search by Final, or Preliminary being supported. This is likely to return a large number of reports. 

 

### Use Cases

Screening Use Case Summary 
- Episode Of Care - an individual screening journey or screening round.
- Care Plan - the participants overall participation in the BreastScreen Aotearoa programme.
- Appointment - specific screening or assessment appointments within an episode.
- Dagnostic Report - a participants Radiologist report 

##### Episodes of Care 

An Episode of Care represents a distinct period during which a participant is receiving screening-related care under the programme. It groups together the activities, appointments, assessments, and outcomes associated with a particular screening journey. 

All of these activities can belong to the same Episode of Care. Once that pathway is completed, the episode is completed. A future screening round would typically generate a new episode. 

The Episode Of Care resource:
- Tracks a participant's period of care within the screening programme.
- Has a period start date and period end date.
- Is associated with the managing Lead Provider organisation.

  Episode of Care Status

  <table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
<style>
<tr>
<th>Te Puna Episode Status</th>
<th>FHIR Status</th>
<th>Description</th>
</tr>

<tr><td>NEW</td>
<td>PLANNED</td>
<td>Screening journey has been created but not yet commenced.</td>
</tr>
    
<tr><td>IN_PROGRESS</td>
<td>ACTIVE</td>
<td>Participant is currently progressing through screening and/or assessment activities.</td>
</tr>
    
<tr><td>COMPLETED</td>
<td>FINISHED</td>
<td>Participant has completed the screening episode.</td>
</tr>
</table>

Use Cases

- Search Episode of Care by NHI  

- Search Episode of Care by Date Range  

- Search Episode of Care by Organization  

- Search Episode of Care by Status  

- Search participants with active Episodes of Care  

#### Care Plan

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
 
Care Plan Statuses

 <table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
<style>
<tr>
<th>Te Puna Care Plan Status</th>
<th>FHIR Status</th>
<th>Description</th>
</tr>
 
<tr><td>PRE_ENROLLED</td>
<td>DRAFT</td>
<td>Participant has not yet fully enrolled in BSA.</td>
    
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


##### Appointments

An Appointment represents a scheduled participant interaction within the breast screening pathway. It is the booking of a participant for a screening-related activity, such as: 
- A routine screening mammogram. 
- An assessment clinic appointment following an abnormal screening result.
- Other programme-related clinical encounters. 

Appointments are a key business event that can be searched through the API. Common appointment attributes include: 
- The participant (identified by NHI).
- Appointment date and time. 
- Appointment status (for example Booked, Pending, Arrived, Fulfilled). 
- Associated organisation or service provider. 

Appointment Statuses

 <table>
  <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
<style>
<tr>
<th>Status</th>
<th>Description</th>
</tr>
 
 
<tr><td>Pending</td>
<td>Appointment has been created but is not yet fully confirmed.</td>
</tr>
    
<tr><td>Booked</td>
<td>Appointment is scheduled and confirmed.</td>
</tr>

<tr><td>Arrived</td>
<td>Participant has checked in or attended the appointment.</td>
</tr>

<tr><td>Fulfilled</td>
<td>Appointment has been completed and the planned service was delivered.</td>
    </tr>
</table>


Use Cases
 
- Search Appointments by NHI 
 
- Search Appointments by Status 
 
- Search Appointments by Date Range
 
- Search Appointments by NHI and Date Range
 
- Search upcoming Appointments 
 
- Search upcoming Appointments 
 
- Search participant screening appointment history by NHI  


##### Diagnostic Report

The Diagnostic Report resource provides the clinical findings and outcomes generated during the BreastScreen Aotearoa screening pathway. It represents radiologist reports and related diagnostic information produced from screening and assessment activities. 

It forms part of the participant's screening record and support the communication of screening outcomes, clinical conclusions, and associated reporting information to internal and external clinical systems.  
 
 Common Diagnostic report attributes include: 

 - Status
 - Issued Date
 - Screening Date
 - Report content

Diagnostic Report Statuses

 <table>
  <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
<style>
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



 

 
