if [ $# -ne 3 ]
then
	echo "Potrebno je predati tacno tri argumenta"
	exit 1
fi

if ! [ -d "$1" ]
then
	echo "Prvi argument mora biti direktorijum"
	exit 2
fi

if ! > "$3"
then
	echo "Nije moguce kreirati fajl $3"
	exit 3
fi

for f in "$1"/*."$2"
do 
	cat $f >> $3
	rm $f
done

