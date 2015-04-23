while true
do
	echo "$1"

	read a
	
	if [ $2 = $a  ]
	then 
		echo "0"
		exit
	
	elif [ $3 = $a ]
	then
		echo "1"
		exit
	fi
done
