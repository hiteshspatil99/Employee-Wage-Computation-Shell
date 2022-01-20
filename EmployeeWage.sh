#Calculation of daily Employee wage

#!/bin/bash
attendence=$(( RANDOM % 2 ))
wage_per_hour=20
no_of_hours=8
#attendence check
if(( attendence == 0 ))
then
    echo "Employee is Present"
    echo "The Daily Employee Wage is: $((attendence * wage_per_hour * no_of_hours))"
else
    echo "Employee is Absent"
fi




