'''
@Author: Hitesh Patil
@Date: 10-01-2022 13:05:46
@Last Modified by: Hitesh Patil
@Last Modified time: 10-01-2022 15:50:56
@Title : Solving using Case Statement
'''
#

#!/bin/bash
#attendence check and wage calculation Correspondingly
attendence=$(( RANDOM % 2 ))
wage_per_hr=20
case $attendence in 
0)
 echo "Employee is Present"
   attendance=$(( RANDOM % 2 ))
    case  $attendance in
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
    esac
;;
1)
  echo "Employee is Absent"
   ;;
esac
