#Napisati skriptu koja kao argumente uzima nekoliko fajlova
#Sve prate fajlove kopirati u folder BACKUP
#Ako folder BACKUP ne postoji potrebno ga je napraviti
#U folderu backup kao prefiks imenu fajla potrebno je upisati vrijeme kreiranja kopije

if ! [ -d "BACKUP" ]
then
	mkdir "BACKUP"
fi

while [ $# -gt 0 ]
do	
	#name=`basename $1`
	#echo $name
	#echo `dirname $1`
	
	cp $1 "BACKUP/`date`$name"

	shift
done
