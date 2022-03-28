for file in $(ls *.$2); do
	echo "$1" >> $file
done
