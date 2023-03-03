DOTFILES=$(dirname $(readlink "${(%):-%N}"))
export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"

plugins=() # extended by sourcing below
source $DOTFILES/shared.rc

source $DOTFILES/brew.rc
source $DOTFILES/docker.rc
source $DOTFILES/editor.rc
source $DOTFILES/elixir.rc
source $DOTFILES/git.rc
source $DOTFILES/go.rc
source $DOTFILES/java.rc
source $DOTFILES/kubernetes.rc
source $DOTFILES/node.rc
source $DOTFILES/ruby.rc
source $DOTFILES/services.rc
source $DOTFILES/shell.rc
