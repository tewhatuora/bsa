

### Get BSA DiagnosticReport  for Patient

This is typically used to get a BSA radiologist assessment reports.


<div>
{% include search-DiagnosticReport.svg %}
</div>


####  Get BSA DiagnosticReport for Patient  processing steps:

1. A FHIR Client sends a GET request  to the BSA  *DiagnosticReport* endpoint with  the 'patient' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. DiagnosticReports for  this NHI are retrieved from BSA
4. A bundle of DiagnosticReport resources is returned to the client


####  Get BSA DiagnosticReport Response Example 



### Search BSA DiagnosticReport
This is used to find all DiagnosticReport filtered by status, category, date or a combination. 

<div>
{% include search-DiagnosticReport2.svg %}
</div>


####  Get BSA CarePlan for Patient processing steps:

1. A FHIR Client sends a GET request  to the BSA  *DiagnosticReport* endpoint with  some combination of the  'status' 'category' and 'date' parameters
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. DiagnosticReports for  this NHI are retrieved from BSA
4. A bundle of DiagnosticReport resources is returned to the client


<h3>Get and Search DiagnosticReport for Patient -  Business Rules and Errors</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Business Rule </th>
<th> HTTP error </th>
<th> Error code</th>
<th>diagnostic</th>
</tr>

<tr><td> Must be a valid search parameter </td>
<td> 400 Bad request </td>
<td> processing</td>
<td> HAPI-0524: Unknown search parameter &lt;x&gt; for resource type \"DiagnosticReport\". Valid search parameters for this search are: ....</td></tr>

<tr><td>Must be a valid search parameter value </td>
<td> 400 Bad request </td>
<td>not-supported</td>
<td> Invalid request: The FHIR endpoint on this server does not know how to handle GET operation[DiagnosticReport/DiagnosticReport] with parameters &lt;x&gt;</td></tr>
</table>

