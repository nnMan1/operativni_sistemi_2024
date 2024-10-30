#cat $* > sve.txt
#exit 0

> "sve.txt"

for filename in $*
do
	if [ -f "$filename" ]
	then
		cat "$filename" >> sve.txt
	fi
done
