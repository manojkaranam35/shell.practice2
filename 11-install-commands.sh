#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
echo "error: Please run this script with root access" 
else
echo " you are running script with root access"
fi