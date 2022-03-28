# $# printuje liczbe przekazanych argumentow


ARGNO=$#
while [ $(($ARGNO/2)) -gt 0 ]; do
	file=$1
	shift
	props=$1
	chmod $props $file
	shift
	let ARGNO=$ARGNO-2
done

