
  
'''
@Author: Hitesh Patil
@Date: 09-01-2022 13:05:46
@Last Modified by: Hitesh Patil
@Last Modified time: 09-01-2022 23:50:56
@Title : Part_Time_Employee_Addition
'''


#!/bin/bash
#Attendence check and Wage calculation with respect to
wage_per_hr=20
attendence=$(( RANDOM % 2 ))
if(( attendence == 0 ))
then
echo "Employee is Present"
attendance=$(( RANDOM % 2 ))
    if(( attendance == 0 ))
      then
         echo "Employee is Full time Present"
               no_of_hrs_per_day=8 
               wage_per_day=$(( wage_per_hr * no_of_hrs_per_day ))
               echo "The daily wage of the employee is: $wage_per_day"
    else
       echo "Employee is Part time Present"
       no_of_hrs_per_day=4
       wage_per_day=$(( wage_per_hr * no_of_hrs_per_day ))
       echo "The daily wage of the employee is: $wage_per_day"
    fi     
else
    echo "Employee is Absent"
fi



