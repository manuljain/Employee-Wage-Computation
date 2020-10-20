#! /bin/bash

# Welome message
echo "Welcome to Employee Wage Computation Program."

# UC-1 Checking for employees attendance
isPresent=1;
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "employee is present"
else
	echo "employee is Absent"
fi
