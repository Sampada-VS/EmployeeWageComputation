#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20
MAX_HOURS=100

total_emp_hrs=0
total_working_days=0

function getEmpHours(){
	case $emp_check in
		$IS_PART_TIME)
			emp_hours=4
			;;
		$IS_FULL_TIME)
			emp_hours=8
			;;
		*)
			emp_hours=0
			;;
	esac
	echo $emp_hours
}

while [[ $total_emp_hrs -lt $MAX_HOURS && $total_working_days -lt $NUM_OF_WORKING_DAYS ]]
do
	((total_working_days++))
	emp_check=$((RANDOM%3))
	emp_hours=$( getEmpHours $emp_check )
	total_emp_hrs=$(($total_emp_hrs+$emp_hours))
	dailyWage[total_working_days]="$( getDailyWage $emp_hours )"
done
emp_wage=$(($total_emp_hrs*$RATE_PER_HOUR))
echo "Daily Wage " ${dailyWage[@]}
