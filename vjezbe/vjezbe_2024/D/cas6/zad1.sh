if [ $# -ne 1 ] ## -ne !=
then
	echo "Potrebno je predati tacno jedan argument"
fi


if [ $1 -eq 5 ] ## -eq ==
then
	echo "Unesena vrijednost je 5"
elif [ $1 -eq 6 ]
then
	echo "Unesena vrijednost je 6"
else
	echo "Unesena vrijednost nije 5 i nije 6"
fi
