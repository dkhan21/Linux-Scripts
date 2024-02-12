#!/bin/bash


removeEmpty() {

	for file in "$1"/*; do
		if [ ! -s "$file" ] && [ -f "$file" ] ; then
			rm "$file"
		elif [ -d "$file" ]; then
			removeEmpty "$file"
		fi
	done
	
}

direct=$(pwd)

if [ $# -ne 0 ] && [ -d "$1" ] ; then
	direct="$1"
fi

removeEmpty "$direct"

echo "All empty files have been deleted"
