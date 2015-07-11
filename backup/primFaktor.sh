# Wir schauen ob der übergebene Parameter groesser als 1 ist
if [ $1 -lt 2 ]
then
        echo "$1 kann in keine Primzahlen zerlegt werden"
        exit 0
fi

#n ist unsere Zahl, wir fangen bei der ersten Primzahl an und merken uns alle Primzahlen in str
n=$1
i=2
str=""

while [ $i -le $n ]
do
 	# checkt ob i eine Primzahl ist
	./isPrim.sh $i
	prim=$?

	if [ $prim -eq 1 ]
	then
		# Wir wollen so lange durch unsere Primzahl teilen bis es nicht mehr geht

		while  [ $i -le $n -a $(expr $n % $i) -eq 0 ]
		do

			# Primzahl wird in unseren str gespeichert, -z schaut ob str leer ist
			if [ -z "$str" ]
			then
			        str=$i
			else
				str="$str*$i"
			fi

			n=$(expr $n / $i)

		done
	fi
	# Wir probieren das nächste i
        i=$(expr $i + 1)
done
# gibt uns alle Primfaktoren
echo $str
