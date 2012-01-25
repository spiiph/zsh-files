#-------------------------------------------------------------------------------
# Superuser paths
#
path=($path /usr/local/sbin /sbin /usr/sbin)


#-------------------------------------------------------------------------------
# Local paths
#
if [ -d $HOME/local ]; then
  path=($HOME/local/bin $path)
  manpath=($HOME/local/man $manpath)
  infopath=($HOME/local/info $infopath)
fi

#-------------------------------------------------------------------------------
# Set editor to local vim, if it exists
#
if [ -x $HOME/local/bin/vim ]; then
  export EDITOR=$HOME/local/bin/vim
else
  export EDITOR=/usr/bin/vim
fi

#-------------------------------------------------------------------------------
# Local customizations
#
if [ -f ~/.zprofile.local ]; then
  source ~/.zprofile.local
fi
