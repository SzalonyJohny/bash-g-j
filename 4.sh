# troche beka bo na tych maszynach co sa w sali od scr to polecenie ifconfig nie jest zainstalowane
# takze w razie co gdyby trzeba bylo to zeby zainstalowac:
# sudo apt-get install net-tools

# ppkt 1
ifconfig | grep "RX packets" | sort | tail -n 1 | cut -b 9-25

# ppkt 2
ifconfig | grep ether | cut -b 15-32
