
#This function will simply make a directoy based on password input 

#NEW COMMAND: start "This command will start up executable items
#What the code will emphasize on: Conditional interaction with the user 
#The goal for this project is to write a protected folder in bash without software
#That will soley rely on conditional actions from how the user interacts

#How should the program run.
#-> Makes a directory when the program runs
#-> Encrypts the created folder with a pre-default password
#-> Give the user the option to change the default password  via command
#-> Give the user the option to move the folder via terminal
#->Give the user the option to remove the folder via terminal

#How many functions will the code contain?
#-> one that will make the directory
#-> one that will give the user the option of changing the default password
#->

#The code will store the dire
#The first function sets the directory to the root, and then shifts to the Desktop,
#where it will then make a new directory
#There will be a pre-defined passcode var that holds in the program

defaultpss="default"
Input="Overwrite"

RUNINIT=0


function Init_Echo
{
	echo "echo echo echo,,,..... ^_)^" Making folder now
	read -p "hit"


}


function User_Init
{
	while [ $RUNINIT != 1 ]
	do 	clear 
		
		echo Password?
		read Input
	
		if [ $Input = $defaultpss ]; then
		break
			
		
		fi
		
		if [ $Input != $defaultpss ]; then
		echo " ^_^ try again"
		read -p "Hit enter"
		
		fi
		
		
		
	done
	#This function will only be called when the loop successfully breaks, approving
	#Authentication
	Make_Directory
}

#This f
function Make_Directory
{

cd ~ && cd Documents
mkdir Test

echo Do as you wish ^__^


}

#I need to set it up so that a function gets called first before calling the making 
# of the file

Init_Echo
User_Init
