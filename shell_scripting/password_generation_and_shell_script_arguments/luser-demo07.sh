#!/bin/bash

# Demonstrate the use of shift and while loops

# Display the first three parameters
echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"
echo

# Loop through all the positional parameters
while [[ "${#}" -gt 0 ]]
do
	echo "Number of Parameters: ${#}"
	echo "Parameter 1: ${1}"
	echo "Parameter 2: ${2}"
	echo "Parameter 3: ${3}"
	echo
	shift 2
    sleep 1.5s
done
