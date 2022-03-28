# to po grep w 5 linii to jest regex

top3=$(cat $1 | tail -n +2 | awk '{print $4}' | sort -n | tail -n 3) 
result=""
for x in $top3; do
	result="$(grep " ${x}$" $1 | awk '{print $1}') \n$result"
done
echo "$result" | sort
