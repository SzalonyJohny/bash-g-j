# z jakiegos powodu przy odpalaniu tego skryptu normalnie czyli
# ./10.sh
# komenda let nie byla znajdowana dlatego polecam uruchamiac ten skrypt
# i w sumie wszystkie inne tak:
# bash 10.sh arg1 arg2 ... argn

sum=0
for ARG in $*; do
	let sum=sum+$(wc -m $ARG | cut -d " " -f 1)
done
echo $sum
