####################################################
# OH-MY-ZSH https://github.com/ohmyzsh/ohmyzsh/wiki
####################################################
export ZSH=$HOME/.oh-my-zsh
plugins=(
  ansible
  asdf
  docker
  docker-compose
  fzf
  npm
  rust
  safe-paste
  vi-mode
  zshmarks
  zsh-completions
  zsh-kitty
)
source $ZSH/oh-my-zsh.sh

########################################
# ZSH - https://zsh.sourceforge.io/Doc/
########################################
# vim mode
bindkey -v
# correction des commandes
setopt correct
setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB
# autocompletion
autoload -Uz compinit && compinit
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
# read autocomplete function generated in ZPUBLICDOTDIR/external
fpath=($ZPUBLICDOTDIR/external $fpath)

########
# Kitty
########
kitty + complete setup zsh | source /dev/stdin
__kitty_complete

################################
# StarShip https://starship.rs/
################################
function set_win_title() {
  echo -ne "\033]0; $(basename "$PWD") \007"
}
precmd_functions+=(set_win_title)
eval "$(starship init zsh)"

######
# RUST
######
source "$HOME/.cargo/env"

######################################
## FZF https://github.com/junegunn/fzf
######################################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# FZH with fd
# https://www.bha.ee/neovim-config-for-frontend-development/
# https://github.com/sharkdp/fd#using-fd-with-fzf
# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}
# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

########
# DID
########
if [ -f "$ZPUBLICDOTDIR/did" ]; then
  source "$ZPUBLICDOTDIR/did"
fi

########
# GIT
########
if [ -f "$ZPUBLICDOTDIR/git" ]; then
  # source "$ZPUBLICDOTDIR/git"
  alias gitt='~/.config/zsh/gitt.sh'
fi

########
# ALIAS
########
if [ -f "$ZPUBLICDOTDIR/aliases" ]; then
  source "$ZPUBLICDOTDIR/aliases"
fi
###############
# PRIVATE ALIAS
###############
if [ -f "$ZPRIVATEDOTDIR/aliases" ]; then
  source "$ZPRIVATEDOTDIR/aliases"
fi

# Scaleway CLI autocomplete initialization.
eval "$(scw autocomplete script shell=zsh)"

# ################
# direnv with asdf
# ################
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

# #####
# GPG
# #####
export GPG_TTY=$(tty)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# ############################################################
# Krew https://krew.sigs.k8s.io/docs/user-guide/setup/install/
# ############################################################
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# #####################################
# Abra https://docs.coopcloud.tech/abra
# #####################################
PROG=abra
_CLI_ZSH_AUTOCOMPLETE_HACK=1
source "$HOME/.config/zsh/external/_abra"
