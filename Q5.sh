#!/bin/bash
read x
test=$(echo $x | rev)
echo $test
total=${#x}
for ((i=0; i<$total; i++))
do 
	
	echo -n ${test:$i:1} | tr '[a-y]z' '[b-z]a'

done

echo

halflen=$(($total/2))
sfinal=$(echo $x | rev)

echo "${sfinal:$halflen:$halflen}${x:$halflen:$halflen}"