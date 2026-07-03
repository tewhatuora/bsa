# CarePlan Extensions

This IG defines the minimal set of extensions needed to support breast screening CPIR workflows.

## List of Extensions

### 1. Screening Round  
**URL:** `http://example.org/fhir/StructureDefinition/screeningRound`  
**Type:** `integer`  
**Description:** Indicates the screening round number (1, 2, 3, …).

### 2. Screening Modality  
**URL:** `http://example.org/fhir/StructureDefinition/screeningModality`  
**Type:** `code`  
**Example Codes:**
- `mammography`
- `tomosynthesis`
- `ultrasound`
- `mri`

### 3. Screening Status  
**URL:** `http://example.org/fhir/StructureDefinition/screeningStatus`  
**Type:** `code`  
**Example Codes:**
- `invited`
- `scheduled`
- `attended`
- `completed`
- `no-show`

### 4. Tracking Phase  
**URL:** `http://example.org/fhir/StructureDefinition/trackingPhase`  
**Type:** `code`  
**Description:** Internal CPIR tracking state.

---

## Example CarePlan

```json
{
  "resourceType": "CarePlan",
  "status": "active",
  "intent": "plan",
  "subject": { "reference": "Patient/123" },
  "episodeOfCare": [{ "reference": "EpisodeOfCare/456" }],
  "extension": [
    {
      "url": "http://example.org/fhir/StructureDefinition/screeningRound",
      "valueInteger": 3
    },
    {
      "url": "http://example.org/fhir/StructureDefinition/screeningModality",
      "valueCode": "mammography"
    },
    {
      "url": "http://example.org/fhir/StructureDefinition/screeningStatus",
      "valueCode": "invited"
    }
  ]
}
