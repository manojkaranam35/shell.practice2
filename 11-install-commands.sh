#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
echo "error: Please run this script with root access" 
else
echo " you are running script with root access"
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
   echo "mysql not installed..going to install"
dnf install mysql
if [ $? -eq 0 ]
then
      echo "installing mysql is....success"
  else
     echo "installing mysql is....failure"
     exit1
else
    echo "mysql already installed"
fi