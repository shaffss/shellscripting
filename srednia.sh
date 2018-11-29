#!/bin/bash

if [ $# -eq 3 ];then
	if [ "$2" = "+" ];then
	a=$(($1+$3))
	fi
	if [ "$2" = "-" ];then
	a=$(($1-$3))
	fi
	if [ "$2" = "*" ];then
	a=$(($1*$3))
	fi
	if [ "$2" = "/" ];then
	a=$(($1/$3))
	fi
	if [ "$2" = "%" ];then
	a=$(($1%$3))
	fi
	echo $a
fi
