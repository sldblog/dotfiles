DOTFILES=$(dirname $0)
export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"

plugins=(git brew) # extended by sourcing below
source $DOTFILES/zsh/shared.rc
source $DOTFILES/zsh/git.rc
source $DOTFILES/zsh/docker.rc
source $DOTFILES/zsh/editor.rc
source $DOTFILES/zsh/java.rc
source $DOTFILES/zsh/ruby.rc

ZSH_THEME="bullet-train"
BULLETTRAIN_GIT_EXTENDED="false"
BULLETTRAIN_STATUS_EXIT_SHOW="true"
BULLETTRAIN_RUBY_PREFIX="💎"

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
