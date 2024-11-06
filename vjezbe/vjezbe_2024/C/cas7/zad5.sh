if [ $(($# % 2)) -eq 1 ]
then
	echo "Potrebno je predati paran broj argumenata"
	exit 1
fi

while [ $# -ne 0 ]
do 
	if ! [ -f  $1 ]
	then
		echo "Fajel $1 ne postoji"
		exit 2
	fi
	
	if ! cp $1 $2
	then 
		echo "Nije moguce kopirati fajl $1 u fajl $2"
		exit 3
	fi
	
	shift
	shift
done
