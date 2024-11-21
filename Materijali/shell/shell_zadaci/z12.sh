if [ $# -ne 2 ]
then
	echo "Potrebno je predati tacno dva argumenta"
	exit 1
fi

if ! [ $1 -eq $1 ]
then
	echo $1 nije broj
	exit 2
fi

if ! [ $2 -eq $2 ]
then
	echo $2 nije broj
	exit 2
fi

a=$1
b=$2

while [ $b -ne 0 ]
do
	m=$(($a%$b))
	a=$b
	b=$m
done

echo $a
