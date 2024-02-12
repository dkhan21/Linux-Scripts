touch domains.txt
chmod 755 domains.txt

cat data.txt | while read word 
do 
	n=$(echo $word | sed -n -E 's/.*@([a-z]+\.[a-z]+)/\1/p')

	if [ -z $n ]; then
		continue
	fi
	echo $n >> domains.txt
done
