#!/bin/bash 

echo "Welcome to Employee Wage Computation Program"
parttime=1
fulltime=2
wage_per_hr=20
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
                        echo "Employee is present"
        		echo "Employee daily wage: $(wage $work_hrs)"
                        ;;
                *)
                        work_hrs=0
        		echo "Employee is absent"
	        	echo "Employee daily wage: $(wage $work_hrs)"
                        ;;
        esac
}
empcheck=$(($RANDOM%3))
getworkhrs $empcheck




