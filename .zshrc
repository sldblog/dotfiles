ZSH_THEME="bullet-train"
BULLETTRAIN_GIT_EXTENDED="false"
BULLETTRAIN_STATUS_EXIT_SHOW="true"
BULLETTRAIN_RUBY_PREFIX="💎"
BULLETTRAIN_PROMPT_ORDER=(
  time
  status
  custom
  context
  dir
  ruby
  git
  cmd_exec_time
)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
