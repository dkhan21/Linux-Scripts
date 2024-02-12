#!/bin/bash

if [ -f "$1" ]; then
	echo "It's a file"
	if [ -r "$1" ] || [ -w "$1" ] || [ -x "$1" ]; then
		fileSize=$(stat -c %s "$1")
		if [ "$fileSize" -gt 1048576 ]; then
			echo "$1 size is $fileSize Bytes"
			echo "Its a Large file"
		elif [ "$fileSize" -le 1048576 ] && [ "$fileSize" -gt 100 ]; then
			echo "$1 size is $fileSize Bytes"
			echo "Its a Medium file"
		else
			echo "$1 size is $fileSize Bytes"
			echo "Its a Small file"
		fi
	else
		echo "File is not readable, writable, or executable."
	fi
else
	echo "It's a directory"
	echo "============"
fi

