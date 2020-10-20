#! /bin/bash

# Welome message
echo "Welcome to Employee Wage Computation Program."

# UC-1 Checking for employees attendance
# UC-2 Employee Daily wage
# UC-3 Part Time Employee wage 
# UC-4 Using switch case statement 
# UC-5 Employee Monthly wage
# UC-6 Conditional wage
# UC-7 Refactor the code with function


#Variables declaration
empAbsent=0
empRatePerHr=20
isPartTime=1
isFullTime=2
empHr=0
empHr2=0
totalEmpHr=0
monthlydays=20
totSalary=0
fullTimePre=0
partTimePre=0
absent=0
maxHr=100
totalDays=0



function getWorkingHr() {

	
	case $1 in
        	$isPartTime)
            partTimePre=$(( partTimePre + 1 ))
            empHr=4
                	;;
        	$isFullTime)
			fullTimePre=$(( fullTimePre + 1 ))
            empHr=8
            ;;
        	*)
			absent=$(( absent + 1 ))
            empHr=0
            ;;
	esac
	
	return $empHr

}

while [ $totalEmpHr -lt $maxHr -a $totalDays -lt $monthlydays ]
do

	totalDays=$(( totalDays + 1 ))
	getWorkingHr $((RANDOM%3))
	empHr2=`echo $?`
	totalEmpHr=$(( totalEmpHr + empHr2 ))
    salary=$(( empHr2 * empRatePerHr ))
	totSalary=$(( totalEmpHr * empRatePerHr ))
	sal[counter]=$salary
	totalSal[counter]=$totSalary
	counter=$(( counter + 1 ))
done

totSalary=$(( totalEmpHr * empRatePerHr ))
echo "EMPLOYEE DATA ::"
echo "FullTimePresent days : $fullTimePre  PartTimePresent days : $partTimePre  Absent days : $absent "
echo "Total Working Days : $totalDays  Total Working Hours : $totalEmpHr "
echo "Total Salary for 20 days is $totSalary"
echo "Array for Salary : ${sal[@]}"
echo "Array for Total Salary : ${totalSal[@]}"