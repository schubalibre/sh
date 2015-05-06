SUFFIX=$1
# maxdepth wie viele Level
# type -f nur Files
# -name wildcart für Endung
FILES=$(find . -maxdepth 1 -type f -name "*.$SUFFIX")
DIRECTORY=backup

echo "Herzlich Willkommen. Mit diesem Programm können sie eine Sicherheitskopie ihrer Daten erstellen!"

if [  ${#SUFFIX} -eq 0 ]
then
    echo "Es muss ein Suffix angegeben werden! z.B. txt, jpg oder php"
    exit >&2
fi

if [ ${#FILES} -le 0 ]
then
    echo "Es gibt leider keine Dateien mit der Endung '$SUFFIX' in diesem Ordner."
    exit >&2
fi

if [ ! -d "$DIRECTORY" ];
then
    ./frage.sh "Soll ein $DIRECTORY Ordner angelegt werden?" "y" "n"
    ANTWORT=$?
    if [ $ANTWORT = 0 ]
    then
        mkdir "$DIRECTORY"
        echo "./$DIRECTORY kreiert."
    else
        exit >&2
    fi
fi

for FILE in $FILES
do
    ./frage.sh "Soll $FILE gesichert werden?" "y" "n"
    ANTWORT=$?
    if [ $ANTWORT = 0  ]
    then
        cp $FILE "$DIRECTORY"
        echo "$FILE in ./$DIRECTORY gespeichert"
    fi
done

echo "Alles klar, Ihre Daten wurden gesichert."

