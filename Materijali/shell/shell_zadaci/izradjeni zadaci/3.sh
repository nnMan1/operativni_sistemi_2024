if [ $# -eq 0 ]
then
	echo Nije zadat folder!	
	exit 1
fi

if ! [ -d $1 ]
then
	echo Ne postoji folder!
	exit 1
else
	for a in $1/*
	do
		if [ -f $a ]
		then
			echo $a
			chmod u+rwx $a
		fi
	done
fi