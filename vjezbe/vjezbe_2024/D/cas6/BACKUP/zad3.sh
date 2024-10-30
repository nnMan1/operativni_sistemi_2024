#potrebno je unijeti tri argumenta koji predstavljaju duzine stranica trougla
#provjeriti da li postoji trougao sa unijetim duzinama stranica
#Treba da provjerimo da li je zbir svake dvije stranice veci od trece

if [ $# -ne 3 ]
then
	echo "Potrebno je predati tri argumenta"
	exit 1
fi

#if [ $(($1 + $2)) -gt $3 -a $(($1 + $3)) -gt $2 -a $(($2 + $3)) -gt $1 ] 
if [ `expr $1 + $2` -gt $3 ] && [ $(($1 + $3)) -gt $2 ] && [ $(($2 + $3)) -gt $1 ] 
then
	echo "Trougao postoji"
else
	echo "Trougao ne postoji"
fi
