#!/bin/bash
#
#Purose:To display system stats
#Author:aditi


echo "********************************SHELL SCRIPTING***************************"
echo "Please enter your name:-"
sleep 2
read name
echo "Hi $name Ready to see system stats"
echo "#########################################################################"
echo "*&*&*&*&*&*&*&*&*&*&*&*&*&*&*CURRENT DATE AND TIME*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&"

date | awk '{print "Today is: " $3 "st - " $2 " ; Day= " $1 " ; Time=" $4 }'

echo "*&*&*&*&*&*&*&*&*&*&*&*&*&*&*DISK SPACE AVAILABLE*&*&*&*&*&*&*&*&*&*&*&*&**&*&*&*&"
df -H | xargs | awk '{print "Disk Space Available: " "Free/Used: " $10 "/" $9 " :GB" }'

echo "*&*&*&*&*&*&*&*&*&*&*&*&*&*&* USER UPTIME *&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&"
uptime

echo "*&*&*&*&*&*&*&*&*&*&*&*&*&*&* LAST 3 LOGIN DETAILS *&*&*&*&*&*&*&*&*&*&*&*&*&*&*&"
last | head -3

echo "*&*&*&*&*&*&*&*&*&*&*&*&*CURRENTLY CONNECTED*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*&*"
w

