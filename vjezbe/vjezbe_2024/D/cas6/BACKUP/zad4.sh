read x y z

case $x in
	[$y-$z].txt)	
		echo "Tesktualna datoteka";;
	*.png)
		echo "Slika";;
	*)
		echo "Ostali fajlovi";;
esac
