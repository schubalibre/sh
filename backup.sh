cwd=$(pwd)
surfix=$1
files=$(find . -type f -name "*.$surfix")
existiertBackupOrdner=0
backupOrdner=backup

echo "Herzlich Willkommen. Bitte bestätigen Sie mit 'y' wenn Sie ihre Datei backupen wollen!"

if [  ${#surfix} -eq 0 ]
then
	echo "Es muss ein Surfix angegeben werden!"
	exit >&2
fi

if [ ${#files} -le 0 ]
then
	echo "Es gibt leider keine Dateien mit der Endung '$surfix' in diesem Ordner."
	exit >&2
fi

for file in $(ls)
do
	if [ $file = "$backupOrdner" ]
	then
		$existiertBackupOrdner=1
	fi
done
echo -d /tmp
if [ ls -d /tmp ] 
then
	echo 'Directory /tmp not found'
fi

echo $existiertBackupOrdner
if [ !$existiertBackupOrdner ]
then
	echo "Soll ein backup Ordner erstellt werden? y/n"
	read eingabe
	if [ "y" = $eingabe ]
	then
		mkdir -p "$backupOrdner"
		echo "Ordner erstellt..."
	else
		exit >&2
	fi
fi
exit

for file in $files 
do
	echo "Soll $file gebackupt werden?" 
	read a
	if [ "y" = $a  ]
	then
		cp $file "$backupOrdner"/$file
		echo "$file ...gespeichert..."
	fi
done
