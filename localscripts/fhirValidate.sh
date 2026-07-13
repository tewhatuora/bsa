#!/bin/bash   
#run from project root
set -x #echo on

#create a folder for the results
cd ./output
rm -r ./temp
mkdir ./temp



wget -e  https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar  >/dev/null 2>&1  
whereis validator_cli.jar
echo validating CarePlan examples
cp ../fsh-generated/resources/CarePlan*.json ./temp
cp ../fsh-generated/resources/Bundle-CP*.json ./temp

java -jar validator_cli.jar ./temp  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/BsaCarePlan -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_CarePlan.html
rm ./*temp/*.json

cd ..