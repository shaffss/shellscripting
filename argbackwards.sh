#! /bin/bash
#pierwszy sposob
#for (( i=$#;i>0;i-- ));do
#	echo "${!i}"
#done

#drugi sposob
for i in $*;do
	a="$i $a"
done
echo $a
