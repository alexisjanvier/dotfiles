####################################################
# OH-MY-ZSH https://github.com/ohmyzsh/ohmyzsh/wiki
####################################################
export ZSH=$HOME/.oh-my-zsh
plugins=(
    ansible
    docker
    docker-compose
    fzf
    npm
    nvm
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

############################
# DIRENV https://direnv.net/
############################
eval "$(direnv hook zsh)"

########
# Kitty
########
kitty + complete setup zsh | source /dev/stdin
__kitty_complete

################################
# StarShip https://starship.rs/
################################
function set_win_title(){
    echo -ne "\033]0; $(basename "$PWD") \007"
}
precmd_functions+=(set_win_title)
eval "$(starship init zsh)"

######
# RUST
######
source "$HOME/.cargo/env"

####################################
## NVM https://github.com/nvm-sh/nvm
####################################
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Auto switch nvm if .nvmrc is in folder
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

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
if [ -f "$ZPUBLICDOTDIR/did" ] ; then
  source "$ZPUBLICDOTDIR/did"
fi

########
# GIT
########
if [ -f "$ZPUBLICDOTDIR/git" ] ; then
  # source "$ZPUBLICDOTDIR/git"
  alias gitt='~/.config/zsh/gitt.sh'
fi

########
# ALIAS
########
if [ -f "$ZPUBLICDOTDIR/aliases" ] ; then
  source "$ZPUBLICDOTDIR/aliases"
fi

# Scaleway CLI autocomplete initialization.
eval "$(scw autocomplete script shell=zsh)"
