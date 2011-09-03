# hop pops the directory but then pushes the previous directory
# back into the stack. Useful if you have to jump between two 
# directores quite often.
# 
# TODO: add help or something incase people get confused.
hop() {
  popd -n > /dev/null
  pushd -n $OLDPWD > /dev/null
}

# Basic alias of popd
back() {
  popd -n > /dev/null
}

cd() {
  builtin cd "$@" || return 1
  pushd -n $OLDPWD > /dev/null
}