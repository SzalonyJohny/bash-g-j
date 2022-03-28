if ! [ -e pictures_backup ]; then
	mkdir pictures_backup
fi

for file in $(ls *.jpg); do
	cp $file pictures_backup/$file
	chmod 444 pictures_backup/$file
done
