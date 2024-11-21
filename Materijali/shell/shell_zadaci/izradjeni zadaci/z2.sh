if [ $# -eq 0 ]
then
	echo Nije zadat folder!
	exit 1
fi

if ! [ -d $1 ]
then
	echo $1 nije folder!
	exit 2
else
	for f in $1/*
	do
		if [ -f $f ]
		then
			echo $f
			wc -c $f
		fi
	done
fi
