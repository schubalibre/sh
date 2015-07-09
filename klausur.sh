for p in $@
  do
    if [ $p = spam ]
      then
        echo $p
    else
      case $p in
        Spam) echo $*;;
        *) echo $(expr $# + 1);;
      esac
    fi
  done
