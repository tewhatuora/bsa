
# bsa-fhir-ig

This is the source code for the BSA FHIR servicces


## Change log
### inprogress

ported from https://github.com/sorsix/bsa-fhir-ig and converted to FSH
p[reparing to buil;d with TWO IG build pipeline

## Issues
### DiagnosticReport
1. we have not defined the value set to use for category - this is the default example http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html - need to check with NZHTS
2. effective data is not populated - can't do data based searches
3.  we have not defined the value set to use for code - LOINC is just poreferred 

### CarePlan
1. effective data is not populated - can't do data based searches

###general
1 change to profiled resources instead of unprofiled. It will make it explicit what the server capabailities are making it easier to test and easier for clients to understand what the server offers.
 It will also a allows us to lock the server down to just the operations we want to support, reducing attack surface area.
 
### To do
 profile careplan - done, needs review
 profile diagnosticreport - done, needs review
 
 gofish careplan extensions and add to profile

content in resources/ __pagecontent needs to be reviewed, moved and linked into ig
 add uses cases
 
bundle examples for search
 
 
 
 