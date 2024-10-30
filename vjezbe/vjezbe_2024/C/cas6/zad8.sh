opcije="Pozdrav Kraj"
select op in $opcije;
do
	if [ "$op" = "Kraj" ]
	then
		echo OK.
		break
	elif [ "$op" = "Pozdrav" ]
	then
		echo Pozdrav.
		exit
	else
		clear
		echo Opcija ne postoji.
	fi
done
