### Capability Statement

[BSACapabilityStatement](CapabilityStatement-BSACapabilityStatement.html)
### REST APIs
#### Resource Level Interactions

##### DiagnosticReport #####
<p>Describes a participant's BSA screening outcomes and radiologist assessment reports</p>
  
**Interactions**  

<table><style>table, th, td { border: 1px solid black;border-collapse: collapse;}</style>
<tr><th width='10%'>Name</th><th width='10%'>Verb</th><th width='20%'>URL</th><th width='50%'>Documentation</th><th width='10%'>Scope</th></tr>
<tr>
<td>read</td>
<td>GET</td>
<td>[base]/DiagnosticReport/[id]</td>
<td>Used to retrieve a participant's BSA screening outcomes and radiologist assessment reports</td>
<td> system/DiagnosticReport.r</td>
</tr>
<tr>
<td>search-type</td>
<td>GET</td>
<td>[base]/DiagnosticReport</td>
<td> Search for a patient's  participant's BSA screening outcomes and radiologist assessment reports</td>
<td>system/DiagnosticReport.s</td>
</tr>
</table>

**Search Parameters**

<table><style>table, th, td { border: 1px solid black;border-collapse: collapse;}</style>
<tr><th width='30%'>Name</th><th>Type</th><th width='70%'>Documentation</th></tr>
<tr>
<td>patient</td>
<td><a target='_blank' href="http://hl7.org/fhir/search.html#reference">reference</a></td>
<td><p>NHI id of patient who is the subject of the report</p>
</td>
</tr>
<tr>
<td>status</td>
<td><a target='_blank' href="http://hl7.org/fhir/search.html#token">token</a></td>
<td><p>report status</p>
</td>
</tr>
<tr>
<td>date</td>
<td><a target='_blank' href="http://hl7.org/fhir/search.html#token">token</a></td>
<td><p>The clinically relevant time of the report</p>
</td>
</tr>
<tr>
<td>category</td>
<td><a target='_blank' href="http://hl7.org/fhir/search.html#token">token</a></td>
<td><p>Which diagnostic discipline/department created the report</p>
</td>
</tr>
</table>

##### CarePlan #####
<p>Describes a participant's BSA screening enrolment and pathway status</p>
  
**Interactions**  

<table><style>table, th, td { border: 1px solid black;border-collapse: collapse;}</style>
<tr><th width='10%'>Name</th><th width='10%'>Verb</th><th width='20%'>URL</th><th width='50%'>Documentation</th><th width='10%'>Scope</th></tr>
<tr>
<td>read</td>
<td>GET</td>
<td>[base]/CarePlan/[id]</td>
<td>Used to retrieve a participant's BSA screening enrolment and pathway status</td>
<td> system/CarePlan.r</td>
</tr>
<tr>
<td>search-type</td>
<td>GET</td>
<td>[base]/CarePlan</td>
<td> Search for a participant's BSA screening enrolment and pathway status</td>
<td>system/CarePlan.s</td>
</tr>
</table>

**Search Parameters**

<table><style>table, th, td { border: 1px solid black;border-collapse: collapse;}</style>
<tr><th width='30%'>Name</th><th>Type</th><th width='70%'>Documentation</th></tr>
<tr>
<td>patient</td>
<td><a target='_blank' href="http://hl7.org/fhir/search.html#reference">reference</a></td>
<td><p>NHI id of patient who is the subject of the CarePlan</p>
</td>
</tr>
<tr>
<td>_lastUpdated</td>
<td><a target='_blank' href="http://hl7.org/fhir/search.html#token">token</a></td>
<td><p>The date the care plan was last updated</p>
</td>
</tr>
</table>