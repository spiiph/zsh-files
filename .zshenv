export PAGER=less

if [[ "$OSTYPE" == cygwin ]]; then
  export EDITOR=gvim
else
  export EDITOR=vim
fi

if [[ "$COLORTERM" == gnome-terminal ]]; then
  if [[ "$TERM" == xterm ]]; then
    export TERM=gnome-256color
  fi
fi

#### Setup
# If $ZDOTDIR is defined, we keep the definition, otherwise we define $ZDOTDIR
# to equal $HOME/.zsh.  This is so that any other .z* files can refer to files
# in the current $ZDOTDIR.
ZDOTDIR=${ZDOTDIR:-$HOME/.zsh}

fpath=($ZDOTDIR/.zfunctions $fpath) # Add a custom directory for my completion functions.
typeset -U fpath
