#!/bin/bash -x
shopt -s extglob

pat1=^[[:upper:]][[:lower:]]*$ 
read -p "Enter First Name : " firstname

if [[ $firstname =~ $pat1 ]]
then
		
		pat2=^[[:upper:]][[:lower:]]*$ 
		read -p "Enter Last Name : " lastname
		if [[ $lastname =~ $pat2 ]]
		then
			    read -p "Enter a email:" email;
				regex="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-zA-Z]+.[a-z]{2,4}([.][a-z]{2}$)"
				regex1="^[a-z0-9]+([._+-][0-9a-z]+)@+[a-z0-9]+.[a-z]{2,4}$"
				regex2="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}([.][a-z]{2}$)"
				regex4="(^[a-z0-9]+)@+[a-z0-9]+.[a-z]{2,4}$"
				if [[ $email =~ $regex ]] || [[ $email =~ $regex1 ]] || [[ $email =~ $regex2 ]] || [[ $email =~ $regex4 ]]
				then
						  
						    pat4="^[[:digit:]]{2}[ ]{1}[[:digit:]]{10}$"
							read -p "Enter Mobile Number: " mob
							if [[ $mob =~ $pat4 ]]
							then
								  pat5="[a-zA-Z0-9.*@#]{8}"
								  read -p "Enter Password: " pass
								  if [[ $pass =~ $pat5 ]]
								  then	
									
									pat6="[[:upper:]]{1}"
                                    					if [[ $pass =~ $pat6 ]]
                                    					then
                                        					pat7="[[:digit:]]{1}"
                                    					if [[ $pass =~ $pat7 ]]
                                    					then
                                        					
														pat8=[@#.*]{1}
                                    					if [[ $pass =~ $pat8 ]]
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

