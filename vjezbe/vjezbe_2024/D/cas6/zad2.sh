# Napisati skriptu koja uzima jedan argument koji predstavlja putanju do fajla 
# potrebno je obrisati predati fajl. Ako brisanje nije moguce stampati gresku
# "Brisanje nije moguce"

if [ $# -ne 1 ]
then
	echo "potrebno je predati tacno jedan argument"
	exit 1
fi

if ! [ -f $1 ] #Da li je predati argument putanja do fajla
then 
	echo "Predati argument treba da bude putanja do fajla"
	exit 1
fi

if rm $1
then 
	echo "Fajl $1 je uspjesno obrisan"
else
	echo "Brisanje nije uspjelo"
fi

