#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

wage_per_hr=20
working_hrs=8
x=$(($RANDOM%2))
dailywage=$(( $wage_per_hr * $working_hrs ))
if [ $x -eq 1 ]; then
	echo "Employee is present"
	echo "Daily Employee wage: $dailywage"
else
	echo "Employee is absent"
	echo "Daily Employee wage: 0"
fi

