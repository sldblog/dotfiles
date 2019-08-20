ZSH_THEME="bullet-train"
BULLETTRAIN_GIT_EXTENDED="false"
BULLETTRAIN_STATUS_EXIT_SHOW="true"
BULLETTRAIN_KCTX_BG="018"
BULLETTRAIN_PROMPT_ORDER=(
  time
  status
  custom
  context
  dir
  git
  cmd_exec_time
  kube
)

_kubectl_context() {
  kubectl config get-contexts | grep "*" | awk '{print $2}'
}

_kubectl_namespace() {
  kubectl config get-contexts | grep "*" | awk '{print $5}'
}

prompt_kube() {
  if command -v kubectl > /dev/null 2>&1; then
    prompt_segment $BULLETTRAIN_KCTX_BG $BULLETTRAIN_KCTX_FG $BULLETTRAIN_KCTX_PREFIX" $(_kubectl_context):$(_kubectl_namespace)"
  fi
}

export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh


eval "$(rbenv init -)"
