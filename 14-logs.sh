#!/bin/bash

userid=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
O="\e[36m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script started executing at: $(date)" | tee -a $LOG_FILE

if [ $userid -ne 0 ]
then 
  echo -e "show $R error...run the script with root user $N" | tee -a $LOG_FILE
  exit 1
else
  echo -e " $O ypu are running the script with root user nothing to do $N" | tee -a $LOG_FILE
fi

VALIDATE(){
 if [ $1 -eq 0 ]
    then
        echo -e "Installing $2 is ... $G SUCCESS $N" | tee -a $LOG_FILE
    else
        echo -e "Installing $2 is ... $R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    fi
}

dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]
then 
  echo -e "mysql not installed.. $G going to install $N " | tee -a $LOG_FILE 
  dnf install mysql -y &>>$LOG_FILE
  VALIDATE $? "mysql"
else
  echo -e " $Y mysql already installed...nothing to do $N" | tee -a $LOG_FILE 
fi

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]
then 
  echo -e "nginx not installed.. $G going to install $N " | tee -a $LOG_FILE 
  dnf install nginx -y &>>$LOG_FILE
  VALIDATE $? "nginx"
else
  echo -e " $Y nginx already installed...nothing to do $N" | tee -a $LOG_FILE 
fi

dnf list installed httpd &>>$LOG_FILE
if [ $? -ne 0 ]
then 
  echo -e "httpd not installed.. $G going to install $N " | tee -a $LOG_FILE 
  dnf install httpd -y &>>$LOG_FILE
  VALIDATE $? "httpd"
else
  echo -e " $Y httpd already installed...nothing to do $N" | tee -a $LOG_FILE 
fi