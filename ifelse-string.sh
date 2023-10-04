#!/bin/bash

# String comparison

STR1="Hello World"
STR2="Hello World"

if [ "$STR1" == "$STR2" ]
then
	echo "The strings are equal"
else
	echo "The strings are not equal"
fi
