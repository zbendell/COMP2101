#!/bin/bash
#
# This script is for the bash lab on variables, dynamic data, and user input
# Download the script, do the tasks described in the comments
# Test your script, run it on the production server, screenshot that
# Send your script to your github repo, and submit the URL with screenshot on Blackboard

# Get the current hostname using the hostname command and save it in a variable

# Tell the user what the current hostname is in a human friendly way

# Ask for the user's student number using the read command

# Use that to save the desired hostname of pcNNNNNNNNNN in a variable, where NNNNNNNNN is the student number entered by the user

# If that hostname is not already in the /etc/hosts file, change the old hostname in that file to the new name using sed or something similar and
#     tell the user you did that
#e.g. sed -i "s/$oldname/$newname/" /etc/hosts

# If that hostname is not the current hostname, change it using the hostnamectl command and
#     tell the user you changed the current hostname and they should reboot to make sure the new name takes full effect
#e.g. hostnamectl set-hostname $newname

#Zachs Script Starts here

#Captures the output of the hostname command and sets it to hName variable
hName=$(hostname)

#Outputs the  hostname
echo "The hostname is: $hName"

#Asks the user for their student number and stores it as stuNum

read -p 'Please enter in your student number: ' stuNum

#Outputs the desired HostName
echo "The desired hostname is pc$stuNum"
#Sets dHostName to the desired host name
dHostName="pc$stuNum"


if [ $hName != $dHostName ]; then
  sed -i "s/$hName/$dHostName/" /etc/hosts
  hostnamectl set-hostname $dHostName
  echo "The hostname has been changed the the desired hostname: $dHostName"
  echo "Please restart your computer to apply the changes"
elif [ $hName = $dHostName ]; then

  exit

fi
