#!/bin/bash
touch unique_emails.txt
chmod 755 unique_emails.txt

getmail(){
	
	for i in "$1"/*; do
		
		if [ -f "$i" ]; then
		  cat "$i" | while read line
			do 	

				n=$(echo $line| sed -n -E 's/([a-zA-Z0-9]+@[a-z]+\.[a-z]+)/\1/p')
					if [ -z "$n" ] || grep -q "$n" unique_emails.txt; then  
						continue
					else
						echo $n >> unique_emails.txt
					fi			 
		  done	
		elif [ -d "$i" ]; then
			getmail "$i"
		else
			continue
		fi
	done
}


getmail temp

sort unique_emails.txt -o unique_emails.txt


	
	
	
