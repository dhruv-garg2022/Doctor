#!/bin/bash
#after login
echo "Add Symptoms"
read sym

echo "Add Diagnostics"
read dia

echo "Write prescription"
read pres

echo "Add Tests"
read test

echo -e "Date: `date`\nSymptoms: $sym\nDiagnostics: $dia\nPrescription: $pres\nTest: $test\n" >> patients/$1.txt
