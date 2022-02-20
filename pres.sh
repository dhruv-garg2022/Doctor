#!/bin/bash
#after login
echo "Enter username"
read username

echo "Add Symptoms"
read sym

echo "Add Diagnostics"
read dia

echo "Write prescription"
read pres

echo "Add Tests"
read test

echo -e "Date: `date`\nSymptoms: $sym\nDiagnostics: $dia\nPrescription: $pres\nTest: $test\n" >> patients/$username.txt

