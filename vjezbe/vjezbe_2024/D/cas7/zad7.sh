if [ $# -ne 1 ]
then
	echo "Potrebno je predati tacno jedan argument"
	exit 1
fi

if ! [ $1 -eq $1 ]
then
	echo "Potrebno je da predati arguemnt bude cio broj"
	exit 1
fi


i=1

while [ $(($i * $i + $i * $i * $i)) -le $1 ]
do
	i=$(($i + 1))
done

echo "Rjesenje je $i"
