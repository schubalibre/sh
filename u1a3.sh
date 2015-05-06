[ $# -lt 1 ] && echo "Mindestens ein Argument" && exit 1
i=0   
for el in $@
do
	i=$(expr $i + 1)
	echo "$i. Argument:  $el"
done | sort -r
