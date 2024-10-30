if [ $1 -lt 5 ]
then
	echo "Predali ste broj manji od 5"
#elif [ $1 -ge 10 -a $1 -le 20 ]
elif [ $1 -ge 10 ] && [ $1 -le 20 ]
then
	echo "predali ste broj izmejdu 10 i 20"
else 
	echo "predati broj nije u opsegu [-inf, 5] U [10, 20]"
fi
