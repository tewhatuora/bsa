# Breast Screening NZ – CPIR FHIR Implementation Guide

**Version:** 1.0.0  
**Status:** Draft  
**FHIR Version:** R4

## Introduction

The Breast Screening New Zealand (BSNZ) programme uses the National Screening Solution to manage population screening activities, invitations, appointments, and results.  
This Implementation Guide (IG) defines the **FHIR R4 representation used specifically for CPIR (Central Participant Index Record) integration**.

This IG does **not** introduce custom profiles on core FHIR resources, except for a small number of extensions on `CarePlan` required to record screening-specific attributes.  
All interchange uses *standard FHIR resources*:

- **Patient**
- **Appointment**
- **CarePlan**
- **EpisodeOfCare**
- **Organization**

The purpose of this guide is to document:

- The **scope** of the CPIR integration  
- The **use cases**  
- How the above resources are used in this context  
- Definitions of **custom extensions on CarePlan**  

This IG does *not* define scheduling APIs, invitation logic, radiology results, or any non-CPIR workflows.

---

## Intended Audience

- Ministry of Health teams  
- Regional Breast Screening Providers  
- Vendors integrating with CPIR  
- Architects, analysts, and developers who need to understand the data exchanged for participant identity and screening-episode linkage.

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
