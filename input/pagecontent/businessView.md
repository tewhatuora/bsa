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



 

#### Searching Diagnostic Report 

Diagnostic reports are usually searched by the NHI. Only one NHI is allowed per search. Searches by NHI and Status and by Date Range are allowed. 

Searching on just the Status is allowed, with options to search by Final, or Preliminary being supported. This is likely to return a large number of reports. 

 

### Use Cases

#### Care Plan

Supports population screening campaign and facilitates reporting on programme participation and outcomes by enabling: 

- Search screening Care Plans by NHI   

- Search screening Care Plans by NHI and Status  

- Search screening Care Plans by Date Range  

- Search screening Care Plans by Status  

##### Appointments

- Search Appointments by NHI  

- Search Appointments by Status  

- Search Appointments by Date Range  

- Search Appointments by NHI and Date Range 

- Search upcoming Appointments 
- Search upcoming Appointments  

- Search participant screening appointment history by NHI  



##### Episodes of Care 

- Search Episode of Care by NHI  

- Search Episode of Care by Date Range  

- Search Episode of Care by Organization  

- Search Episode of Care by Status  

- Search participants with active Episodes of Care  

 

##### Diagnostic Report

This resource provides elements related to a Screening Radiologist report for sharing with internal and external clinical systems by enabling

- Search Radiologist report by NHI

- Search Radiologist report by NHI and Date Range 

- Search Radiologist report by NHI and Status



 

 