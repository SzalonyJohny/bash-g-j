#!/bin/bash
unset -v latest
today=$(date -d 'today' +%s)
while [ 1 == 1 ]
do
for FILE in ./*
do
 args1=$(date -r $FILE +%s)
 
 
 dif=$(expr $today - $args1)
 
 [[ $FILE -nt $latest ]] && latest=$FILE

 
 
 
 if [ $dif -lt 0 ]
 then
  echo $FILE | cut -c 3-
  break
 fi
 
 
done
 if [ $dif -lt 0 ]
 then
  break
 fi
echo $latest | cut -c 3-
sleep 2
done
