#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please run the script with root privelege"
    exit1
fi

dnf install mysql -y 

if [$? -ne 0 ]; then 
     echo "ERROR:: Installing MYSQl is failure"
     exit1
else 
    echo "Installing MYSQl is SUCCESS"
fi 