alias back='popd' # Because I'm lazy.

# Code found at http://www.thrysoee.dk/pushd/
cd() {
   local i MAX LEN p

   MAX=10
   LEN=${#DIRSTACK[@]}

   if [ $# -eq 0 ] || [ "$1" = "-" ]; then
      builtin cd "$@" || return 1
      pushd -n $OLDPWD > /dev/null
   else
      pushd "$@" > /dev/null || return 1
   fi

   if [ $LEN -gt 1 ]; then
      for ((i=1; i <= LEN ; i++)); do
         eval p=~$i
         if [ "$p" = "$PWD" ]; then
            popd -n +$i > /dev/null
            break
         fi
      done
   fi

   if [ $LEN -ge $MAX ]; then
      popd -n -0 > /dev/null
   fi
}
