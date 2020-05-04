#!/bin/bash -x
declare -A result
read -p "Take First Input:" a
read -p "Take Second Input:" b
read -p "Take Third Input:" c
d=$(($a+$b+$c))
e=$(($a*$b+$c))
f=$(($c+$a/$b))
g=$(($a%$b+$c))
result[a+b*c]="$d"
result[a*b+c]="$e"
result[c+a/b]="$f"
result[a%b+c]="$g"
echo "Result of First computation is:" ${result[a+b*c]}
echo "Result of Second computation is:" ${result[a*b+c]}
echo "Result of Third computation is:" ${result[c+a/b]}
echo "Result of Fourth computation is:" ${result[a%b+c]}
