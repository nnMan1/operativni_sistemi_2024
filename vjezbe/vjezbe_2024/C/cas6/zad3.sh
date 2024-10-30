if [ -z "$1" ]
then
	echo "Potrebno je unijeti kotisnika"
	exit 1
fi 

case $1 in
	Korisnik[$2-$3])
		echo "Korisnik";;
	User[1-9])
		echo "User";;
	*)
		echo "Ostali";;
esac
