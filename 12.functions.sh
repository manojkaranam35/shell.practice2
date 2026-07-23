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

dnf list installed pytho3
if [ $? -ne 0 ]
then
   echo "pytho3 not installed...going to istall"
   dnf install pytho3 -y
   VALIDATE $? "pytho3"
else
   echo "pytho3 already installed..nothing to do"
fi