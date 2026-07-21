#!/bin/bash

NUMBER=$1

# -gt --> greater than
# -lt --> less than
# -eq --> equal
# -ne --> not equal

if [ $NUMBER -lt 10 ]
then
    echo "Given number $NUMBER is less than 10"
else
    echo "Given number $NUMBER is not less than 10"
fi


IF [ $NUMBER -lt 15]
then
    echo "given number $NUMBER is less then 15"
else 
    echo "given number $NUMBER is not less then 15"
fi