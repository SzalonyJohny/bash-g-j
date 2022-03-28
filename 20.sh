
rm id.txt 2>/dev/null	# wyjebanie starej wersji w razie czego
for i in {1..10}; do
	uuid >> id.txt
	echo $i
done
