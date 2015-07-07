x=$1
p=2 # Primfaktor
while [ $p -le $x ]
do
	# Prüfen, ob p eine Primzahl ist
	i=2
	step=1
	while [ $i -le $p -a $(expr $p % $i) -ne 0 ]
	do
		i=$(expr $i + $step);
		# soll nur noch ungerade i's holen
		step=2
	done
	# es gibt nur noch einen Teiler nämlich p selbst (Primzahl)
	if [ $i -eq $p ]
	then
		# Teile sofot es geht
		while [ $(expr $x % $p) -eq 0 ]
		do
			echo "--$p ";
			x=$(expr $x / $p)
		done
	fi
	
	p=$(expr $p + 1)
done
