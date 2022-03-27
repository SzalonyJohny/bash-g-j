#! /bin/bash

i=1

for arg in $*
do

 tail -n $i $arg | head -n 1
 i=$(expr $i + 1)

done
