Profile:        BSADiagnosticReport

Parent:         DiagnosticReport         

Id:             BsaDiagnosticReport
Title:          "BSA Diagnostic Report"
Description:    "Describes a participant's BSA screening outcomes and radiologist assessment reports"

* ^url = $Profile-BsaDiagnosticReport 


* subject only Reference(Patient) 

//excluded
* implicitRules 0..0
* language 0..0
* basedOn 0..0
* encounter 0..0
* resultsInterpreter 0..0
* imagingStudy 0..0
* conclusion 0..0
* conclusionCode 0..

//restricted
* effective[x] only dateTime


* subject ^short = "NHI Id of Patient enrolled in breast screening"