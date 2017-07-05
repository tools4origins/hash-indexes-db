declare positions
declare lengths

echo "database values:" > db.log

put () {
	positions[$1]=`stat --printf="%s" db.log`
	lengths[$1]=${#2}
	echo $2 >> db.log
}

get () {
	dd bs=1 skip="${positions[$1]}" count="${lengths[$1]}" if=db.log status=none 2> /dev/null
	echo
}
