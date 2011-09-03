# Moves into the specified codebase and opens that 
# directory using your specified editor.
code() {
  cd "$HOME/src/$@/" 2> /dev/null
  if [ "$?" != "0" ]
  then
    echo "Codebase $@ not found in $HOME/src"
    return 1
  fi

  $EDITOR .
}