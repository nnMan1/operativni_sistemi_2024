#Naci vrijednost x^2 + y^2 + z^2

read x y z

echo -n "$x * $x + $y * $y + $z * $z = "
echo "$x * $x + $y * $y + $z * $z" | bc
