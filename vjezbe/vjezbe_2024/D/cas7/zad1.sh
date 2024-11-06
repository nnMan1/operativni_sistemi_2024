#Napisati shell skript koji treba da izlista 
#sadrzaj direktorijuma cije se ime zadaje kao argument. 
#Koristiti for petlju. Potrebno je obraditi moguce greske.

if [ $# -ne 1 ]
then
	echo "Potrebno je predati tacno jedan argument"
	exit 1
fi

if ! [ -d "$1" ]
then
	echo "Predati argument treba da bude direktorijum"
	exit 2
fi

#for f in "$1"/*.txt
for f in "$1"/*
do
	#filename=`basename $f`
	filename=$(basename $f)
	echo $filename
done


