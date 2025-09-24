#!/bin/bash

#This is a Even or Odd number 

echo please enter the number:

read NUMBER 

if [ $(($NUMBER % 2 )) -eq 0 ] ; then 
     echo This is $NUMBER a Even number
 else 
     echo This is $NUMBER a odd number

 fi