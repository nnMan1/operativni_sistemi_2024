tmp=$(($# % 2))

if [ $tmp -eq 1 ]
then
	echo "Potrebo je da predate paran boj argumenata"
	exit 1
fi

while [ $# -ne 0 ]
do
	if ! [ -f "$1" ]
	then
		echo "Fajl $1 ne postoji"
		exit 2
	fi
	
	if ! cp "$1" "$2"
	then
		echo "Neuspjesno kopiranje fajla $1 u fajl $2"
		exit 3
	fi
	
	shift
	shift
done
