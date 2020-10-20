#! /bin/bash

# Welome message
echo "Welcome to Employee Wage Computation Program."

# UC-1 Checking for employees attendance
# UC-2 Employee Daily wage
# UC-3 Part Time Employee wage 

isPresent=1;
isPartTime=1
isFullTime=2
wagePerhour=20

randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	random=$((RANDOM%3))
	if [ $isPartTime -eq $random ]
	then
		empHrs=4
	echo "employee is present and working part time"
	elif [ $isFullTime -eq $random ]
	then
		empHrs=8
		echo "employee is present and working full time"
	fi
else
	empHrs=0
	echo "employee is Absent"
fi
wage=$((empHrs*wagePerhour))
echo $wage
