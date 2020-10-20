#! /bin/bash

# Welome message
echo "Welcome to Employee Wage Computation Program."

# UC-1 Checking for employees attendance
# UC-2 Employee Daily wage
isPresent=1
wagePerhour=20
dayhrs=8

randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "employee is present"

else
	echo "employee is Absent"
fi

dailywage=$(( $wagePerhour * $dayhrs ))
echo "daily wage of employee is : $dailywage "

