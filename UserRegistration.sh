#!/bin/bash -x
pat="^[[:digit:]]{2}[ ]{1}[[:digit:]]{10}$"
read a
if [[ $a =~ $pat ]]
then
      echo "valid number"
else
   echo "Invalid number"
fi
