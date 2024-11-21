if [ $# -eq 0 ]
then
	echo Nije zadat folder!	
	exit 1
fi

dest=BACKUP

if [ $# -eq 2 ]
then
	if ! [ -d $2 ]
	then
		echo Drugi argument nije folder ili ne postoji!
		exit 1
	else
		dest=$2
	fi
else
	if ! [ -d $dest ]
	then
		mkdir $dest
	fi
fi

if ! [ -d $1 ]
then
	echo Prvi argument nije folder ili ne postoji!
	exit 1
else
	for a in $1/*
	do
		if [ -f $a ]
		then
			cp $a $dest
		fi
	done
fi