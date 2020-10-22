#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#title="Overlord"
#myname="dennis"
#hostname="myhostname"

###############
# Main        #
###############
#cat <<EOF

#Welcome to planet $hostname, "$title $myname!"

#EOF


#Zachs code starts here.

#created variables
mName=$USER
hName=$(hostname)


tDay=$(date +"%A")
echo "$tDay"
cTime=$(date +"%r")


if [ $tDay = "Monday" ] ; then
  dTitle="Going Crazy"
elif [ $tDay = "Tuesday" ]; then
  dTitle="Laughing Madly"
elif [ $tDay = "Wednesday" ]; then
  dTitle="Wondering Why"
elif [ $tDay = "Thursday" ]; then
  dTitle="Looking Foward"
elif [ $tDay = "Friday" ]; then
  dTitle="Game Night"
elif [ $tDay = "Saturday" ]; then
  dTitle="Being Slient"
elif [ $tDay = "Sunday" ]; then
  dTitle="Is Sleepy"
fi

#below I mad some small changes to the output but everything is still there
cat <<EOF

Welcome to $hName, where $mName's $dTitle.

Today is $tDay, and it's $cTime.



EOF
