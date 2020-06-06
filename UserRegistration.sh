#!/bin/bash -x
pat=^[[:upper:]][a-zA-Z]{3,}$ 
read a
if [[ $a =~ $pat ]]
then
      echo "valid Last Name"
else
   echo "Invalid Last Name"
fi

