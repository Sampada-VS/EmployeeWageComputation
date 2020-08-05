#!/bin/bash -x
IS_PART_TIME=1
IS_FULL_TIME=2
RATE_PER_HOUR=20
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
