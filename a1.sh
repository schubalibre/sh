i=0
s=$(expr $# - 1)
for para in $@
do
	i=$(expr $i + 1)
	if [ $i -ge $s ]
	then
		echo $i". Aufrufparameter : " $para
	fi
done
