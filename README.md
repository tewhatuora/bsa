
# bsa-fhir-ig

This is the source code for the BSA FHIR IG


## Change log
v1.1.0 

ported from https://github.com/sorsix/bsa-fhir-ig and converted to FSH
changed some resource URI s to comply with standards


## Issues
missing oids for terminology
### DiagnosticReport
1. we have not defined the value set to use for category - this is the default example http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html - need to check with NZHTS
2. effective data is not populated - can't do data based searches
3.  we have not defined the value set to use for code - LOINC is just preferred 
4. cannonical urls do not align with HNBZ Standards?


### CarePlan
1. effective data is not populated - can't do date-based searches

###general
1 change to profiled resources instead of unprofiled. It will make it explicit what the server capabilities are making it easier to test and easier for clients to understand what the server offers.
 It will also a allows us to lock the server down to just the operations we want to support, reducing attack surface area.
 
### How to build
This IG is built using the [Te Whaturora IG builder ](https://github.com/tewhatuora/fhir-ig-builder)
You will need an api key which is issued by the integration team
Then you can initiate the build with a curl command

`curl --location 'https://fhir-ig-builder.api-uat.digital.health.nz/v1/build' --header 'x-api-key: My API Key' --header 'Content-Type: application/json' --data '{"igSourceGitUrl":"https://github.com/tewhatuora/bsa.git", "gitBranch":"master", "publishToRegistry": false}'`~


 
 
 