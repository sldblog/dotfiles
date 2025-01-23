ZSH_THEME="spaceship"
export SPACESHIP_CONFIG="$DOTFILES/theme-spaceship.zsh"

export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export GNUPGHOME="$HOME/Work/gpg"
export GPG_TTY="$(tty)"

. "$(brew --prefix asdf)"/libexec/asdf.sh
