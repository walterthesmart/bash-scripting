#!/bin/bash


# Server Utilitization

# Colors

RED="\e[31m"
GREEN="\e[32m"
EXIT="\e[0m"

divider () {
	echo -e "${RED}==========================================${EXIT}"
}





clear

echo -e "                             ${GREEN}************************${EXIT}"
echo -e "                             ${GREEN}***SERVER UTILIZATION**${EXIT}"
echo -e "                             ${GREEN}************************${EXIT}"

divider
echo


echo -e "Today is : `date`"
echo
divider
echo "Uptime: `uptime`"
echo
divider
echo

echo "Currently logged-on users"
w

echo
divider
echo
echo "Last logins"

last -a | head -n 3
divider
echo

echo "Disk and Memory usage"
echo
df -h | xargs | awk '{print "Free/Total: disk:" $11 "/" $9}'
free -m | xargs | awk '{print "Free/Total memory:" $17 "/" $8 MB}'
echo
divider
echo "Utilization and most expensive processes"
echo
top -b | head -n 3
echo

top -b | head -n 10 | tail -n 4
divider
