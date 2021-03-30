autoload -U compinit colors vcs_info
colors
compinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v

source "$HOME/.zsh/fzf-key-bindings.zsh"
source "$HOME/.zsh/fzf-completion.zsh"
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

export STARSHIP_CONFIG="$HOME/.zsh/starship.toml"
eval "$(starship init zsh)"

alias ls='ls --color -ah'
alias gst='git branch'
alias gco='git checkout'

