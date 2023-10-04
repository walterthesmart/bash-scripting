#!/bin/bash

# This script can only be run by root

if [ $UID -eq 0 ]
then
	echo "You have access to this file system"
else
	echo "Must be roo to access file system...."
fi
