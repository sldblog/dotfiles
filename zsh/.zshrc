DOTFILES=$(dirname $(readlink "${(%):-%N}"))
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"

plugins=() # extended by sourcing below
source $DOTFILES/shared.rc

# keep before brew, otherwise PATH gets jumbled up
source $DOTFILES/mise.rc

source $DOTFILES/ai_tooling.rc
source $DOTFILES/brew.rc
source $DOTFILES/docker.rc
source $DOTFILES/editor.rc
source $DOTFILES/elixir.rc
source $DOTFILES/git.rc
source $DOTFILES/go.rc
source $DOTFILES/kubernetes.rc
source $DOTFILES/node.rc
source $DOTFILES/rg.rc
source $DOTFILES/ruby.rc
source $DOTFILES/services.rc
source $DOTFILES/shell.rc

source $DOTFILES/work-personal.rc
source $DOTFILES/work-cleo.rc

ZSH_THEME="spaceship"
export SPACESHIP_CONFIG="$DOTFILES/theme-spaceship.zsh"

export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export SE_AVOID_STATS="true" # https://www.selenium.dev/documentation/selenium_manager/#data-collection

export CIRCLE_NO_PAGER=1
export DO_NOT_TRACK=1
