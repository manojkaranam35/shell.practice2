#!/bin/bash

userid=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $userid -ne 0 ]
then
  echo -e "show $R error...run the script with root access $N"
  exit 1
  else
  echo -e "you are running the script with root $Y access $N"
  fi

VALIDATE(){
if [ $1 -eq 0 ]
then
  echo -e "installing $2 is $G success $N"
else 
  echo -e "installing $2 is $R failure $N"
  fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
  echo -e "mysql $R not installed $N..$G going to install $N"
  dnf install mysql
  VALIDATE $? "mysql"
else
  echo -e "mysql already installed..$Y nothing to do $N"
fi
dnf list installed nginx
if [ $? -ne 0 ]
then
  echo -e "nginx $R not installed $N..$G going to install $N"
  dnf install nginx
  VALIDATE $? "nginx"
else
  echo -e "nginx already installed..$Y nothing to do $N"
fi
dnf list installed httpd
if [ $? -ne 0 ]
then
  echo -e "httpd $R not installed $N..$G going to install $N"
  dnf install httpd
  VALIDATE $? "httpd"
else
  echo -e "httpd already installed..$Y nothing to do $N"
fi