echo -n 'x = '
read x 

echo -n 'y = '
read y

z=`expr $x + $y`

echo "expr $x + $y = $z"
