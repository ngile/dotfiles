setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
setopt CORRECT
autoload -U compinit
compinit
#setopt completealiases
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
export PATH=$HOME/.local/bin:$HOME/.local/bin/scripts:$HOME/Programs/bin:$PATH


eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias k=kubectl
alias h=helm
alias v=nvim
alias lf=lfub
alias ls="eza --icons=always"
alias cd=z
alias kx=kubectx
alias kn=kubens
alias kdebug="kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR=nvim
export TERM=xterm-256color

source <(eksctl completion zsh)
source <(argocd completion zsh)
source <(helm completion zsh)
#
autoload -U +X bashcompinit && bashcompinit
source <(kubectl completion zsh)
compdef k='kubectl'
complete -o nospace -C /usr/bin/terraform terraform
source /usr/share/doc/fzf/examples/key-bindings.zsh
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else batcat -n --color=always --line-range :500 {}; fi"

_fzf_compgen_path() {
  fdfind --hidden --exclude .git . "$1"
}

# Use fdfind to generate the list for directory completion
_fzf_compgen_dir() {
  fdfind --type=d --hidden --exclude .git . "$1"
}

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
export TERMINAL=ghostty


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


# This will be our new default `ctrl+w` command
my-backward-delete-word() {
    # Copy the global WORDCHARS variable to a local variable. That way any
    # modifications are scoped to this function only
    local WORDCHARS=$WORDCHARS
    # Use bash string manipulation to remove `:` so our delete will stop at it
    WORDCHARS="${WORDCHARS//:}"
    # Use bash string manipulation to remove `/` so our delete will stop at it
    WORDCHARS="${WORDCHARS//\/}"
    # Use bash string manipulation to remove `.` so our delete will stop at it
    WORDCHARS="${WORDCHARS//.}"
    # zle <widget-name> will run an existing widget.
    zle backward-delete-word
}
# `zle -N` will create a new widget that we can use on the command line
zle -N my-backward-delete-word
# bind this new widget to `ctrl+w`
bindkey '^W' my-backward-delete-word

# This will be our `ctrl+alt+w` command
my-backward-delete-whole-word() {
    # Copy the global WORDCHARS variable to a local variable. That way any
    # modifications are scoped to this function only
    local WORDCHARS=$WORDCHARS
    # Use bash string manipulation to add `:` to WORDCHARS if it's not present
    # already.
    [[ ! $WORDCHARS == *":"* ]] && WORDCHARS="$WORDCHARS"":"
    # zle <widget-name> will run that widget.
    zle backward-delete-word
}
# `zle -N` will create a new widget that we can use on the command line
zle -N my-backward-delete-whole-word
# bind this new widget to `ctrl+alt+w`
bindkey '^[^w' my-backward-delete-whole-word
function yy() {
   xclip -selection clipboard
}


function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

complete -o nospace -C /usr/bin/vault vault
# source $HOME/Programs/fzf-tab/fzf-tab.plugin.zsh
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
