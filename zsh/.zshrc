
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# starship path
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

DISABLE_AUTO_TITLE="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# fnm
FNM_PATH="/home/haru/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# cargo - rustc
. "$HOME/.cargo/env"

# eza
alias l="eza --icons -l --group-directories-first --no-user --no-time --git"
alias ls="eza -1   --icons=auto"
alias ll="eza --icons -l -a  --sort=name --group-directories-first --no-user --no-time"
alias lt="eza --icons=auto --tree"
alias lt2="eza --tree --level=2 --long --icons --git"
alias lsd="eza --icons --group-directories-first"

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias cl='clear'
alias cls="clear; fastfetch"

alias v="nvim"

alias lg="lazygit"

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# bun completions
[ -s "/home/haru/.bun/_bun" ] && source "/home/haru/.bun/_bun"

eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
eval "$(starship init zsh)"
