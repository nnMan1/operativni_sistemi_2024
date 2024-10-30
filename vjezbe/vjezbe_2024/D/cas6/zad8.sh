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
		break
	else
		clear
		echo Opcija ne postoji.
	fi
done
