#!/bin/bash
i=1
while [ $i -le 9 ]
do
	j=1
	while [ $j -le $i ]
	do
		z=$(($i*$j))
		if [ $j = 2 -a $i = 3 -o $j = 2 -a $i = 4 ]
		then
			echo -n "$j*$i=$z   "
		else
			echo -n "$j*$i=$z  "
		fi
		((j++))
	done
	echo
	((i++))
done
