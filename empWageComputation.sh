#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20
emp_month_wage=0

for (( day=1; day<=$NUM_OF_WORKING_DAYS; day++ ))
do
        emp_check=$((RANDOM%3))
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
        emp_daily_wage=$(($RATE_PER_HOUR*$emp_hours))
        emp_month_wage=$(($emp_month_wage+$emp_daily_wage))
done
