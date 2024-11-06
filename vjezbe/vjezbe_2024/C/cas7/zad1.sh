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
	#name=`basename $f`
	name=$(basename $f)
	echo "$name"
done
