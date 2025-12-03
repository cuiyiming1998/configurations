# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/young/.oh-my-zsh"
export GOPATH="/Users/young/GoDev"
export GOBIN="$GOPATH/bin"
export all_proxy="http://127.0.0.1:1080"
export NVM_NODEJS_ORG_MIRROR="http://nodejs.org/dist"

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
  zsh-autosuggestions
  copypath
  copyfile
)

# https://ohmyz.sh/
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# -------------------------------- #
# claude code
# -------------------------------- #
alias cl='claude'

# lso
alias lso='lsof -i'

# -------------------------------- #
# Neofetch
# -------------------------------- #
alias nf='neofetch'

# -------------------------------- #
# zellij
# -------------------------------- #
alias zj='zellij'

# -------------------------------- #
# Node Package Manager
# -------------------------------- #
# https://github.com/antfu/ni
alias st='nr start'
alias d='nr dev'
alias b='nr build'
alias bw='nr build --watch'
alias t='nr test'
alias p='nr play'
alias tu='nr test -u'
alias tui='nr test --ui'
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

function clone() {
  if [[ -z $2 ]] then
    gcl "$@" && cd "$(basename "$1" .git)"
  else
    gcl "$@" && cd "$2"
  fi
}

# Clone to ~/w and cd to it
function clonew() {
  w && clone "$@" && code . && cd ~2
}

# Clone to ~/o and cd to it
function cloneo() {
  o && clone "$@" && code . && cd ~2
}
# Clone to ~/f and cd to it
function clonef() {
  f && clone "$@" && code . && cd ~2
}
# Clone to ~/s and cd to it
function clones() {
  s && clone "$@" && code . && cd ~2
}

# proxy
function resetP() {
  export http_proxy=""
  export https_proxy=""
  export HTTP_PROXY=""
  export HTTPS_PROXY=""
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# pnpm
export PNPM_HOME="/Users/young/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"source /Users/young/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/young/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/young/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/young/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. "$HOME/.local/bin/env"

# Added by Windsurf
export PATH="/Users/young/.codeium/windsurf/bin:$PATH"

# Added by Windsurf
export PATH="/Users/young/.codeium/windsurf/bin:$PATH"

# Added by Windsurf
export PATH="/Users/young/.codeium/windsurf/bin:$PATH"

# Added by CatPaw
export PATH="/Users/young/.catpawai/bin:$PATH"

# Added by Antigravity
export PATH="/Users/young/.antigravity/antigravity/bin:$PATH"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
