#!/bin/bash

# IF-else | file conditions

# FILE=name.txt

# -e to see if the file exists

if [ -e $1 ]
then
	echo "$1 is present in the current directory"
else
	echo "$1 is not present in the current directory"
fi
