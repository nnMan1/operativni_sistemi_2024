if [ $# -ne 3 ]
then
	echo "Potrebno je predati tri argumetnata"
fi

if [ $1 = "p" ]
then
	for f in $3
	do
		d=$(dirname "$f")
		n=$(basename "$f")
		
		mv "$f" "$d/$2$n"  
	done
elif [ $1 = "s" ]
then
	for f in $3
	do
		d=$(dirname $f)
		n=$(basename $f)
		
		mv "$f" "$d/$d$2"  
	done
fi


