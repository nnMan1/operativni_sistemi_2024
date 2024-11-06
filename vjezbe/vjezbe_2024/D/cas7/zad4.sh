#Napisati program koji ce da kreira backup tekstualnih fajlova direktorijuma 
#cije se ime zadaje kao argument. Ukoliko se ne navede ime direktorijuma u koji 
#se pravi backup potrebno je kreirati direktorijum BACKUP u direktorijumu koji je 
#naveden kao prvi argument. Fajlovi se snimaju sa ekstenzijom .bak.  Obraditi moguce greske.

if [ $# -gt 2 ] || [ $# -eq 0 ]
then
	echo "Potrebo je predati jedan ili dva argumenta"
	exit 1
fi

dir1=$1

if ! [ -d $dir1 ]
then
	echo "Prvi argument treba da predstavlja folder koji zelimo da backupujemo"
	exit 2
fi

dir2="$dir1/BACKUP"

if [ $# -eq 2 ]
then
	dir2=$2
fi

if ! [ -d $dir2 ]
then
	mkdir -p $dir2
fi

for f in "$dir1"/*.txt
do
	filename=$(basename "$f")
	n_filename="${filename%%.txt}.bak" #%%klanja najduzi sufiks koji odgovara regularnom izrazu koji se nalazi iza %%
	cp "$f" "$dir2/$n_filename"
done

