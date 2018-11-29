#!/bin/bash

ps -Af | cut -f 1 -d ' ' | sort | sed '/UID/d' > lista.txt # tworzenie listy użytkowników
ps -Af | cut -f 1 -d ' ' | sort -u | sed '/UID/d' > listauniq.txt # tworzenie niepowtarzalnej listy użytkowników

for i in `cat listauniq.txt`;do
	grep $i lista.txt > tmp.txt
	wc -l tmp.txt > counter.txt
	a=`cut -f 1 -d ' ' counter.txt`
	counter=0
	while [ $counter -le $a ];do
		counter=$((counter+1))
	done
	printf $i":"$counter
	echo ""
done
rm lista.txt
rm listauniq.txt
rm tmp.txt
rm counter.txt
