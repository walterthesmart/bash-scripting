#!/bin/bash

# case "$variable" in
#	"condition1)
#		command
#	;;
#	"condition2")
#		command
#	;;
#esac


# i am going to take the user input and if the user is root then only he has access to it.



echo "Enter your name :"
read NAME

case $NAME in
	"root")
		echo "You have access to this folder"
	;;
	"walter")
		echo "You might need to get root permission to this folder"
	;;
	* )
		echo "You don't have access to this folder"
	;;
esac
