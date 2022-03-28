# nazwe pierwszego folderu trzeba pierdalnac jako argument
# to co oni napisali ze zeby zrobic wielkie litery w zmiennej
# ${zmienna^^}
# to chuja dziala wiec zrobilem inaczej
# kurwa ile sie jebalem z tym

for dir in $(ls -l $1 | grep "d[r|-]" | cut -d " " -f 9); do
	new=$(echo $dir | tr a-z A-Z)	# zapisanie nazwy folderu wielkimi znakami
	mv $1/$dir $1/$new		# zmiana nazwy tego folderu ze starej na nowa
	if ls $1/$new>/dev/null; then 	# jezeli w tym folderze cos jest to skrypt sie w nim odpala
		bash $0 $1/$new
	fi
done					# i tak w kolko dopoki petla w linii 7 nie bedzie pusta


