i=1

while [ $i -le 5 ]
do
	echo -n "$i "
	i=$((i+1))
done

echo -e "\n-----------------------------"

i=1

until ! [ $i -le 5 ]
do
	echo -n "$i " 
	i=$((i+1))
done
