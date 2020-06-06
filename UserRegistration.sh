#!/bin/bash -x

pat=^[[:upper:]][a-zA-Z]{3,}$ 

read -p "Enter First Name : " name

if [[ $name =~ $pat ]]
then
		echo "valid First Name"
else
	echo "Invalid First name"
fi
