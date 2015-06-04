if [ $# -lt 3 ]
then 
	echo "Bitte geben Sie eine Frage in der Form '\"Fage?\" \"Ja\" \"Nein\"' an!"
	exit >&2 
fi

while true
do
	echo "$1 [$2/$3]"

	read ANTWORT
	
	if [ $2 = $ANTWORT ]
	then 
		exit 0
	
	elif [ $3 = $ANTWORT ]
	then
		exit 1
	fi
done
