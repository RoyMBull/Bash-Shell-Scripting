

#Passcode in Bash
#Forloop Knowledge required

function Passcode
{
	echo Please enter the 3 passcodes to proceed
	
	for i in {0..5}; do
	echo Please enter the four digit passcode
	read Pass1
	if [ $Pass1 = 4567 ]; then
		echo CORRECT!!
		break
	else
		echo INCORRECT!!
	fi
	
	if [ $i = 5 ]; then
		exit 
	fi
	done
	
	
	
	for x in {0..5}; do
	echo Please enter Password of strings
	read Pass2
	if [ $Pass2 = "Earth" ]; then
		echo CORRECT!!
		break
	else
		echo INCORRECT!!
	fi
	
	if [ $x = 5 ]; then
		exit 
	fi
	done
	
	
	
	
	for l in {0..5}; do
	echo Please enter the five digit passcodes
	read Pass3
	if [ $Pass3 = 91923 ]; then
		echo CORRECT!! ALL PASSCODES CLEARED
		break
	else
		echo INCORRECT!!
	fi
	
	if [ $l = 5 ]; then
		exit 
	fi
	done
	

read -p "Hit Enter to exit ^___^ "

}

Passcode
