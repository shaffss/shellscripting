#!/bin/bash

#pozyskanie lsof z wyciętymi linijami rozmiaru
lsof | sed '/SIZE/d' | sed '/0t0/d' > lsof.txt

#tworzenie pliku zawierającego nazwy procesów i ich pidy
cut -c 1-12,54-63 < lsof.txt | tr -s ' ' > procnpidnsize.txt

#tworzenie listy procesów
	#redukcja spacji z lsof.txt | bierzemy tylko pierwszą i drugą kolumnę | bez powtórzeń
tr -s ' ' < lsof.txt | cut -f 1 -d ' ' | uniq > list.txt 

#iteracja po liście z rozmiarami procesów
for i in `cat list.txt`; do
	grep $i procnpidnsize.txt | cut -f 3 -d ' ' > tmp.txt #wydobywanie linijek konkretnego procesu | zostawiamy samą kolumnę rozmiarów
	SUMA=$((0)) #zerujemy sumator
	#sumujemy linijki
	for j in `cat tmp.txt`;do
		SUMA=$((SUMA+$j))
	done
	#wyświetlanie:
	echo $i" "$SUMA"B"
done

#trzeba posprzatac:
rm list.txt
rm lsof.txt
rm procnpidnsize.txt
rm tmp.txt
