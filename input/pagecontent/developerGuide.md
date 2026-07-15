<!-- markdownlint-disable MD010 MD041 MD033-->



### HTTP Header Details

* This is a list of any additions to standard HTTP header protocol

<h3>Request Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> HTTP Header (Key) </th>
<th> HTTP Header (Value) </th>
<th> Description </th>
<th> Mandatory / Recommended / Optional </th></tr>

<tr><td> Authorization </td>
<td> Bearer {string} </td>
<td> The OAuth2 access token </td>
<td> Mandatory </td></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Client provided <br />
All requests should contain a unique transaction id in the X-Correlation-Id field <br />
If present in the request this will be returned in the response, and can be used to track API calls <br />
Preferred less than 64 characters <br /> </td>
<td> Recommended </td></tr>

<tr><td> Content-Type </td>
<td> Application/json </td>
<td> Supported content type </td>
<td> Mandatory </td></tr>

<tr><td> request-context </td>
<td>base64 </td>
<td> Audit information </td>
<td> Mandatory </td></tr>

</table>


### Security

#### OAUTH2
This FHIR API uses standard OAUTH bearer token authentication.

All requests to this FHIR API must include an access token in the `Authorization` header.

Authorized clients can obtain access tokens from the Health New Zealand authorization server (KeyCloak) using OAUTH2 Client Credentials flow to request the necessary [OAUTH SMART scopes](api.html).



#### Scopes

See [API](API.html) for a description of the scopes required for each operation.


## Request context

All FHIR API requests must include metadata about the context of usage for the application consuming the API.  This is done by setting properties in the `Request-Context` custom header (which is a string containing a Base64-encoded JSON object).

|**property**             |**Required?**|**Attribute value**|
  |:----------------------|:------------|:---------------------|
  | `userIdentifier`      | YES         | The userid of the user as authenticated by RFCCS or other authorized PMS/health application. |
  | `purposeOfUse`        | YES         | Set to `"POPHEALTH"`                                              |
  | `userFullName`        | YES         | Display name of the user of RFCCS or the PMS/health application.  |
  | `hpiOrganisation`     | YES         | The HPI Organisation identifier (format GAAANNN-A) for Secondary Prevention Service the application user is working within |
  | `hpiPractitioner`     | optional    | If available, the HPI Practitioner identifier (Common Person Number) of the user |
  | `hpiFacility`         | optional    | If available, the HPI Facility identifier of the health facility where the application is being used |
  
  The schema for defining and validating these properties can be [found here](https://github.com/tewhatuora/schemas/blob/main/json-schema/Request-Context-v2.json)

An example request context follows illustrating FHIR API access on behalf of the Northland / Te Tai Tokerau RF Secondary Prevention Service:

```json
{
  "userIdentifier": "11AAbb@#",
  "purposeOfUse": "POPHLTH",
  "userFullName": "Alice Archer",
  "hpiOrganisation": {
    "type": "Organization",
    "identifier": {
      "use": "official",
      "system": "https://standards.digital.health.nz/ns/hpi-organisation-id",
      "value": "G0M086-B"
    }
  }
}
```

A schema for the Request-Context is [available here](https://github.com/tewhatuora/schemas/blob/main/json-schema/Request-Context-v2.json)

<p>&nbsp;</p>


