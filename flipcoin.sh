#!/bin/bash -x

r=$((RANDOM % 2))
echo "enter 1 for head and 0 for tails"
read choice
 
if [ $r -eq 1 ]
then 
	 echo heads
else 
	echo tails
fi

if [ $r -eq $choice ]
then 
	echo "user won"
else
	echo "user lost"
fi
