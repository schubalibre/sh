if test !$1 -o !$2 -o !$3
then 
	echo "Bitte geben Sie eine Frage in der Form 'Fage? Ja Nein' an!"
	exit >&2 
fi

while true
do
	echo "$1"

	read userAntwort
	
	if [ $2 = $userAntwort ]
	then 
		echo "0"
		exit
	
	elif [ $3 = $a ]
	then
		echo "1"
		exit
	fi
done
