
#Calculating wages For Month

#!/bin/bash
#attendence check and wage calculation correspondingly
attendence=$(( RANDOM % 2 ))
wage_per_hr=20
no_of_days_per_month=20
case $attendence in 
0)
echo "Employee is Present"
  for ((day=1; day<=no_of_days_per_month;day++))
   do
   attended_type=$((RANDOM % 2))
    case $attended_type in
     0)
        echo "Employee is full time present"
        no_of_hrs_per_day=8
        echo "Day "$day" FullTime"
    	FullTime=$(($FullTime+1))
        wage_per_day=$(( wage_per_hr * no_of_hrs_per_day ))
        echo "The Wage of the employee for the day is $wage_per_day"
        wage_per_month=$(( wage_per_day * no_of_days_per_month ))
        ;;
    1)
        echo "Employee is Part time present"
        no_of_hrs_per_day=4
        echo "Day "$day" PartTime"
        PartTime=$(($PartTime+1))
        wage_per_day=$(( wage_per_hr * no_of_hrs_per_day ))
        echo "The Wage of the employee for the Day is $wage_per_day"
        wage_per_month1=$(( wage_per_day * no_of_days_per_month ))
        ;;
    esac
done
total_Salary=$(($wage_per_month1+$wage_per_month))
echo "The Wage of the employee for the Month is $total_Salary"
;;
1)
echo "Employee is Absent"
no_of_hrs_per_day=0
;;
esac
