[ $# -lt 1 ] && echo "Mindestens ein Argument" && exit 1
   
for el in $@
do
	echo "$el"
done | sort -r
