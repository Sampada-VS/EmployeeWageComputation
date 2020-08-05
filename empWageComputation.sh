#!/bin/bash -x
IS_PRESENT=1
emp_check=$((RANDOM%2))

if [ $IS_PRESENT -eq $emp_check ]
then
        echo "Employee is present."
else
        echo "Employee is absent."
fi
