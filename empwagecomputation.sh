#!/bin/bash 

echo "Welcome to Employee Wage Computation Program"

wage_per_hr=20
function wage() {
echo $(($1*wage_per_hr))
}
x=$(($RANDOM%3))
if [ $x -eq 1 ]; then
	work_hrs=8
	echo "Employee is present"
	echo "Employee daily wage: $(wage $work_hrs)"
elif [ $x -eq 0 ]; then
	work_hrs=0
	echo "Employee is absent"
	echo "Employee daily wage: $(wage $work_hrs)"
else
	work_hrs=4
	echo "Employee is present part-time"
	echo "Employee daily wage: $(wage $work_hrs)"
fi



