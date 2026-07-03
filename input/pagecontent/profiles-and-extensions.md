# Profiles and Extensions

This page provides a list of the FHIR profiles and extensions defined in this Implementation Guide.

## Profiles

The following profiles have been defined for this implementation guide.

### CarePlan Profile

**[CarePlan - Breast Screening](StructureDefinition-CarePlan-BreastScreening.html)**

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

---

## Extensions

The following extensions have been defined for this implementation guide. These extensions are used to capture breast screening-specific data that is not part of the base FHIR specification.

### Programme Status Extension

**[Programme Status](StructureDefinition-programme-status.html)**

Indicates the participant's enrollment status in the breast screening programme.

- **Context of Use:** CarePlan
- **Type:** CodeableConcept
- **Cardinality:** 0..1
- **Binding:** [Programme Status ValueSet](ValueSet-programme-status.html) (required)

This extension captures whether a participant is actively enrolled, suspended, or has exited the programme.

---

### Pathway State Extension

**[Pathway State](StructureDefinition-pathway-state.html)**

Represents the current state of the participant within the screening pathway.

- **Context of Use:** CarePlan
- **Type:** CodeableConcept
- **Cardinality:** 0..1 (Required in CarePlan-BreastScreening profile: 1..1)
- **Binding:** [Pathway State ValueSet](ValueSet-pathway-state.html) (required)

This extension tracks where the participant is in the screening workflow (e.g., invited, booked, screening, reading).

**Possible Values:**
- Available for invitation
- Invited
- Booked
- Deferred
- Screening
- Reading
- Returned to routine screening
- Exited

---

### Pathway Substate Extension

**[Pathway Substate](StructureDefinition-pathway-substate.html)**

Provides additional detail about the participant's current pathway state.

- **Context of Use:** CarePlan
- **Type:** CodeableConcept
- **Cardinality:** 0..1 (Required in CarePlan-BreastScreening profile: 1..1)
- **Binding:** [Pathway Substate ValueSet](ValueSet-pathway-substate.html) (required)

This extension captures more granular status information that provides context to the main pathway state.

---

### Pathway State Date Last Modified Extension

**[Pathway State Date Last Modified](StructureDefinition-pathway-state-date-last-modified.html)**

Records when the pathway state was last updated.

- **Context of Use:** CarePlan
- **Type:** dateTime
- **Cardinality:** 0..1 (Required in CarePlan-BreastScreening profile: 1..1)

This extension enables tracking of when the participant's pathway state changed, supporting audit and reporting requirements.

---

## Terminology

### Code Systems

The following code systems are defined in this implementation guide:

- **[Pathway State CodeSystem](CodeSystem-pathway-state.html)** - Codes representing states in the screening pathway
- **[Pathway Substate CodeSystem](CodeSystem-pathway-substate.html)** - Codes for pathway substates
- **[Programme Status CodeSystem](CodeSystem-programme-status.html)** - Codes for programme enrollment status

### Value Sets

The following value sets are defined in this implementation guide:

- **[Pathway State ValueSet](ValueSet-pathway-state.html)** - Valid pathway state codes
- **[Pathway Substate ValueSet](ValueSet-pathway-substate.html)** - Valid pathway substate codes
- **[Programme Status ValueSet](ValueSet-programme-status.html)** - Valid programme status codes

---

## Usage Notes

### Using Extensions with the CarePlan Profile

When creating a CarePlan resource that conforms to the Breast Screening profile, the extensions should be populated as follows:
```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": [
      "https://bsa-uat.pinga.health/ig/StructureDefinition/CarePlan-BreastScreening"
    ]
  },
  "extension": [
    {
      "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-state",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://bsa-uat.pinga.health/ig/CodeSystem/pathway-state",
            "code": "invited",
            "display": "Invited"
          }
        ]
      }
    },
    {
      "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-state-date-last-modified",
      "valueDateTime": "2025-11-14T10:30:00Z"
    }
  ],
  "status": "active",
  "intent": "plan",
  "subject": {
    "reference": "Patient/example"
  }
}
```

### Extension Cardinality in Profile vs Base Definition

Note that while the base extension definitions allow cardinality of 0..1, the CarePlan-BreastScreening profile constrains certain extensions to be required (1..1):

- **pathwayState** - Required (1..1)
- **pathwaySubstate** - Required (1..1)
- **pathwayStateLastModified** - Required (1..1)
- **programmeStatus** - Optional (0..1)