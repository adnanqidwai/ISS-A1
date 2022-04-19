#!/bin/bash

declare -a arr
wc -c < "$PWD/$1"
wc -l < "$PWD/$1"
wc -w< "$PWD/$1"
	awk '{printf"line number:";print NR;printf" - Count of words:" ;print NF}' $1
for w in `cat $1`
do
	echo $w
done|sort|uniq -cd|sort -bnr