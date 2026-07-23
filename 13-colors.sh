#!/bin/bash

userid=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $userid -ne 0 ]
then
  echo "show $R error...run the script with root access $N"
  exit 1
  else "you are running the script with root $Y access $n"
  fi

VALIDATE(){
if [ $1 -eq 0 ]
then
  echo "installing $2 is $G success $N"
else 
  echo "installing $2 is $R failure $N"
  fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
  echo "mysql $R not installed $N..$G going to install $N"
  dnf install mysql
  VALIDATE $? "mysql"
else
  echo "mysql already installed..$Y nothing to do $N"
fi
dnf list installed nginx
if [ $? -ne 0 ]
then
  echo "nginx $R not installed $N..$G going to install $N"
  dnf install nginx
  VALIDATE $? "nginx"
else
  echo "nginx already installed..$Y nothing to do $N"
fi
dnf list installed httpd
if [ $? -ne 0 ]
then
  echo "httpd $R not installed $N..$G going to install $N"
  dnf install httpd
  VALIDATE $? "httpd"
else
  echo "httpd already installed..$Y nothing to do $N"
fi