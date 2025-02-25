DOTFILES=$(dirname $(readlink "${(%):-%N}"))
export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"

plugins=() # extended by sourcing below
source $DOTFILES/shared.rc

# keep before brew, otherwise PATH gets jumbled up
source $DOTFILES/asdf.rc

source $DOTFILES/brew.rc
source $DOTFILES/docker.rc
source $DOTFILES/editor.rc
source $DOTFILES/elixir.rc
source $DOTFILES/git.rc
source $DOTFILES/go.rc
source $DOTFILES/java.rc
source $DOTFILES/kubernetes.rc
source $DOTFILES/node.rc
source $DOTFILES/rg.rc
source $DOTFILES/ruby.rc
source $DOTFILES/services.rc
source $DOTFILES/shell.rc

source $DOTFILES/work-cleo.rc
