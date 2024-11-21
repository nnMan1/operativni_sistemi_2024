if [ $# -gt 8 ]
then
	echo Previse argumenata!
	exit 1
fi

ostatak=`expr $# \% 2`

if [ $ostatak -eq 1 ]
then
	echo Neparan broj argumenata!
	exit 2
fi

while [ $# -gt 0 ]
do
	a=$1
	b=$2

	shift
	shift

	if [ -f $a ]
	then
		cp $a $b
	else
		echo $a nije fajl!
	fi
done
