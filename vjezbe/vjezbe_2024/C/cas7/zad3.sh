if [ $# -ne 1 ]
then
	echo "Potrebno je predati jedan argument"
	exit 1
fi

if ! [ -d $1 ]
then
	echo "Predati argument nije direktorijum"
	exit 2
fi

for f in "$1"/*
do
	if [ -f "$f" ] 
	then
		chmod u+rwx "$f"
		name=$(basename "$f")
		echo "$s $name"
	fi
done
