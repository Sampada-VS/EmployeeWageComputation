#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
RATE_PER_HOUR=20
emp_check=$((RANDOM%3))

if [ $IS_PART_TIME -eq $emp_check ]
then
        emp_hours=4
elif [ $IS_FULL_TIME -eq $emp_check ]
then
        emp_hours=8
else
        emp_hours=0
fi
emp_daily_wage=$(($RATE_PER_HOUR*$emp_hours))
