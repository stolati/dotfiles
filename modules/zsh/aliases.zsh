#!/usr/bin/env zsh


alias q=exit


alias d_reload!='. ~/.zshrc'
alias d_update!='( cd ~/.dotfiles ; git pull )'

alias o=open


# remove the autocompletion, because it's a internal command
# THe default completion beiing the files, which is what we want :)
compdef -d r
r(){
  while [[ $# -gt 0 ]]; do
    typeset f="$1" ; shift
    if [[ -d "$f" ]]; then
      rmdir -p -v -- "$f"
    else
      rm -v -- "$f"
    fi
  done
}

alias rr='rm -rf --'







