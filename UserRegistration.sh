#!/bin/bash -x
shopt -s extglob

#UC1

pat1=^[[:upper:]][a-zA-Z]{3,}$ 
read -p "Enter First Name : " firstname

if [[ $firstname =~ $pat1 ]]
then
		#UC2
		
		pat2=^[[:upper:]][a-zA-Z]{3,}$ 
		read -p "Enter Last Name : " lastname
		if [[ $lastname =~ $pat2 ]]
		then
				#UC3
				
			    read -p "Enter a email:" email;
				regex="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-zA-Z]+.[a-z]{2,4}([.][a-z]{2}$)"
				regex1="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-z0-9]+.[a-z]{2,4}$"
				regex2="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}([.][a-z]{2}$)"
				regex4="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}$"
				if [[ $email =~ $regex ]] || [[ $email =~ $regex1 ]] || [[ $email =~ $regex2 ]] || [[ $email =~ $regex4 ]]
				then
						  
							#UC4
							
						    pat4="^[[:digit:]]{2}[ ]{1}[[:digit:]]{10}$"
							read -p "Enter Mobile Number: " mob
							if [[ $mob =~ $pat4 ]]
							then
							
								#UC5
								
								  pat5="[a-zA-Z0-9.*@#]{8}"
								  read -p "Enter Password: " pass
								  if [[ $pass =~ $pat5 ]]
								  then	
									
									#UC6
									
									pat6="[[:upper:]]{1}"
                                    					if [[ $pass =~ $pat6 ]]
                                    					then
															
															#UC7
															
                                        					pat7="[[:digit:]]{1}"
                                    					if [[ $pass =~ $pat7 ]]
                                    					then
                                        					
														#UC8
															
														length=${#pass} #find length of password
														num=0
														#pat8=[@#.*]{1}
														
														for (( i=$num; i<$length;i++ ))
														do
																#echo "${pass:$i:1}"
																
															if [ -z $(echo "${pass:$i:1}" | sed -e 's/[0-9]//g') ]
															then
																#echo "$char is Number/digit"
																((number++))
															elif [ -z $(echo "${pass:$i:1}" | sed  -e 's/[A-Z]//g') ] # find out if character is upper
															then
																	#echo "$char is UPPER character"
																	((upper++))
															 
															elif [ -z $(echo "${pass:$i:1}" | sed -e 's/[a-z]//g') ] # find out if character is lower
															then
																	#echo "$char is lower character"
																	((lower++))
															else
																#echo "$char is Special symbol" # else it is special character
																((special++)) 
															fi
														done
														
														#check condition special character is exactly one
														if [[ 1 -eq $special ]]
                                    					then
                                        					
															echo "Rule 4 Passed"
															
                                    					else
                                        					echo "Rule 4 failed"
                                    					fi
															
                                    					else
                                        					echo "Rule 3 failed"
                                    					fi
															
                                    					else
                                        					echo "Rule 2 failed"
                                    					fi

									
								  else	
									echo "Rule 1 failed"
									fi
							else
							   echo "Invalid number"
							fi
						  
				else
						echo "In-valid Email"
				fi
			  
		else
		   echo "Invalid Last Name"
		fi

		
else
	echo "Invalid First name"
fi

#UC9

read -p "Enter a email:" email;
				regex="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-zA-Z]+.[a-z]{2,4}([.][a-z]{2}$)"
				regex1="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-z0-9]+.[a-z]{2,4}$"
				regex2="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}([.][a-z]{2}$)"
				regex4="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}$"
				if [[ $email =~ $regex ]] || [[ $email =~ $regex1 ]] || [[ $email =~ $regex2 ]] || [[ $email =~ $regex4 ]]
				then
					echo "valid email"
				else
					echo "Invalid email"
				fi
