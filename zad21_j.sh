#!/bin/bash

function fib(){
	n=$1
	if (( n <= 0))
	  then echo 0
	elif (( n == 2))
	  then echo 1
	else
	  echo $(( $(fib $((n -1)) ) + $(fib $((n - 2)) ) ))
	fi
}


echo $(fib $1)



