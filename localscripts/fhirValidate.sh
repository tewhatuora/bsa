#!/bin/bash   
#run from project root
set -x #echo on

#create a folder for the results
cd ./output
rm -r ./temp
mkdir ./temp

echo validating CarePlan examples
cp ../fsh-generated/resources/CarePlan*.json ./temp

ls ./package.tgz
java -jar ~/validator_cli.jar ./temp  -ig ./package.tgz -profile https://fhir-ig.digital.health.nz/bsa/StructureDefinition/BsaCarePlan -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_CarePlan.html
rm ./*temp/*.json


echo validating DiagnosticReport examples
cp ../fsh-generated/resources/DiagnosticReport*.json ./temp
java -jar ~/validator_cli.jar ./temp  -ig ./package.tgz -profile https://fhir-ig.digital.health.nz/bsa/StructureDefinition/BsaDiagnosticReport -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_DiagnosticReport.html
rm ./*temp/*.json

echo validating Bundle examples
cp ../fsh-generated/resources/Bundle-CP*.json ./temp
cp ../fsh-generated/resources/Bundle-DR*.json ./temp
java -jar ~/validator_cli.jar ./temp/*.json   -ig ./package.tgz  -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_Bundles.html

cd ..

pandoc ./output/validation_CarePlan.html -f html -t markdown -o ./validation_CarePlan.md
cat ./validation_CarePlan.md >> $GITHUB_STEP_SUMMARY
pandoc ./output/validation_DiagnosticReport.html -f html -t markdown -o ./validation_DiagnosticReport.md
cat ./validation_DiagnosticReport.md >> $GITHUB_STEP_SUMMARY
pandoc ./output/validation_Bundles.html -f html -t markdown -o ./validation_Bundles.md
cat ./validation_Bundles.md >> $GITHUB_STEP_SUMMARY