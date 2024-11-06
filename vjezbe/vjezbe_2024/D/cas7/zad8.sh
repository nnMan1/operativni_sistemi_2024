if [ $# -lt 3 ]
then
	echo "Potrebno je predati makar tri arugmenta"
	exit 1
fi

echo $1="p"

if [ $1 = "p" ]
then 
	prefiks=$2
	
	shift
	shift
	
	for f in $*
	do
		d=$(dirname "$f")
		name=$(basename "$f")
		
		mv "$f" "$d"/"$prefiks$name"
	done

elif [ $1 = "s" ]
then
	sufiks=$2
	
	shift
	shift

	for f in $*
	do		
		mv "$f" "$f$sufiks"
	done

else
	echo "Prvi argument mora biti p ili s"
	exit 1
fi
