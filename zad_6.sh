#! /bin/bash

for FILE in *.txt
do
 base=($(grep $FILE raport.txt | tail -c 33))
 md5=($(md5sum $FILE))
 
 if [[ $base == $md5 ]]
 then
  echo tak
 else
  echo nie
 fi
done
