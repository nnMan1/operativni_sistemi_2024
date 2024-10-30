#!/bin/bash
#pomocu naredbe bc izracunati vrijednost izraza x*x + y*y + z*z.
#Vreijdnosti za x, y i z se unose sa standardnog ulaza

read x y z

echo  -n "$x * $x + $y * $y + $z * $z = "

echo "$x * $x + $y * $y + $z * $z" | bc
