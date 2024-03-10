#!/bin/sh

echo "hello world" > test.txt    #This is going to print hello world and then output it to a file 
zip  test.zip test.txt    #This is going to create a secure zip folder 
rm test.txt    #Removes the text file
file test.zip    #This is going to tell us the type of file
cat test.zip    #This is going to print out the contents of the file so we can see the binary 
base64 test.zip > steg.txt     #Converts to base64 and then pipes output into a file
file steg.txt     #This is going to show us that the file structure HAS CHANGED 
cat steg.txt     #This is going to print out the main contents of the file	
rm test.zip    #We are going to remove the zip folder now
	
#REVERSAL PROCESS
base64 -d steg.txt > steg.zip    #This is going to decode and convert the file back to zip.
unzip steg.zip 
