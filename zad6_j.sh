#!/bin/bash

cat raport.txt | while read line
do 
	file=($(echo $line | awk '{print $1;}'))
	sum_cals=($(md5sum | awk '{print $1;}'))
	sum_file=($( echo $line | awk '{print $2;}'))
	if [[ $sum_cal == $sum_file ]]
	then
		echo gitowa $file
	else
		echo niegitowa $file
	fi
done
