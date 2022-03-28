#dalem zeby skrypt ignorowal sam plik raport.txt bo on sie nie znajduje w pliku raport.txt xd

for FILE in $(ls *.txt); do
	if [ "$FILE" != "raport.txt" ]; then
		hash_actual="$(md5sum $FILE | cut -d " " -f 1)"
		hash_previous="$(cat raport.txt | grep $FILE | cut -d " " -f 2)"
		if [ $hash_actual = $hash_previous ]; then
			echo "[+] ${FILE}'s hash matches previous version"
		else
			echo "[-] ${FILE}'s hash is different"
		fi
	fi
done
