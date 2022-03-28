# jeblem ta wersje rozszerzona co tam chcieli bo moge

ARGNO=$#
current_line=1

while [ $ARGNO -gt 0 ]; do
	if [ $(wc -l $1 | cut -d " " -f 1) -lt $current_line ]; then
		echo "[-] File $1 too short"
	else
		tail -n -$current_line $1 | head -n 1
	fi
	let current_line=$current_line+1
	let ARGNO=$ARGNO-1
	shift
done
	
