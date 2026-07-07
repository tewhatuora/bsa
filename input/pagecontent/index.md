# Breast Screening NZ – CPIR FHIR Implementation Guide

**Version:** 1.0.0  
**Status:** Draft  
**FHIR Version:** R4

## Introduction

This Implementation Guide (IG) defines the HL7 FHIR interface for the BreastScreen Aotearoa (BSA) system.  It provides a **FHIR R4 representation** of the core business objects for breast screening for BSA.

This IG introduces custom profiles on core FHIR resources, on order to narrow the scope of testing and provide New Zealand specific extensions where required


The purpose of this guide is to document:

- The full FHIR resources available as well as specific use cases  
- Definitions of **profiles on CarePlan and  DiagnosticReport**  


### Organization of the Guide

* **Business view:** The Business context of the NHI

* **Use Cases:**  The expected Use Cases including the FHIR interactions that the NHI supports.

* **API:** Information on the specific features supported by the API.

* **Profiles:** Details of the data elements included in the NHI Patient and NHI Address profiles.

* **Extensions:** List of extensions defined by the guide.

* **Terminology:** List of the FHIR terminology artifacts defined within this implementation guide [For other FHIR terminology see the HL7® FHIR® New Zealand Base Implementation Guide](https://fhir.org.nz/ig/base/index.html). Links can be found from each of the artifacts in the patient and address profiles).


* **Artifact Index:**  This is a tab automatically generated during the build of the Implementation Guide, and lists all the FHIR artifacts defined by the guide with a link to the details.

* **Support** Links to the FHIR spec and downloads.

  