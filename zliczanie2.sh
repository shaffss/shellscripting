#!/bin/bash

ps -Af | cut -f 1 -d ' ' | sort | sed '/UID/d' > lista.txt # tworzenie listy użytkowników
ps -Af | cut -f 1 -d ' ' | sort -u | sed '/UID/d' > listauniq.txt # tworzenie niepowtarzalnej listy użytkowników

for i in `cat listauniq.txt`;do
	grep $i lista.txt > tmp.txt
	wc -l < tmp.txt | cut -f 1 -d ' ' > counter.txt
	printf $i":"
	cat counter.txt
done
rm lista.txt
rm listauniq.txt
rm tmp.txt
rm counter.txt
