#Napisati shell skript koji treba da prikaze sve fajlove u  direktorijuma cije se ime zadaje kao argument, 
#kao i velicinu fajlova u bajtima. Koristiti for petlju. Potrebno je obraditi moguce greske.

#Napomena: Postavka je malo konfuzna zbog nejsnoce rijeci u direktorijuma.
#Zadatak smo uradili kao da pise u irektorijumima. Sto znaci da se predaje vise direktorijuma kao regularni izraz
#Za vrerziju zadatka u direktorijumu (imamo samo jedan diretkorijum) pogleati rjesenja sa C smjera

if [ $# -eq 0 ]
then
	echo "Ni jedan folder ne zadovoljava predati regex"
	exit 1
fi

for d in $* #Regularni izraz sa direktorijuima se automaci pretvori u listu diretorijuma po kojij mozemo da iteriramo petljom
do 
	if [ -d $d ] # Za svaki element liste provjerimo da li je direktorijum
	then #ako je direktorijum istampamo ga
		echo "$d:"
		#for f in "$1"/*.txt
		for f in "$d"/* #Idemo po svim fajlovima i direktorijumima u tom diretkorijumu $d
		do
			if [ -f "$f" ] #Ako se radi o fajlu
			then
				filename=$(basename "$f") #uzmemo ime fajla
				s=$(wc -c < "$f") #Uzmemo velicinu fajla
				echo $s $filename #Prikazemo velicinu fajla i ime fajla
			fi
		done
	fi
done
