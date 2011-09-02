#!/usr/bin/env bash

# Load profile scripts
for script in $HOME/.profile.d/*.sh ; do
    if [ -r $script ] ; then
        . $script
    fi
done
