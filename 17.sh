for file in $(ls test17); do
	count=$(wc -m test17/$file | cut -d " " -f 1)
	mv test17/$file test17/$count
done
