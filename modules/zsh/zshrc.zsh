#!/usr/bin/env zsh
#set -eu

if [[ -f "$HOME/profile" ]] ; then
  source "$HOME/profile"
fi

#find "$HOME/.dotfiles/" -name '*.zsh' |\
#while read file ; do
#    source "$file"
#done
#
#
#export PATH="$PATH:$HOME/bin"  # won't crash if not exists
#export PATH="$PATH:$HOME/.dotfiles/bin"
#export PATH="$PATH:."
#


