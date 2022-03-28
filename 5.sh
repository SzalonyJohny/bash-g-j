# pierwsza linia usuwa stary raport.txt bo mi to sie pierdolilo przez to ze ten plik znajdowal
# samego siebie ale to raczej nieistotne

rm raport.txt 2>/dev/null
for FILE in $(ls *.txt); do
	echo "$FILE $(md5sum $FILE | cut -d " " -f 1,2)" >> raport.txt
done
