if [ $# -ne 3 ]
then
	echo Neispravan broj argumenata!
	exit 1
fi

if ! [ -d $1 ]
then
	echo $1 nije folder!
	exit 1
fi

if ! [ -f $3 ]
then
	echo $3 nije fajl!
	exit 1
fi

for f in $1/*.$2
do
	cat $f >> $3
	rm $f
done