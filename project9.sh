#!/bin/bash

# This script will gather information from employees and store ir into a csv file

read -p "[+]Enter your name:" NAME
read -p "[+]Enter your employee ID:" ID
read -p "[+]Enter your department:" DEPARTMENT
read -p "[+]Enter your gender:" GENDER

read -p "[+]Do you have the correct information[y/n]:" INPUT
INFO=$NAME,$ID,$DEPARTMENT,$GENDER



echo $NAME
case "$INPUT" in
	n | N )
	exit
	;;
	Y | y )
	echo $INFO >> employee_data.csv
	;;
	* )
	exit
	;;

esac

echo "You data has been stored successfully"
