if [ $# -ne 1 ] && [ $# -ne 2 ]
then
	echo "Potrebno je predati jedan ili dva argumenta"
	exit 1
fi

if ! [ -d $1 ]
then
	echo "Predati argument nije direktorijum"
	exit 2
fi

dir2="$1/BACKUP"

if [ $# -eq 2 ]
then
	dir2=$2
fi

if ! [ -d $dir2 ]
then
	mkdir $dir2
fi

for f in "$1"/*.txt
do
	old_name=`basename $f`
	new_name="${old_name%%.txt}.bak"
	cp "$f" "$dir2/$new_name"
done
