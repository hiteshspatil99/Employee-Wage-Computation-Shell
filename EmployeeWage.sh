
#Calculate Wages till a condition of total working hours or Days is reached for a Month

#!/bin/bash -x
wage_per_hr=20
max_hrs=100
max_days=20
total_working_hrs=0
total_working_days=0

emp_attendance=$(( RANDOM % 2 ))
case $emp_attendance in
0)
 echo "Employee is Present"
    while(( total_working_hrs < max_hrs && total_working_days < max_days ))
     do
      (( total_working_days++ ))
      attendance=$(( RANDOM % 2 ))
      case $attendance in
        0)
            echo "Employee is Full Time present"
            no_of_hrs_per_day=8
            (( total_working_hrs += no_of_hrs_per_day ))
            total_salary=$(( total_working_hrs * wage_per_hr ))
            echo "Total salary is $total_salary"
            ;;
        1)
            echo "Employee is Part Time present"
            no_of_hrs_per_day=4
            (( total_working_hrs += no_of_hrs_per_day ))
            total_salary=$(( total_working_hrs * wage_per_hr ))
            echo "Total salary is $total_salary"
            ;;
        esac
     done
;;
1)
    echo "Employee is Absent"
    no_of_hrs_per_day=0
    ;;
    esac

