#!/bin/bash -x

#usecase 1

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

#usecase2

read times
for((i=0;i<$times;i++))
do
	r=$((RANDOM % 2)) 
	if [ $r -eq 1 ]
	then
		heads=$(($heads+1))
	else 
		tails=$(($tails+1))
	fi
done
 
if [ $heads -gt $tails ]
then
	echo "heads won $heads"
else
	echo "tails wins $tails"
fi
