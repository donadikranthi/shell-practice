#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USERID -ne 0 ]; then
    echo "ERROR:: please run the script with root privelege"
    exit 1
fi

VALIDATE() {
if [ $1 -ne 0 ]; then 
             echo -e "ERROR:: Installing $2...$R is FAILURE $N"
             exit 1
        else
           echo -e "Installing  $2....$G is SUCCESS $N"
    fi
}

dnf list installed mysql 
#Install if it is not found

if [ $? -ne 0 ]; then 
dnf install mysql -y 
VALIDATE $? "MYSQL"
else 
  echo "MYSQL already exist ... $G SkIPPING $N"

  fi 

  if [ $? -ne 0 ]; then 
      dnf install nginx -y 
       VALIDATE $? "nginx"
else 
  echo "Nginx already exist ... $G SkIPPING $N"

  fi 

if [ $? -ne 0 ]; then 
      dnf install python3 -y 
       VALIDATE $? "python"
else 
  echo "python3 already exist ... $G SkIPPING $N"

  fi 