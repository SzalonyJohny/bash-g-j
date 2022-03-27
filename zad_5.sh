#! /bin/bash

for FILE in *.txt
do
 md5=($(md5sum $FILE))
 echo $FILE $md5 >> raport.txt


done
