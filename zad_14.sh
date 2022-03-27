#! /bin/bash


for arg in $*
do
sum=0
 for FILE in *.$arg
 do
  if [ -e $FILE ]
  then
   el=$(stat -c%s $FILE)
   sum=$(expr $el + $sum)
  fi
 done
 echo $arg: $sum
done
