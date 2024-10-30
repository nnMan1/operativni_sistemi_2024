#for i in 1 2 3 4 5 6 7 8 9 10
#for i in {1..10}
#for i in `seq 10`
#for i in `seq 5 10`
#for i in `seq 5 2 15`
#for ((i=5;i<=10;i+=2))
for i in $*
do 
	echo $i
done
