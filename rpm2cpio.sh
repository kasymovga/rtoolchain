#!/bin/sh

if type 7z > /dev/null
then
	7z -y x "$1" || exit 1
	exit 0
fi
if type 7za > /dev/null
then
	7za -y x "$1" || exit 1
	exit 0
fi
if type rpm2cpio > /dev/null
then
	CPIONAME=$(basename "$1" .rpm).cpio
	rpm2cpio "$1" > ${CPIONAME} || exit 1
	exit 0
fi
exit 1
