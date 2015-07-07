# Wir schauen ob der übergebene Parameter groesser als 1 ist
if [ $1 -lt 2 ]
then
	#echo "$1 ist keine Primzahl"
        exit 0
fi

# Die 2 selbst ist eine Primzahl und durch 2 teilbar. Das muss vorher abgefangen werden
if [ $1 -eq 2 ]
then
        #echo "$1 ist selbst ine Primzahl"
        exit 1
fi

# Wir schauen ob der Parameter eine gerade Zahl ist
if [ $(expr $1 % 2) -eq 0 ]
then
	#echo "$1 ist durch 2 teilbar"
	exit 0
fi

# 0,1,2 sind raus - wir fangen bei 3 an
i=3

# Wir rechnen nur bis zur Hälfte des Parameters, da eine Zahl nur bis max mit ihrer hälfte teilbar ist
while [ $(expr $i \* $i) -le $1 ]
do
	# ist der Parameter durch $i teilbar brechen wir ab
	if [ $(expr $1 % $i) -eq 0 ]
	then
		#echo "$1 ist durch $i teilbar"
		exit 0
	fi
	# da wir nur mit ungeraden rechnen können wir die geraden überspringen
	i=$(expr $i + 2)
done

# hehe, es wurde kein Teiler gefunden.... es muss also eine Primzahl sein!
#echo "$1 ist eine Primzahl"
exit 1
