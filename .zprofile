### Superuser Paths
# Set superuser paths everywhere; they are useful even if we don't have super
# user access
path=($path /usr/sbin /sbin /usr/local/sbin)

### Local paths
# Local paths should be added to ~/.zprofile.local
if [ -f ~/.zprofile.local ]; then
  source ~/.zprofile.local
fi
