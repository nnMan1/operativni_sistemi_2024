> "args.txt"

for i in $*
do 
	if ! [ $i -eq $i ]
	then
		echo "$i nije broj"
		exit 2
	fi
	
	echo $i >> "argp.txt"
done

sort -n "argp.txt" > "args.txt"
rm "argp.txt"
