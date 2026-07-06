

### Get BSA CarePlan  for Patient

This is typically used to get all AllergyIntolerances for a patient.

<div>

</div>



####  Get BSA CarePlan for Patient  processing steps:

1. A FHIR Client sends a GET request  to the BSA  *CarePlan* endpoint with  the 'patient' query parameter specifying the patient's NHI number
2. The request is validated - ALT: Validation failure. Operation Outcome resource returned
3. CarePlans for  this NHI are retrieved from BSA
4. A bundle of CarePlan resources is returned to the client


####  Get  BSA CarePlans  Response Example 
[get-careplan-response-message-1](Bundle-CP1.json.html)



### Search  BSA CarePlan
This is used to find all CarePlan for a patient filtered by status, category, date or a combination. 


<div>

</div>


<h3>Get and Search AllergyIntolerance for Patient Business Rules and Errors</h3>
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

