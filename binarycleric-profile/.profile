#!/usr/bin/env bash
export EDITOR=/usr/bin/emacs

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedadagacad

# Load profile scripts
for script in $HOME/.profile.d/*.sh ; do
    if [ -r $script ] ; then
        . $script
    fi
done
