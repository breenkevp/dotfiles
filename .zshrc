# ====================
#  Modern Zsh Config
# ====================

# --- Existing newuser-install settings ---
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# --- Completion system ---
autoload -Uz compinit
compinit

# --- History behavior improvements ---
setopt hist_ignore_dups
setopt hist_ignore_space
setopt append_history
setopt share_history

# --- Extended globbing ---
setopt extended_glob

# --- Color support for ls/grep ---
if command -v dircolors >/dev/null; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# --- Load aliases ---
if [ -f ~/.config/zsh/aliases.zsh ]; then
    source ~/.config/zsh/aliases.zsh
fi

# --- lesspipe support ---
if command -v lesspipe >/dev/null; then
    eval "$(SHELL=/bin/sh lesspipe)"
fi

# --- Optional: autosuggestions ---
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# --- Optional: syntax highlighting ---
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# --- Starship prompt ---
eval "$(starship init zsh)"

# --- Ensure ~/.local/bin is in PATH ---
export PATH="$HOME/.local/bin:$PATH"
