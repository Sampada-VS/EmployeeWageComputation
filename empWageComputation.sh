#!/bin/bash -x
IS_PRESENT=1
emp_check=$((RANDOM%2))

if [ $IS_PRESENT -eq $emp_check ]
then
        emp_hours=8
        RATE_PER_HOUR=20
        emp_daily_wage=$(($RATE_PER_HOUR*$emp_hours))
else
        emp_daily_wage=0
fi
