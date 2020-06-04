#! /bin/bash -x
shopt -s extglob
read -p "Enter a email:" email;
regex="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-z0-9]+.[a-z]{2,4}([.][a-z]{2}$)"
regex1="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-z0-9]+.[a-z]{2,4}$"
regex2="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}([.][a-z]{2}$)"
regex4="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}$"
if [[ $email =~ $regex ]]
then
	echo "valid"
elif [[ $email =~ $regex1 ]]
then
        echo "valid"
elif [[ $email =~ $regex2 ]]
then
	echo "valid"
elif [[ $email =~ $regex4 ]]
then
        echo "valid"
else
        echo "not valid"
fi
