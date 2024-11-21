if [ $# -eq 0 ]
then
	echo "Potrebno je predati tacno jean argument"
	exit 1
fi

for i in $(seq $1 -1 1)
do
	if [ $(($1 % $i)) -eq 0 ]
	then
		echo $i >> djelioci.txt
	fi

done
