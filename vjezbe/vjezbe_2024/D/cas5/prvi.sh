#!/bin/sh

#Napisati skriptu koja ucitava dva broja i stampa njihov zbir
echo 'Unesite x i y u jednom redu odvojeni razmakom'
read x y

z=`expr $x + $y`
echo "expr $x + $y = " `expr $x + $y`
