# ssh auto-completion
SSH_COMPLETE=($(ruby -e' puts ARGF.readlines.map{|line| line[%r/[^\s]+/].split(/,/)} ' < ~/.ssh/known_hosts))
complete -o default -W "${SSH_COMPLETE[*]}" ssh
complete -o default -W "${SSH_COMPLETE[*]}" scp 
