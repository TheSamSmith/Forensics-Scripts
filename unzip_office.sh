#!/bin/bash
# Open Office files script

read -e -p "Please Enter the File path: " FILEPATH
 
if [ -d "$FILEPATH" ]; then
    echo "PATH EXISTS!"
    cd $FILEPATH
    ls

    read -e -p "Please Enter the File: " FILE

    	read -e -p "Please Enter a Folder Name: " FOLDER

    		if [ -d "$FOLDER" ]; then

    			echo "FOLDER ALREADY EXISTS !"
    			else 

   				mkdir $FOLDER

    			cp $FILE $FOLDER
    			cd $FOLDER
    			jar xvf $FILE
    			rm $FILE

    			echo "Finished!"
    		fi
    		
    else echo "PATH DOES NOT EXIST !"
fi
