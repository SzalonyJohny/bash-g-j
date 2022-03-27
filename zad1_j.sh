#!/bin/bash

for FILE in *.sh
do
	NOW=$(date +%s) 
	TIME=$(date -r $FILE "+%s")
	DIFF=$(((NOW-TIME)/24/60/60))
	#echo $FILE
	#echo $DIFF
	if ((DIFF < 7))
	then
		#echo "Mlodszy niz 7 dni"
		chmod +x $FILE		
	fi 
done
