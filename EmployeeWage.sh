#!/bin/bash
get_work_hrs ()
{
    emp_attendence=$1
     case $emp_attendence in
        0)
            no_of_hrs_per_day=8
            ;;
        1)
            no_of_hrs_per_day=4
            ;;
    esac
    echo "$no_of_hrs_per_day"
}

wage_per_hr=20
max_hrs=100
max_days=20
total_working_hrs=0
total_working_days=0
attended=$(( RANDOM % 2 ))
case $attended in
0)
 echo "Employee  is Present"
while(( total_working_hrs < max_hrs && total_working_days < max_days ))
do
    (( total_working_days++ ))
    emp_attendence=$(( RANDOM % 2 ))
    no_of_hrs_per_day=$( get_work_hrs $emp_attendence)
    (( total_working_hrs += no_of_hrs_per_day ))
    total_salary=$(( total_working_hrs * wage_per_hr ))
    echo "Total salary is $total_salary"
done
;;
1)
echo  "Employee Is Absent"
esac


