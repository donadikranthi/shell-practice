#!/bin/bash

# This is a devops project

echo "Hello Devops"

ls -ls

aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-069f722e1125dd734 --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' --query 'Instances[0].PrivateIpAddress' --output text
172.31.19.18

aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-069f722e1125dd734 --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' --query 'Instances[0].InstanceId' --output text

ami-09c813fb71547fc4f
sg-069f722e1125dd734
aws ec2 describe-instances --instance-ids <YOUR_INSTANCE_ID> --query 'Reservations[0].Instances[*0].PublicIpAddress' --output text