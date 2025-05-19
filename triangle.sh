a=$1
b=$2
c=$3
if [ $a -gt $c ]
then
 t=$a
 a=$c
 c=$t
fi
if [ $b -gt $c ]
then
 t=$b
 b=$c
 c=$t
fi
if [ $(expr $a + $b) -gt $c ]
then
 echo "Triangle is formed"
else
 echo "Triangle cannot formed"
 exit 1
fi
if [ $a -eq $b -o $a -eq $c -o $b -eq $c ]
then
 echo "Isoseles triangle"
fi
if [ $a -eq $b -a $a -eq $c ]
then
 echo "Equilateral triangle"
fi
if [ $(expr $a \* $a  + $b \* $b) -eq $(expr $c \* $c) ]
then
 echo "Right angled triangle"
fi
