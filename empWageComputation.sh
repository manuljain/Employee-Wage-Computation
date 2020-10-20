#! /bin/bash

# Welome message
echo "Welcome to Employee Wage Computation Program."

# UC-1 Checking for employees attendance
# UC-2 Employee Daily wage
# UC-3 Part Time Employee wage 
# UC-4 Using switch case statement 

isPresent=1;
isPartTime=1
isFullTime=2
wagePerhour=20

randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
		empHrs=8
		echo "employee is present and working full time"
		;;
		$isPartTime)
		empHrs=4
		echo "employee is present and working part time"
		;;
	esac
else
	empHrs=0
	echo "employee is Absent"

fi
wage=$((empHrs*wagePerhour))
echo $wage
