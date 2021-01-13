#!/bin/bash
#
# fields.sh     Jason Pak       January 13, 2021
#
# This script takes a list of field names and prints the proper
# field number for each filed name listed on the command line. 
#
# To use the script, call ./fields.sh on the command line, followed
# by the exact field names of the fields you want field numbers for
#

if [ ! -r scorecard.csv ]; then
	echo 1>&2 Error: scorecard.csv is not an existing, readable file
	exit 1
else
	for arg in "$@"; 
	do 
		head -n 1 scorecard.csv | tr , "\n" | grep -n "$arg"$
	done
fi
exit 0
