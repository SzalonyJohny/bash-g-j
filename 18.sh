while true; do
	echo "[+] PID: "
	read PID
	if [ "$PID" = "EXIT" ]; then
		break
	fi
	echo "[+] SIG: "
	read SIG
	kill -s $SIG $PID
done
