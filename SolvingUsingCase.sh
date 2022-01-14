#Solving using Case Statement

#!/bin/bash
#attendence check and wage calculation Correspondingly
attendence=$(( RANDOM % 3 ))
wage_per_hr=20
case $attendence in 
    0)
        echo "Employee is Full Time Present"
        no_of_hrs_per_day=8
        wage_per_day=$(( wage_per_hr * no_of_hrs_per_day ))
        echo "The daily wage of the employee is $wage_per_day "
        ;;
    1)
        echo "Employee is Part Time present"
        no_of_hrs_per_day=4
        wage_per_day=$(( wage_per_hr * no_of_hrs_per_day ))
        echo "The daily wage of the employee is $wage_per_day "
        ;;
    2)
        echo "Employee is Absent"
        no_of_hrs_per_day=0
        ;;
esac


