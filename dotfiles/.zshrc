# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/mac/.oh-my-zsh"
export GOPATH="/Users/mac/GoDev"
export GOBIN="$GOPATH/bin"
export all_proxy="http://127.0.0.1:1080"

# -------------------------------- #
# theme
# -------------------------------- #
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="spaceship"
ZSH_DISABLE_COMPFIX=true

# -------------------------------- #
# plugins
# -------------------------------- #
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  copypath
  copyfile
  macos
)

# https://ohmyz.sh/
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# lso
alias lso='lsof -i'

# -------------------------------- #
# zellij
# -------------------------------- #
alias zj='zellij'

# -------------------------------- #
# Node Package Manager
# -------------------------------- #
# https://github.com/antfu/ni
alias s='nr start'
alias d='nr dev'
alias b='nr build'
alias bw='nr build --watch'
alias t='nr test'
alias p='nr play'
alias tu='nr test -u'
alias tw='nr test -watch'
alias lint='nr lint'
alias lintf='nr lint --fix'

# -------------------------------- #
# Git
# -------------------------------- #
alias gs='git status'
alias gcr='gh repo create'
alias gcl='gh repo clone'
alias gp='git push'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gl='git log'
alias ga='git add'
alias gst='git stash'
alias gsta='git stash apply'
alias grm='git rm'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gacm='git add -A && git commit -m'

# -------------------------------- #
# Directories
#
# I put
# `~/o` for my projects
# `~/s` for study(source code)
# `~/f` for forks
# `~/w` for works
# -------------------------------- #
function o() {
  cd ~/o/$1
}

function s() {
  cd ~/s/$1
}

function f() {
  cd ~/f/$1
}

function w() {
  cd ~/w/$1
}

# mkdir and cd to it
function dir() {
  mkdir $1 && cd $1
}

# Clone to ~/o and cd to it
function cloneo() {
  o && gcl "$@" && cd ~2 && code .
}
# Clone to ~/f and cd to it
function clonef() {
  f && gcl "$@" && cd ~2 && code .
}
# Clone to ~/s and cd to it
function clones() {
  s && gcl "$@" && cd ~2 && code .
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# pnpm
export PNPM_HOME="/Users/mac/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
