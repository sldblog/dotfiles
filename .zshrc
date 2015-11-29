export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bullet-train"
BULLETTRAIN_GIT_EXTENDED="false"
BULLETTRAIN_STATUS_EXIT_SHOW="true"
BULLETTRAIN_RUBY_PREFIX="💎"

plugins=(git ruby brew docker)
source $ZSH/oh-my-zsh.sh

DOTFILES=$(dirname $0)
export EDITOR="vim"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.rbenv/bin:$DOTFILES/bin:$PATH"

eval "$(rbenv init -)"
eval "$(docker-machine env default)"

source $DOTFILES/.aliases.rc
