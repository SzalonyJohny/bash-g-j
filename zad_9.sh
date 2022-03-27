#! /bin/bash


for arg in $*
do
    cat $arg | while read line
    do
      echo $arg:$line
      echo $line >> test.txt
    done
done
