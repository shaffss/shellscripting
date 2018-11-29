#! /bin/bash
if [ $# -eq 1 ];then
	for ((i=1;i<=$1;i++));do
		echo $i
	done
elif [ $# -eq 2 ];then
	for ((i=$1;i<=$2;i++));do
		echo $i
	done
elif [ $# -eq 3 ];then
	if [ $2 -gt -1 ];then
		for ((i=$1;i<=$3;i++));do
			echo $i
			((i=i+$2-1))
		done
	else
		for ((i=$1;i>=$3;i--));do
		echo $i
		((i=i+$2+1))
		done
	fi
fi
