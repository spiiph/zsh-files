### Path
#### Superuser Paths
# Set these everywhere; they are useful even if we don't have super user
# access
path=($path /usr/sbin /sbin /usr/local/sbin)

#### User paths
# If path doesn't contain $HOME/bin, add it.  Be careful what you put there:
# It's earlier in the path search than any other directory!
if [ -d ~/bin ]; then
  PATH=~/bin:$PATH
  MANPATH=~/man:$MANPATH
  INFOPATH=~/info:$INFOPATH
fi

if [ -d /opt/bin ]; then
  PATH=$PATH:/opt/bin
  MANPATH=$MANPATH:/opt/man
  INFOPATH=$INFOPATH:/opt/info
fi

#### Local paths
# Local paths should be added to ~/.zprofile.local
if [ -f ~/.zprofile.local ]; then
  source ~/.zprofile.local
fi
