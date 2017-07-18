#!/bin/bash  

# source ~/.bashrc


#function
killprocess()
{
 printf "Checking if $1 is running... \n"
 COUNT=$(ps aux | grep $1 | wc -l)
 if ((COUNT==1)); then
   printf "$1 is not running.. \n "
 elif ((COUNT==2)); then
   printf "$1 is running... Killing it \n "
   pkill $1
   sleep 2
   printf "$1 killed \n"
 else
   printf "Something is wrong with $1.. \n "
 fi
printf "\n"
}

#list of programs
PROGRAMS='roscore genomixd optitrack-ros'

#invoking function
for PROGRAM in $PROGRAMS
do 
    killprocess $PROGRAM
done

