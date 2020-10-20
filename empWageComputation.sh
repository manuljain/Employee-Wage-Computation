#! /bin/bash

# Welome message
echo "Welcome to Employee Wage Computation Program."

# UC-1 Checking for employees attendance
# UC-2 Employee Daily wage
# UC-3 Part Time Employee wage 
# UC-4 Using switch case statement 
# UC-5 Employee Monthly wage
# UC-6 Conditional wage

# Variable declaration
isPresent=1;
isPartTime=1
isFullTime=2
absent=0
wagePerhour=20
daysPerMonth=20
emphrs=8
ftempHrs=0
ptempHrs=0
fttotaldays=0
pttotaldays=0
randomCheck=$((RANDOM%2))

while true
do
	if [ $isPresent -eq $randomCheck ]
	then
        	empCheck=$((RANDOM%3))
        	case $empCheck in
                	$isFullTime)
                	ftempHrs=$((ftempHrs+8))
                	fttotaldays=$((fttotaldays+1))
                	;;
                	$isPartTime)
                	ptempHrs=$((ptempHrs+8))
			        pttotaldays=$((pttotaldays+1))
                	;;
        	esac
	else
		echo "employee is absent and monthly wage is 0"
		break

	fi
	if [ $ftempHrs -gt 100 ]
	then
		ftwage=$((ftempHrs*wagePerhour))
		echo "monthly wage of full time employee is $ftwage"
		break
	elif [ $fttotaldays -gt $daysPerMonth ]
	then
		ftwage=$((emphrs*wagePerhour))
		wage=$((ftwage*fttotaldays))
		echo "monthly wage of full time employee is $wage"
	elif [ $pttotaldays -gt $daysPerMonth ]
        then
                ptwage=$((emphrs*wagePerhour))
                wage=$((ptwage*pttotaldays))
                echo "monthly wage of part time employee is $wage"

	elif [ $ptempHrs -gt 100 ]
        then
                ptwage=$((ptempHrs*wagePerhour))
                echo "monthly wage of part time employee is $ptwage"
		break

	fi

done
echo "EMPLOYEE DATA ::"
echo "FullTimePresent days : $fttotaldays   PartTimePresent days : $pttotaldays  Absent days : $absent "
echo "Total Working Days : 20  Total Working Hours : 100 "
