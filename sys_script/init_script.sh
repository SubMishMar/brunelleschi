#!/bin/bash  

source ~/.bashrc

TIMER=2
#Launching function
launching()
{
 echo "Checking if $1 is running..."
 COUNT=$(ps aux | grep $1 | wc -l)
 if ((COUNT==1)); then
   echo "$1 is not running.. launching $1"
   $1 >> /dev/null &
   echo "$1 launched ... sleeping for $TIMER seconds"
   sleep $TIMER
 elif ((COUNT==2)); then
   echo "$1 is already running..."
 else
   echo "Something is wrong with $1.."
 fi
}

#list of programs
PROGRAMS='roscore genomixd optitrack-ros'

#invoking function
for PROGRAM in $PROGRAMS
do 
    launching $PROGRAM
done
## optitrack-ros
## pom-ros
## iiwa-ros
## mikrokoper-ros
## ....


