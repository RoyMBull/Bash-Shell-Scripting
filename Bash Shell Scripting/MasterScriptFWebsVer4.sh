#Demo Version for showcase purposes
main()
{
	
	clear
	
	read -p "Are online? Connect first then hit enter!" p
	
	clear
	

  while true  
  do 

  	echo "WELCOME TO THE DEMO VERISON OF THE SCRIPT! What would you like to install?"
  	echo ""
  	
  	echo "0 -> Exit"
  	echo "1 -> Basic Install"
  	echo "2 -> Tor Browser Install (YOU NEED TO BE NON-ROOT TO RUN THIS OPTION. EXIT THE PROGRAM AND RUN IT THAT WAY)"
  	echo "3 -> VSCode Install"
  	echo "4 -> Telegram Install"
  	echo "5 -> WordPress CTF Install"
  	echo "6 -> Bettercap and Aircrack-ng Driver Installs"

  
  	echo "Enter in your Selection now"
  	echo ""
  	
  	read -p "" Selection
  
  	
	
####################################### OPTION 0 Exit
	if [ $Selection = "0" ]; then 
	
		echo "Exiting the program now"
		exit
		
		


####################################### OPTION 1 Basic Install
	elif [ $Selection = "1" ]; then 
	
		clear
		
		apt-get update -y 
		
		clear
		
		while true
		do 
			echo "Would you like to upgrade the system Y/n?"
			echo "" 
			
			read -p "" Upgrade
			
			if [ $Upgrade = "Y" ] || [ $Upgrade = "y" ]; then 
			
				apt-get upgrade -y 
				break
			
			elif [ $Upgrade = "N" ] || [ $Upgrade = "n" ]; then 
				
				clear
				
				break
			
			fi
		
		done
		
		
		apt-get install httrack -y
		apt-get install gobuster -y
		apt-get install gdb-minimal -y 
		apt-get install bc -y
		apt-get install bluetooth -y
		apt-get install dkms -y
		apt-get install bettercap -y
		apt-get install bluesnarfer -y
		apt-get install blueranger -y
		apt-get install btscanner -y
		apt-get install emailharvester -y 
		apt-get install sendmail -y
		apt --fix-broken install -y
		apt-get install default-jre -y 
		apt-get install openjdk-17-jdk -y
		
		mkdir -p /dev/bluetooth/rfcomm
		mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
		mknod --mode=666 /dev/rfcomm0 c 216 0 
		service bluetooth start
		
		
		apt-get install tor -y
		
		clear
		
		while true
		do 
			
			echo "Would you like to run the tor proxy? Y/n?"
			echo "" 
			
			read -p "" torproxy
			
			if [ $torproxy = "Y" ] || [ $torproxy = "y" ]; then 
			
				echo "READ THESE INSTRUCTIONS VERY CAREFULLY IF YOU WISH TO RUN TOR PROXY CHAINS"
				echo ""
			
				echo "Open another terminal session via ctrl+shift+n"
				echo ""
		
				echo "While you're in the other shell run the following command -> nano /etc/proxychains4.conf"
				echo ""
		
				echo "While the fiile is open, scroll down until you find a row a text with (dynamic_chain), and remove the # sign next to it to remove the comment"
				echo ""
		
				echo "Now look for the (static_chain) line of text and add a # symbol next to it to comment it out"
				echo ""
						
				echo "Now scroll down to the very end of the file where a line says (socks4) On the line bellow it add another called (socks5 127.0.0.1 9050) to configure tor"
				echo ""
		
				echo "Hit Ctrl+O, then hit enter, then hit Ctrl-X to close the file"
				echo ""
				
				echo "After Tor Service is setup, Run the command (proxychains) along with any network servie: browser, nmap, etc, and it will route through tor service"
				echo "EX ->: proxychains nmap -A google.com" 
				echo "EX2 ->: proxychains firefox dnsleaktest.com (This site is extremely good to see if tor services is changing your IP address)"
				echo "" 
				
				echo "Hit enter when you've done all this, and the tor service will execute"
				echo ""
				
				read -p "" p
				service tor start 
				
				break
			
			elif [ $torproxy = "N" ] || [ $torproxy = "n" ]; then 
			
				break
			
			fi
		
		done
		
		clear
		
		echo "All basic installations are complete ^_^ Hit Enter"
		
		read -p "" p

	
	
	
	
####################################### OPTION 2 Tor Browser Inatall 
	elif [ $Selection = "2" ]; then 
	
		clear 
		
		echo "YOU NEED TO RUN THIS AS NON-ROOT USER ONLY! IF YOU ARE ROOT, HIT CTRL+SHIFT+N to spawn a new shell."
		echo "Once the new shell is open, move to /Desktop and then run the program again the same way with ./filename"
		echo "If you are NOT ROOT, then please enter 0 in order to continue the install, exit if you simply wish to exit the program"
		echo "Any other option will simply return you to the main menu"
		echo "Please enter your selection now" 
		echo ""
		read -p "" AreYouRoot
		
		#The program needs to pipe the username into a variable to double check if the end user is running the program as a non-root user
		if [ $AreYouRoot = "0" ]; then 
		
			cd /home/kali/Downloads
			wget https://www.torproject.org/dist/torbrowser/12.0.4/tor-browser-linux64-12.0.4_ALL.tar.xz --no-check-certificate 
			xz -df tor*
			tar -xvf tor*
			mv tor-browser /home/kali/Documents
			cd /home/kali/Documents
			cd tor-browser
			./start-tor-browser.desktop --register-app
			
			read -p "Tor is now registered as an applicaion on the system. Hit Enter to proceed ^_^"
			clear	
			
		
		elif [ $AreYouRoot = "exit" ]; then 
		
			exit
		
		else
			main
		
		fi
	

	
####################################### OPTION 3 VSCode Install 
	elif [ $Selection = "3" ]; then 
	
		clear 
		
		echo "Hover over to this link here to download it -> https://code.visualstudio.com/docs/?dv=linux64_deb"
		echo ""
		
		echo "Hit enter once you've done so and it's downloaded ^_^"
		echo ""
		
		read -p "" p
		
		
		cd /home/kali/Downloads
		dpkg -i code*
	
		echo "VsCode is now a destkop executable that can be searched from the start menu."
		echo "To run it in the terminal run it as NON-ROOT user, and enter -> code "
		
	
####################################### OPTION 4 Telegram Install 
	elif [ $Selection = "4" ]; then 
	
		clear 
		
		echo "Hover over to this link here to download it -> https://telegram.org/dl/desktop/linux"
		echo ""
				
		echo "If you want to continue the script after telegram executes simply close Telegram manually. The script will pick up where it left off from"
		echo "Hit enter when you have read this and it's downloaded ^_^"
		
		read -p "" p
		
		cd /home/kali/Downloads
		xz -df tsetup*
		tar -xvf tsetup*
		cd Telegram
		chmod +rwx Telegram
		./Telegram --register-app
		echo "Telegram is now a destkop executable that can be searched from the start menu"	
	
	
	
	
####################################### OPTION 5 WordPress Install
	elif [ $Selection = "5" ]; then 
	
		clear
		
		cd /home/kali/Downloads && wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.25/xampp-linux-x64-8.0.25-0-installer.run --no-check-certificate 
		git clone https://github.com/FutabaWebs/WordPressCTF
		chmod +rwx xampp*
		echo ""

		read -p "Files installed.... Hit enter"  p
		clear
		
		echo "Running xammpp now. Close the application when finished to proceed"

		./xampp*

		cd /home/kali/Downloads/WordPressCTF && unzip cybersec && mv cybersec /opt/lampp/htdocs
		cd /opt/lampp && ./xampp start 

		echo ""
		echo "Server initialized...."
		echo ""

		echo "Run over to this link here -> http://localhost/phpmyadmin"
		echo "Watch this video along side it -> https://drive.google.com/file/d/1MQ0fZJhaG-UgrqkICkYWKDDAx5UeZb3y/view?usp=share_link"
		echo ""

		read -p "Hit enter once you've set all this up" p
		clear

		echo "Run over to the main server site -> http://localhost/cybersec/"
		read -p "INsTaLl CoMpLeTe ^_^ HIt enter to close the program!" p



	
	
	
####################################### OPTION 6 Bettecap and Aircrack-ng Driver Installs 
	
	elif [ $Selection = "6" ]; then 
	
		clear 
		
		cd /home/kali/Downloads
		
		apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev -y
		git clone https://github.com/bettercap/bettercap.git
		cd bettercap
		make build
		sudo make install
		cd ..
		git clone https://github.com/bettercap/caplets.git
		cd caplets
		make install
		
		clear
		 
		cd /home/kali/Downloads
		git clone https://github.com/morrownr/8812au-20210629 
		cd /home/kali/Downloads/8812au-20210629
		chmod +rwx dkms.conf dkms-make.sh edit-options.sh Kconfig 8812au.conf install-driver.sh remove-driver.sh 
		
		clear
		
		echo "If the prompts give you the option to hit either y/n responses make sure to ALWAYS HIT NO. Hit Enter if you FULLY understood this"
		read -p "" p
		
		./remove-driver.sh
		./install-driver.sh
	
	
	

fi #This is the end of the main if statement
done #THis is the end of the main while loop statement
}
main 

