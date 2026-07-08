# CarePlan Extensions

This Implementation Guide defines a set of extensions to support breast screening programme workflows. These extensions enable tracking of participant enrollment, pathway progression, and screening-specific details that are not captured in the base FHIR CarePlan resource.

---

## Extensions Overview

The following extensions are defined for use with CarePlan resources in the breast screening context:

| Extension | Type | Cardinality | Description |
|-----------|------|-------------|-------------|
| [Programme Status](#programme-status) | CodeableConcept | 0..1 | Enrollment status in the programme |
| [Pathway State](#pathway-state) | CodeableConcept | 0..1 | Current state in the screening pathway |
| [Pathway Substate](#pathway-substate) | CodeableConcept | 0..1 | Detailed substate within the pathway |
| [Pathway State Date Last Modified](#pathway-state-date-last-modified) | dateTime | 0..1 | When the pathway state was last changed |

---

## Extension Definitions

### Programme Status

**URL:** `https://bsa-uat.pinga.health/ig/StructureDefinition/programme-status`  
**Type:** CodeableConcept  
**Cardinality:** 0..1  
**Binding:** [Programme Status ValueSet](ValueSet-programme-status.html) (required)

Indicates the participant's enrollment status in the breast screening programme.

**Example Codes:**
- `PRE_ENROLLED` - Active participant
- `ENROLLED` - Temporarily suspended
- `NOT_ENROLLED` - Permanently exited from programme

**Usage:**
```json
{
  "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/programme-status",
  "valueCodeableConcept": {
    "coding": [{
      "system": "https://bsa-uat.pinga.health/ig/CodeSystem/programme-status",
      "code": "enrolled",
      "display": "Enrolled"
    }]
  }
}
```

---

### Pathway State

**URL:**  [pathway-state](CodeSystem-pathway-state.html)

**Type:** CodeableConcept  
**Cardinality:** 0..1 (1..1 in BsaCarePlan profile)  
**Binding:** [Pathway State ValueSet](ValueSet-pathway-state.html) (required)

Represents the current state of the participant within the screening pathway workflow.

**Possible Values:**
- `available-for-invitation`
- `invited`
- `booked`
- `deferred`
- `screening`
- `reading`
- `returned-to-routine`
- `exited`

**Usage:**
```json
{
  "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-state",
  "valueCodeableConcept": {
    "coding": [{
      "system": "https://bsa-uat.pinga.health/ig/CodeSystem/pathway-state",
      "code": "invited",
      "display": "Invited"
    }]
  }
}
```

---

### Pathway Substate

**URL:**  [pathway-substate](CodeSystem-pathway-substate.html)  
**Type:** CodeableConcept  
**Cardinality:** 0..1 (1..1 in BsaCarePlan profile)  
**Binding:** [Pathway Substate ValueSet](ValueSet-pathway-substate.html) (required)

Provides additional granular detail about the participant's current pathway state.

**Usage:**
```json
{
  "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-substate",
  "valueCodeableConcept": {
    "coding": [{
      "system": "https://bsa-uat.pinga.health/ig/CodeSystem/pathway-substate",
      "code": "first-invitation",
      "display": "First Invitation"
    }]
  }
}
```

---

### Pathway State Date Last Modified

**URL:** `https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-state-date-last-modified`  
**Type:** dateTime  
**Cardinality:** 0..1 (1..1 in BsaCarePlan profile)

Records the date and time when any of the status/state indicators were last updated. This supports audit requirements and enables tracking of participant progression through the screening workflow.

**Usage:**
```json
{
  "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-state-date-last-modified",
  "valueDateTime": "2025-11-14T10:30:00+13:00"
}
```

---

## Complete Example

### Breast Screening CarePlan with Extensions

The following example shows a CarePlan for a breast screening participant who has been invited for their screening appointment:
```json
{
  "resourceType": "CarePlan",
  "id": "example-careplan",
  "meta": {
    "profile": [
      "https://bsa-uat.pinga.health/ig/StructureDefinition/BsaCarePlan"
    ],
    "lastUpdated": "2025-11-14T10:30:00+13:00"
  },
  "extension": [
    {
      "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/programme-status",
      "valueCodeableConcept": {
        "coding": [{
          "system": "https://bsa-uat.pinga.health/ig/CodeSystem/programme-status",
          "code": "enrolled",
          "display": "Enrolled"
        }]
      }
    },
    {
      "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-state",
      "valueCodeableConcept": {
        "coding": [{
          "system": "https://bsa-uat.pinga.health/ig/CodeSystem/pathway-state",
          "code": "invited",
          "display": "Invited"
        }]
      }
    },
    {
      "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-substate",
      "valueCodeableConcept": {
        "coding": [{
          "system": "https://bsa-uat.pinga.health/ig/CodeSystem/pathway-substate",
          "code": "first-invitation",
          "display": "First Invitation"
        }]
      }
    },
    {
      "url": "https://bsa-uat.pinga.health/ig/StructureDefinition/pathway-state-date-last-modified",
      "valueDateTime": "2025-11-14T10:30:00+13:00"
    }
  ],
  "status": "active",
  "intent": "plan",
  "subject": {
    "reference": "Patient/example-patient",
    "display": "Jane Doe"
  },
  "period": {
    "start": "2025-01-15"
  },
  "author": {
    "reference": "Organization/ORG-xxx",
    "display": "Example Lead Provider"
  }
}
```

---

## Usage in BsaCarePlan Profile

When using the [BsaCarePlan profile](StructureDefinition-BsaCarePlan.html), the following extensions have stricter cardinality requirements:

| Extension | Base Cardinality | Profile Cardinality | Required? |
|-----------|------------------|---------------------|-----------|
| Programme Status | 0..1 | **1..1** | **Required** |
| Pathway State | 0..1 | **1..1** | **Required** |
| Pathway Substate | 0..1 | 0..1 | Optional |
| Pathway State Date Last Modified | 0..1 | **1..1** | **Required** |

This ensures that CarePlan instances conforming to the breast screening profile always include the essential tracking information needed for programme management and reporting.

---

## Related Resources

- [BsaCarePlan Profile](StructureDefinition-BsaCarePlan.html)
- [Pathway State CodeSystem](CodeSystem-pathway-state.html)
- [Pathway Substate CodeSystem](CodeSystem-pathway-substate.html)
- [Programme Status CodeSystem](CodeSystem-programme-status.html)
- [Profiles and Extensions](profiles-and-extensions.html)