#!/bin/bash

my_ls () {
	echo $(basename $1)
	
	if  [ -f "$1" ]
	then
		return
	fi 
	
	for f in $(ls "$1")
	do
		my_ls "$1/$f" ".$2/"
	done
}

for f in $*
do
	my_ls $f
done
