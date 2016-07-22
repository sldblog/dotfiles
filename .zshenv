DOTFILES=$(dirname $(readlink "${(%):-%N}"))
export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"

plugins=(git brew) # extended by sourcing below
source $DOTFILES/zsh/shared.rc
source $DOTFILES/zsh/git.rc
source $DOTFILES/zsh/docker.rc
source $DOTFILES/zsh/editor.rc
source $DOTFILES/zsh/java.rc
source $DOTFILES/zsh/ruby.rc
