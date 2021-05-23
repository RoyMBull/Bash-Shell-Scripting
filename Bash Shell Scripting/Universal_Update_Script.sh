
#How to make a script to auto update packages in the Linux Distro
#Chaining the changing of directories in the script
#Ex, the syntax for selecting a directory is "first directory choice, the "/" and after every slash, a follow up if needed
#EX2 cd Desktop/Bash_Folder/here, etc etc

cd /etc 
#Test if the local host is Arch-Based
if [-d /etc/pacman.d]
then 
		#Run the Arch Version of the update command
		sudo pacman -Syu
fi 

if [-d /etc/apt]
then

	#Run the Arch Version of the update command
	sudo apt-get update && sudo apt-get dist-upgrade -y #the -y is most effecient when trying to update many machines at once
	
