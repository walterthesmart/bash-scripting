#!/bin/bash

# This script will give you the information of a file


if [ $# -eq 0 ]
then
	echo "Usage: $0 [File]"
fi


OWNER=`ls -la $1 | awk '{print $3}'`

echo "Owner: $OWNER"

SIZE=`ls -la $1 | awk '{print $5}'`

echo "Size: $SIZE"

MONTH=`ls -la $1 | awk '{print $6 " " $7}'`
echo "This file was created on $MONTH"


echo 
