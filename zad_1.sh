#! /bin/bash

for FILE in $1/*.txt
do
 args1=$(date -r $FILE +%s)
 today=$(date -d 'today' +%s)
 
 d=7
 
 args1=$(expr $args1 / 86400)
 today=$(expr $today / 86400)
 
 dif=$(expr $today - $args1)
 

    
 if [ $dif -lt 7 ]
 then
  chmod +x $FILE
 fi
done
