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

#usecase3

heads=0
tails=0

while [ $heads -le 21 ] && [ $tails -le 21 ]
do
	i=0
	$i=$((i+1))
	for((i=0;i<100;i++))
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
done
echo "number of rounds $i"

#usecase 4

head=0
tail=0
while [ $head -lt 21 ] && [ $tail -lt 21 ]
do
        r=$((RANDOM % 2))
        if [ $r -eq 1 ]
        then
                head=$(($head + 1))
        else
                tail=$(($tail + 1))
        fi
done

if [ $head -eq $tail ]
then
	while true
	do
		rs=$((RANDOM % 2))
		if [ $rs -eq 1 ]
		then
			head=$(($head + 1))
		else
			tail=$(($tail + 1))
		fi

		if [ $(($head - $tail)) -eq 2 ]
		then
			echo "Head win by 2 and count is $head"
		else
			if [ $(($tail - $head)) -eq 2 ]
			then
				echo "Tail win by 2 and count is $tail"
			fi
		fi
	done
elif [ $head -gt $tail ]
	then
       		win=$(($head - $tail))
		echo "Tail wins by $win"
	else
       		win=$(($tail - $head))
       		echo "Tail wins by $win"
fi
