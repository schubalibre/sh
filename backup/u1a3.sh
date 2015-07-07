[ $# -lt 1 ] && echo "Mindestens ein Argument" && exit 1

#i=0   
#for el in $@
#do
#	i=$(expr $i + 1)
#	echo "$i. Argument:  $el"
#done | sort -r

down=$#

for el in $@
do
	up=0
	for el2 in $@
	do 
		up=$(expr $up + 1)
		if [ $down -eq $up ]
		then
			echo $down". "$el2;
		fi 
	done
	down=$(expr $down - 1)
done

