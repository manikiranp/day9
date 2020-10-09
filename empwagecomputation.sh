#!/bin/bash 

echo "Welcome to Employee Wage Computation Program"
parttime=1
fulltime=2
wage_per_hr=20
num_working_days=20
maxhrs_month=100
total_work_hrs=0
totalworking_days=0
total_salary=0

function wage() {
echo $(($1*wage_per_hr))
}
function getworkhrs() {
        case $1 in
                $parttime)
                        work_hrs=4
			echo "Employee is present part-time"
        		echo "Employee daily wage: $(wage $work_hrs)" 
                        ;;
                $fulltime)
			work_hrs=8
                        echo "Employee is present full-time"
        		echo "Employee daily wage: $(wage $work_hrs)"
                        ;;
                *)
                        work_hrs=0
        		echo "Employee is absent"
	        	echo "Employee daily wage: $(wage $work_hrs)"
                        ;;
        esac
}
while [[ $total_work_hrs -lt $maxhrs_month && $totalworking_days -lt $num_working_days ]]
do
	 ((totalworking_days++))
	days[$totalworking_days]=$(($totalworking_days))
	echo "Day---${days[$totalworking_days]}"
	empcheck=$(($RANDOM%3))
	getworkhrs $empcheck
	total_work_hrs=$(($total_work_hrs+$work_hrs))
	totalsalary=$(($totalsalary+$(wage $work_hrs)))
	dailywages[$totalworking_days]=$(($(wage $work_hrs)))
done
echo "Total work hours: $total_work_hrs"
echo "Employee monthly salary: $totalsalary"

