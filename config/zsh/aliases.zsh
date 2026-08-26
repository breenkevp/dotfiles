alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias igpu='sudo intel_gpu_top'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Modern DNF
alias dnf="dnf5"
alias dnfgi="dnf5 group install"
alias dnfrl="dnf5 repo list"
alias dnfhs="dnf5 history"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c="clear"

# Git Aliases
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gm='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --graph --decorate'
alias gb='git branch'
alias gbr='git branch -r'
alias gmv='git mv'
alias gr='git restore'
alias grs='git restore --staged'
alias gcl='git clone'
