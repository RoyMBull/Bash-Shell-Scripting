
#The goal of this program is to write an automated service teller made up of
#functions needed to: take user identity, check it by reading it back to them; and if correct will output it to a file
#and if wrong, will simply exit the script, or if I know how to do so in bash, set it up with a conditional that will re-init the program

 
 #How to tally or add to like string and num values in bash 
 #This is a vafiable that manipulates variables. The variable is equal to the 
 #Manipulation of variables
 #Total=$(($Num1+$Num2))
 
 
#Overwritable Global Variables
Sex="Overwrite"
Social="Overwrite"
Address="Overwrite"
TelephoneNum="Overwrite"
Email="Overwrite"


#Takes User info
function Take_User_Info
{
	echo "Hi, I'm Cortana, I'll be the AI assisting you today..."
	echo "Sex? Enter 'M/F' "
	read Sex
	#Now here we set up conditionals that will split the route of the code
	if [ $Sex = "M" ]; then 
		echo Hello Mr.$Sex
		echo Social Please
		read Social
		echo The address you are calling for?
		read Address
		echo May I have the telephone number you are calling for?
		read TelephoneNum
		echo And a dedicated Email?
		read Email
		echo Thank Mr.$Sex, your information is being processed now!!!!
		echo I will now check that information for you, please wait.....
		sleep 1.5
		echo ....cheching NOW!!!
		
	
		Check_User_Info
	fi
	
	if [ $Sex ="F" ]; then
		echo Hello Mrs.$Sex
		echo Social Please
		read Social
		echo The address you are calling for?
		read Address
		echo May I have the telephone number you are calling for?
		read TelephoneNum
		echo And a dedicated Email?
		read Email
		echo Thank Mrs.$Sex, your information is being processed now!!!!
		echo I will now check that information for you, please wait.....
		sleep 1.5
		echo ....cheching NOW!!!
		
		Check_User_Info
	fi
}



#Checks User's info
function Check_User_Info
{
#This time I will read all the information and give the 
#user the option to go back and overwrite the code

echo Checking all information now
echo $Sex
echo $Social
echo $Address
echo $Email
 

echo Is all the informaiton outputted correct? Y/N
read Decision

if [ $Decision = "Y" ]; then
	DONE
fi

if [ $Decision = "N" ]; then
	Edits
fi

}



#Allows User edits if desired
function Edits
{

RUNIF=0


while [ RUNIF != 1 ]
do
	clear 
	echo Please select from the following options
	echo "1 = Change Sex"
	echo "2 = Change Social"
	echo "3 = Change Address"
	echo "4 = Change Email"
	echo Change what?
	read edits
	
	if [ $edits = 1 ]; then
		echo "What is your Sex?"
		read Sex
		
		echo Done making edits? Y/N
		read Finished
		
		if [ $Finished = "Y" ]; then
			break

		fi
		
		if [ $Finished = "N" ]; then
			echo continuing edits
		fi
	fi
	
	if [ $edits = 2 ]; then
		echo "What is your Social?"
		read Social
		
		echo Done making edits? Y/N
		read Finished
		
		if [ $Finished = "Y" ]; then
			
			break 
		fi
		
		if [ $Finished = "N" ]; then
			echo continuing edits
		fi
		
		
	fi
	
	if [ $edits = 3 ]; then
		echo "What is your Address?"
		read Address
		
		echo Done making edits? Y/N
		read Finished
		
		if [ $Finished = "Y" ]; then
			break
		fi
		
		if [ $Finished = "N" ]; then
			echo continuing edits
		fi
		
		
	fi
	
	if [ $edits = 4 ]; then
		echo "What is your Email?"
		read Email
		
		echo Done making edits? Y/N
		read Finished
		
		if [ $Finished = "Y" ]; then
			break
		fi
		
		if [ $Finished = "N" ]; then
			echo continuing edits
		fi
		
		
	fi
done 
	
DONE
}
	
#Program ends here
function DONE 
{
	echo ....UpDaTiNg InFoRmAtIoN.....
	sleep 2
	
	echo $Sex
	echo $Social
	echo $Address
	echo $Email
	
	echo SET_UP_COMPLETE ^__^
	read -p "Hit Enter to exit"

}


Take_User_Info


