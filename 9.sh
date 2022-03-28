for ARG in $*; do
	for line in $(cat $ARG); do
		echo "$ARG: $line"
	done
done
