setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
setopt CORRECT
autoload -U compinit
compinit
setopt completealiases
autoload colors zsh/terminfo
autoload -U colors && colors
setopt autocd

if [[ "$terminfo[colors]" -ge 8 ]]; then
colors
fi

HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
bindkey '^R' history-incremental-search-backward

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word


eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias v=nvim
alias lf=lfub
alias ls="eza --icons=always"
alias cd="z"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/home/georgi/Programs/bin:$PATH
export EDITOR=nvim
export TERM=xterm-256color

source <(eksctl completion zsh)
#
autoload -U +X bashcompinit && bashcompinit
source <(kubectl completion zsh)
complete -o nospace -C /usr/bin/terraform terraform
source /usr/share/doc/fzf/examples/key-bindings.zsh
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else batcat -n --color=always --line-range :500 {}; fi"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"


_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

