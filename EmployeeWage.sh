'''
@Author: Hitesh Patil
@Date: 09-01-2022 11:05:46
@Last Modified by: Hitesh Patil
@Last Modified time: 09-01-2022 23:40:00
@Title : Check Employee is Present or Absent
'''

#!/bin/bash
attendence=$(( RANDOM % 2 ))
if(( attendence == 0 ))
then
    echo "Employee is absent"
else
    echo "Employee is present"
fi
