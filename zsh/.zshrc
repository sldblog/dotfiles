ZSH_THEME="spaceship"
export SPACESHIP_CONFIG="$DOTFILES/theme-spaceship.zsh"

export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export GNUPGHOME="$HOME/Work/gpg"
export GPG_TTY="$(tty)"

export SE_AVOID_STATS="true" # https://www.selenium.dev/documentation/selenium_manager/#data-collection
