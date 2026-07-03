# Data Model

This IG uses **standard unprofiled FHIR R4 resources**.

Only `CarePlan` has additional extensions.

---

## Patient

- Represents a screening participant  
- Must include:
  - Official name  
  - Date of birth  
  - NHI identifier  
- Optional demographic data is allowed

---

## EpisodeOfCare

Represents a **screening episode** for a given participant.

The duration of the episode is represented with the initial screening appointment booked date/time as a start time, and the final outcome date as an end time. The managing organization is represented as the lead provider owning the participant. 

Key elements:
- `status`
- `type` (e.g., "breast-screening")
- `managingOrganization`
- `patient`

---

## CarePlan

Represents the **programme enrollment** for a participant. There is **only one** CarePlan per participant, with the duration and other details varying as the states are updated.

Includes:
- CPIR-specific extensions

---

## Appointment

Represents the appointments which can be of different type and .

Key fields:
- `status`
- `description`
- `start`
- `end`
- `participant` (Patient + possibly practitioner/facility)
- `reasonReference` → CarePlan

---

## Organization

Represents:
- Lead Providers
- Screening sites
- Organizations  

Used inside:
- EpisodeOfCare
- Appointment
