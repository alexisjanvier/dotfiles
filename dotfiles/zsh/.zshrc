####################################################
# OH-MY-ZSH https://github.com/ohmyzsh/ohmyzsh/wiki
####################################################
export ZSH=$HOME/.oh-my-zsh
plugins=(
    ansible
    cargo
    docker
    docker-compose
    fzf
    npm
    nvm
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
# read autocomplete function generated in ZDOTDIR/external
fpath=($ZDOTDIR/external $fpath)

################################
# StarShip https://starship.rs/
################################
eval "$(starship init zsh)"
