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
		#name=`basename $f`
		s=$(wc -c < "$f")
		tmp=$(ls -l "$f")
		tmp1=($tmp)
		echo ${tmp1[4]}
		echo $(du -d 1 "$f" --apparent-size --block-size=M)
		name=$(basename "$f")
		echo "$s $name"
	fi
done
