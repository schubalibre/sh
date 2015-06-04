files=$(ls)

for el in $files
do 
	l=$(echo -n $el | wc -m)

	if [ $l -ge 3 -a $l -lt 6 ]
	then
		echo "$el"
	fi
done
