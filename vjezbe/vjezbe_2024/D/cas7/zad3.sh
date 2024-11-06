#Napisati shell skript koji treba da prikaze sve fajlove u  direktorijuma cije se ime zadaje kao argument, 
#a prava pristupa dodijeliti korisniku. Koristiti for petlju. 
#Potrebno je obraditi moguce greske.


#Napomena: Postavka je malo konfuzna zbog nejsnoce rijeci u direktorijuma.
#Zadatak smo uradili kao da pise u direktorijumima. Sto znaci da se predaje vise direktorijuma kao regularni izraz
#Za vrerziju zadatka u direktorijumu (imamo samo jedan diretkorijum) pogleati rjesenja sa C smjera

if [ $# -eq 0 ]
then
	echo "Ni jedan folder ne zadovoljava predati regex"
	exit 1
fi

for d in $*
do 
	if [ -d $d ] 
	then
		echo "$d:"
		#for f in "$1"/*.txt
		for f in "$d"/*
		do
			if [ -f "$f" ]
			then
				filename=$(basename "$f")
				chmod u+rw $f
				echo $filename
			fi
		done
	fi
done
