#!/bin/sh

if type wget > /dev/null
then
	wget "$1" -O "temp_$2" || exit 1
	mv temp_"$2" "$2" || exit 1
	exit 0
fi
if type curl > /dev/null
then
	curl -L "$1" -o "temp_$2" || exit 1
	mv temp_"$2" "$2" || exit 1
	exit 0
fi
echo "wget or curl must be installed"
exit 1
