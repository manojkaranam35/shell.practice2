#!/bin/bash 

NUMBER1=100
NUMBER2=200
NUMBER3=300
NUMBER4=400


TIMESTAMP=$(date)
echo "script executed at = $TIMESTAMP"

SUM=$(($NUMBER1+$NUMBER2))
echo "sum of $NUMBER1 & $NUMBER2 is = $SUM"

SUM1=$(($NUMBER1+$NUMBER3))
echo " sum of $NUMBER1 & $NUMBER3 is = $SUM1"

SUM2=$(($NUMBER2+$NUMBER4))
echo " sum of $NUMBER2 & $NUMBER4 is = $SUM2"

echo "manoj:hi "

sum3=$((($NUMBER1+$NUMBER2+$NUMBER3)))
echo " sum of any three is = $sum3"

sum4=$((($NUMBER1+$NUMBER2)))
echo "sum of one and two is = $sum4

echo "mandy=$NUMBER1
