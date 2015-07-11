i=0
for item in $@
do
  if [ $(expr $i % 2) -eq 1 -a "$item" != "spam" ]
    then
      echo $item
  fi
  i=$(expr $i + 1)
done
