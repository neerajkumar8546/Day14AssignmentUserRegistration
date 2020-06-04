#!/bin/bash -x
pat=^[[:upper:]][[:lower:]]*$ 
read a
if [[ $a =~ $pat ]]
then
      echo "valid Last Name"
else
   echo "Invalid Last Name"
fi

