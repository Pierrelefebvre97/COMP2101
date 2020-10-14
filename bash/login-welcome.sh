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
title="Overlord"
myname=$USER
hostname=$(hostname)


# date and time#

day=$(date +%A)

time=$(date +"%I:%M:%S %p")


if [ $day == "Monday" ]
then
  title="Monday left me broken"

elif [ $day == "Tuesday" ]
then
  title="Tuesday I was through with hopin"

elif [ $day == "Wednesday" ]
then
  title="Wednesday my empty arms were open"

elif [ $day == "Thursday" ]
then
  title="Thursday waithing for love, waiting for love"

elif [ $day == "Friday" ]
then
  title="Thank the stars its Friday"

elif [ $day == "Saturday" ]
then
  title="I'm burning down like a fire gone wild on Saturday"

else
  title="Guess I wont be coming to church on Sunday"

fi

# titles came from avicii song "Waiting for love" #





###############
# Main        #
###############


output="Welcome to planet $hostname $title $myname, It is $day at $time"

cowsay $output
