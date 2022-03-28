# w oryginale pliku trees.txt chyba sie jebneli bo jeden dab ma wysokosc 70:
# 1,chronione,70,10.3,dab
# stwierdzilem ze to blad i zmienilem na 7.0
# ogolnie nie czaje w chuj tego ich polecenia i mam wrazenie ze nie oto im chodzilo
# bo 2 najwieksze wysokosci to 11.0 i 11.1 a oni dali 11.0 i 10.8 no ale chuj

heights=$(cat trees.txt | tail -n +2 | grep chronione | cut -d "," -f 3 | sort -n -r | uniq | head -n 2)
for x in $heights; do
	echo $x >> output.txt
done
