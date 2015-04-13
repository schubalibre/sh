if [ $(expr $# % 2) -ne 0  ]
then
	echo "Die Parameter müssen eine gerade Anzahl haben." >&2
else
	i=0

	for para in $@
	do
        	i=$(expr $i + 1)	
        	echo $i". Aufrufparameter : " $para
        done
fi

