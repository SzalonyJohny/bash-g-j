diffs=$(diff $1 $2)
if [ -z "$diffs" ]; then
	echo "[+] Pliki sa jednakowe"
else
	if [ $(wc -l $1 | cut -d " " -f 1) -gt $(wc -l $1 | cut -d " " -f 1) ]; then
		echo "[-] $1 ma wiecej linii niz $2"
	else
		echo "[-] $2 ma wiecej linii niz $1"
	fi
fi
			
