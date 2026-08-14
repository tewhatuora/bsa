#!/bin/bash   
#run from project root
set -x #echo on

#create a folder for the results
cd ./output
rm -r ./temp
mkdir ./temp



echo validating DiagnosticReport examples
cp ../fsh-generated/resources/DiagnosticReport*.json ./temp
cp ../fsh-generated/resources/Bundle-DR*.json ./temp
ls ./package.tgz
java -jar ~/validator_cli.jar ./temp  -ig ./package.tgz -profile = https://fhir-ig.digital.health.nz/bsa/StructureDefinition/BsaDiagnosticReport -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_DiagnosticReport.html
rm ./*temp/*.json

cd ..
