if [[ -f "/opt/homebrew/bin/brew" ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/ompconfig.toml)"
fi

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Snippets from oh-my-zsh
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# fzf related stuff
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# General aliases
alias ..='cd ..'
alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias zshconfig='nvim ~/.zshrc'
alias sourcezsh='source ~/.zshrc'
alias tree='tree -C'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias nvimf="nvim \$(ff)"

# VTEX aliases
alias vtex='~/.yarn/bin/vtex'
alias vlink='vtex link'
alias vunlink='vtex unlink'
alias vuse='vtex use'
alias vlogin='vtex login'
alias vlocal='vtex local token'

# Git aliases
alias gti='git'
alias ga='git add'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gco='git checkout'
alias gclean='git clean --interactive'
alias gcl='git clone'
alias gll='git log --oneline --decorate --graph'

export EDITOR="nvim"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/victormiranda/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"

# ghcup-env
[ -f "/Users/victormiranda/.ghcup/env" ] && . "/Users/victormiranda/.ghcup/env" 

export PATH="$PATH:/Users/victormiranda/.local/bin"
