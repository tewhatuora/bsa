# Use Cases

## 1. Participant Exists in CPIR

**Goal:** Determine whether a woman is known to the CPIR and retrieve existing identifiers.

**Actors:**
- External system (Screening Provider)
- CPIR FHIR Server

**Flow:**
1. External system performs:  
   `GET /Patient?identifier=<NHI>`  
2. CPIR returns:
   - Matching Patient resource (if found)
   - 404 if no match  
3. Provider uses the returned `Patient` ID to link episodes and care plans.

---

## 2. Creating or Updating Screening Episode

**Goal:** Establish a new screening episode for a participant.

**Resources Used:**
- `EpisodeOfCare`
- `CarePlan`

**Flow:**
1. Provider creates `EpisodeOfCare` referencing:
   - Patient  
   - Managing Organization  
2. Provider creates `CarePlan`:
   - `subject` = Patient  
   - `episodeOfCare` = Episode created above  
   - Includes CPIR-required extensions (round, modality, status)

---

## 3. Booking Screening Appointment

**Goal:** Register the participant for a mammography appointment.

**Resources Used:**
- `Appointment`
- Existing `Patient`, `CarePlan`, `EpisodeOfCare`

**Flow:**
1. Provider creates an `Appointment` with:
   - Participant as the `Patient`
   - Linked `EpisodeOfCare`
   - Reason referencing the `CarePlan`
2. Appointment is updated as it progresses:
   - Booked → Arrived → Fulfilled / No-show

---

## 4. Updating Screening Status

**Goal:** Track status changes such as invited, attended, completed.

**Resources Used:**
- `CarePlan` with extensions

**Flow:**
1. Provider performs `PUT /CarePlan/{id}`  
2. Updates extension values:
   - `screeningRound`
   - `status`
   - `trackingPhase`

---

## 5. Organization Lookup

**Goal:** Identify the managing screening provider or facility.

**Flow:**
1. `GET /Organization?type=breast-screening-provider`
2. Returned Organizations serve as references in:
   - EpisodeOfCare.managingOrganization
   - CarePlan.careTeam
   - Appointment.participant.actor
