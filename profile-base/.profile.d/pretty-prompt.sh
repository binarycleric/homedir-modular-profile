#!/usr/bin/env bash

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}") "
}

white='\[\e[37;1m\]'
green='\[\e[32;1m\]'
blue='\[\e[34;1m\]'
red='\[\e[31;1m\]'
nocolour='\[\e[0m\]'

export PS1="$green\u$white@$blue\h $red\W $white\$(parse_git_branch)\$$nocolour "
