#!/bin/bash
ps -Af > zad.txt
tr -s ' ' < zad.txt > zad1.txt
cut -f 1 -d ' ' zad1.txt > zad2.txt
sort -u zad2.txt > zad3.txt

for i in `cat zad3.txt`; do
	grep $i zad.txt > p1.txt
	tr -s ' ' < p1.txt > l1.txt
	cut -f 2,8 -d ' ' l1.txt > k1.txt
	wc -l k1.txt > k2.txt
	proc=`cut -f 1 -d ' ' k2.txt`

		op=0
		printf '%s%+15s' '' $i
		echo -n " |"
		while [ $op -le $proc ]; do

		echo -n "-"
		op=$((op+1))
		done
		echo ">"
		echo ""
done

rm k1.txt
rm k2.txt
rm l1.txt
rm p1.txt
rm zad.txt
rm zad1.txt
rm zad2.txt
rm zad3.txt
