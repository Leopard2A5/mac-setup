# Managed via https://github.com/Leopard2A5/mac-setup/

eval "$(starship init zsh)"

source <(fzf --zsh)

export DEV=$HOME/dev
export REPOS=$DEV/repos

# ALIASES
# shell
alias ls='eza'
alias ll='ls -lh'
alias la='ll -alh'

# git
alias gl="git log --all --decorate --graph --pretty='format:%Cgreen%h%Creset  %<(15)%ar %<(20)%an %Cred%d%Creset%s'"
alias gup='git pull --rebase --prune --tags'
alias gst='git status'
alias gb='git branch'
alias gup='git pull --rebase'
alias gcb='git checkout -b'
alias gd='git diff'
alias gdca='git diff --staged'
alias gco='git checkout'
alias gcd='git checkout develop'
alias gbd='git branch -d'
alias gbD='git branch -D'

# MacOS
alias pbc='pbcopy'
alias pbp='pbpaste'

# k8s
alias kt='kubetail'
alias kctl='kubectl'
alias kgp='kubectl get pods'
