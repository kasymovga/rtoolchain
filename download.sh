#!/bin/sh

if type wget
then
	wget "$1" -O "temp_$2" || exit 1
	mv temp_"$2" "$2" || exit 1
	exit 0
fi
if type curl
then
	curl "$1" -o "temp_$2" || exit 1
	mv temp_"$2" "$2" || exit 1
	exit 0
fi
