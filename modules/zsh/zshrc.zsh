#!/usr/bin/env zsh
#set -eu

#if [[ -f "$HOME/.localrc" ]]; then
#	source "$HOME/.localrc"
#fi
#
#
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


############
# Vim mode
############

if $is_zsh ; then

  bindkey -v  # vim mode
  export KEYTIMEOUT=1  # timeout between the <ESC> in tenth of seconds

elif $is_bash ; then

  set -o vi

fi



