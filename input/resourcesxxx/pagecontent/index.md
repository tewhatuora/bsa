# Breast Screening NZ – CPIR FHIR Implementation Guide

**Version:** 1.0.0  
**Status:** Draft  
**FHIR Version:** R4

## Introduction

This Implementation Guide (IG) defines the HL7 FHIR interface for the BreastScreen Aotearoa (BSA) system.  It provides a **FHIR R4 representation** of the core business objects for breast screening for BSA.

This IG does **not** introduce custom profiles on core FHIR resources, except for a small number of extensions on `CarePlan` required to record screening-specific attributes.  
All interchange uses *standard FHIR resources*:

- **Patient**
- **Appointment**
- **CarePlan**
- **EpisodeOfCare**
- **Organization**

The purpose of this guide is to document:

- The full FHIR resources available as well as specific use cases
- The scope of specific **use cases** that limit information returned for meeting privacy obligations
- Definitions of **custom extensions on CarePlan**

This IG does *not* define scheduling APIs, invitation logic, radiology results, or any non-CPIR workflows.

---

## Guide Structure

- **Scope** – What the IG covers and excludes
- **Use Cases** – Detailed process flows for CPIR
- **Data Model** – How standard FHIR resources are used
- **CarePlan Extensions** – Custom elements needed for screening activity management

---

## FHIR Artefacts

Since this IG uses default FHIR resources, the only artefacts defined are:

- `StructureDefinition` for CarePlan extensions  
