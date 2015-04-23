surfix=$1

if [  ${#surfix} -eq 0 ]
then
	echo "Es muss ein Surfix angegeben werden!"
	exit >&2
fi

echo "Herzlich Willkommen in Backup your Files. Bitte bestätigen Sie mit y wenn Sie ihre Datei backupen wollen!"

for file in $(find . -type f -name "*.$surfix") 
do
	echo "Soll $file gebackupt werden?" 
	read a
	if [ "y" = $a  ]
	then
		echo "$file" 
		pwd
	fi
done
