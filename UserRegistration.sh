#!/bin/bash -x

pat=^[[:upper:]][[:lower:]]*$ 

read -p "Enter First Name : " name

if [[ $name =~ $pat ]]
then
		echo "valid First Name"
else
	echo "Invalid First name"
fi
