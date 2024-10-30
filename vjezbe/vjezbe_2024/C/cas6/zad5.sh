#Napisati skriptu koja uzina nekoliko argumenata
#Za svadi od argumenata provjeriti da li predstavlja fajl
#Ako predstavlja fajl kopirati ga u folder BACKUP
#Ako folder BACKUP ne postoji napraviti ga.
#Kao prefiks imenu fajla dodati vrijeme kad je napravljen backup

if ! [ -d "BACKUP" ]
then
	mkdir "BACKUP"
	echo "Folder BACKUP je kreiran"
fi

while [ $# -gt 0 ]
do
	if [ -f "$1" ] 
	then
		filename=`basename "$1"`
		pref=`date +"%d-%m-%G-%H:%M:%S"`
		echo `dirname $1` $filename 
		cp $1 "BACKUP/$pref-$filename"
	fi
	
	shift
done
