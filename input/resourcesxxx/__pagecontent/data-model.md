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

Key elements:
- `status`
- `type` (e.g., "breast-screening")
- `managingOrganization`
- `patient`

---

## CarePlan

Represents the **screening activities planned** for a participant.

Used for:
- Rounds
- Modality
- Screening status tracking  
- Linking to Episodes and Appointments

Includes:
- CPIR-specific extensions
- `activity` entries (optional)

---

## Appointment

Represents the scheduled screening mammogram.

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
- Screening providers
- Facilities
- Mobile units  

Used inside:
- EpisodeOfCare
- Appointment
