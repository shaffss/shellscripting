#!/bin/bash

if [ $# -ge 2 ];then
	if [ $# -le 8 ];then
		SUM=$((0))
		MULT=$((1))
		AVG=$((0))
		for (( i=1;i<=$#;i++ ));do
			SUM=$((SUM+${!i}))
			MULT=$((MULT*${!i}))
		done
		AVG=$((SUM/$#))
		echo $SUM
		echo $MULT
		echo $AVG
	fi
fi
