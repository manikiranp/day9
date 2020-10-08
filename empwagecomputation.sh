#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
x=$(($RANDOM%2))
if [ $x -eq 1 ]; then
	echo "Employee is present"
else
	echo "Employee is absent"

