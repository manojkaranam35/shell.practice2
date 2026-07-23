#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "error:run the script with root user"
else
    echo "you are running with root user"
fi

VALIDATE(){
if [ $1 -eq 0 ]
then
   echo "installing $1 is..success"
else
   echo "installing $1 is...failure"
 exit1
 fi
}

dnf lint installed mysql
if [ $? -ne 0 ]
then
   echo "mysql not installed...going to istall"
   dnf install mysql -y
   VALIDATE $? "mysql"
else
   echo "mysql already installed..nothing to do"
fi