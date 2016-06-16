DOTFILES=$(dirname $0)
export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"

plugins=(git brew) # extended by sourcing below
source $DOTFILES/.docker.rc
source $DOTFILES/.editor.rc
source $DOTFILES/.java.rc
source $DOTFILES/.ruby.rc

ZSH_THEME="bullet-train"
BULLETTRAIN_GIT_EXTENDED="false"
BULLETTRAIN_STATUS_EXIT_SHOW="true"
BULLETTRAIN_RUBY_PREFIX="💎"

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
