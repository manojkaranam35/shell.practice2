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
   echo "installing $2 is..success"
else
   echo "installing $2 is...failure"
 exit 1
 fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
   echo "mysql not installed...going to istall"
   dnf install mysql -y
   VALIDATE $? "mysql"
else
   echo "mysql already installed..nothing to do"
fi

dnf list installed python3
if [ $? -ne 0 ]
then
   echo "python3 not installed...going to istall"
   dnf install python3 -y
   VALIDATE $? "python3"
else
   echo "python3 already installed..nothing to do"
fi

dnf list installed nginx
if [ $? -ne 0]
then
   echo "nginx not installed..going to install"
   dnf install nginx
   VALIDATE $? "nginx"
else
   echo "nginx already installed... nothing to do"
fi