count=0

while true
do
  # suche nach *Parameter zb .txt
  sh ./frage.sh "Do you wish to copy the files with the extension: *$1?" "yes" "no"
  input=$?
   case $input in 0)  				# RE Yes/yes

    for i in $(find $PWD -name "*$1") 	 # find im aktuellen Verzeichnis mit dem namen des Parameters
    do
    mkdir -p $PWD/backup/  # Verzeichnis erstellen
    cp -i $i $PWD/backup/
    count=$(expr $count + 1) # counter hochzählen
    done
    echo "$count files copied!"  # Anzahl
    break;;
          1)
  echo "Nothing changed!"
  exit;;
  esac
done
