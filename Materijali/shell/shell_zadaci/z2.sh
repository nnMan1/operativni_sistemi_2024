if [ $# -eq 0 ]
then 
	echo Nisu proslijedjeni argumenti
	exit 1
fi

# -d, provjera da li je arg direktorijum
if ! [ -d $1 ]
then 
	echo Proslijedjeni argument nije direktorijum
	exit 2
else 
	# obrada
	for a in "$1"/*
	do
		if [ -f "$a" ]
		then
			tmp=( $(ls -l "$a") )
			echo "$(wc -c < "$a") ${tmp[4]} $(basename "$a")"
			echo "$(du "$a" --apparent-size --block-size=h)" 
		fi
	done
fi


