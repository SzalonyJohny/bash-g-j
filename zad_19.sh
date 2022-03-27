#! /bin/bash

for dir in ./*/  
do
    ndir=${dir^^}
    mv $dir $ndir
done
