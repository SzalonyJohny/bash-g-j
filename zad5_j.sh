#!/bin/bash

for file in *.txt
do 
	sum=($(md5sum tekst.txt | awk '{print $1;}'))
	echo $file $sum >> raport.txt
done
