export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bullet-train"
BULLETTRAIN_GIT_EXTENDED="false"
plugins=(git ruby brew)
source $ZSH/oh-my-zsh.sh

DOTFILES=$(dirname $0)
export EDITOR="vim"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.rbenv/bin:$DOTFILES/bin:$PATH"
eval "$(rbenv init -)"

source $DOTFILES/.aliases.rc
