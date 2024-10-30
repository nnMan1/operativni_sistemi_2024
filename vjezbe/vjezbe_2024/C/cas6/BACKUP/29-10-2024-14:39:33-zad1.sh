#Obrisati fajl koji se predaje kao argment programa.
#Obraiti moguce izuzetke

if ! [ $# -eq 1 ] # da li je $# razlicito 1
then
	echo "Potrebno je da predate tacno jedan argument"
	exit 1
fi

if ! [ -f $1 ] #provjerava da li je $1 putanja do foldera
then 
	echo "Potrebno je predati putanju do fajla"
	exit 1
fi

if rm $1
then 
	echo "Fajl $1 je uspjesno obrisan"
else
	echo "Fajl $1 nije uspjesno obrisan"
fi
