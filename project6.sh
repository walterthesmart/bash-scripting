#!/bin/bash

# This script will install packages in our system

RED="\e[31m"
GREEN="\e[32m"
EXIT="\e[0m"
if [ $UID -ne 0 ]
then
	echo "ERROR: Run as root user..........."

	exit 1
fi

# packages that are going to be installed...
PACKAGES=( figlet sl net-tools )
for i in ${PACKAGES[@]}
do
	echo
	echo -e "${RED}[+] Installing $i.......${EXIT}"
	apt install $i -y &>/dev/null
	echo -e "${GREEN}[+] Installation completed.....${EXIT}"
	echo
done
