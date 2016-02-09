

############
# Vim mode
############

if $is_zsh ; then

  bindkey -v  # vim mode
  export KEYTIMEOUT=1  # timeout between the <ESC> in tenth of seconds

elif $is_bash ; then

  set -o vi

fi

