
#!/bin/bash   
set -x #echo on
cd localscripts
 curl --location 'https://fhir-ig-builder.api-uat.digital.health.nz/v1/build' --header 'x-api-key: '"$1"'' --header 'Content-Type: application/json' --data '{"igSourceGitUrl":"https://github.com/tewhatuora/bsa.git", "gitBranch":"master", "publishToRegistry": false}'
cd ..