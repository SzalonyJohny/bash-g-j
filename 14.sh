
for ARG in $*; do
	current_size=0
	sizes=$(ls -l *.$ARG | awk '{print $5}')
	for size in $sizes; do
		let current_size=$current_size+$size
	done
	echo "${ARG}: $current_size"
done
