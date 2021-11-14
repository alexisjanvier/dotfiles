#######################
# Global Env variables
#######################
export EDITOR='nvim'
export VISUAL="nvim"
export GIT_EDITOR='nvim'
export SHELL='/bin/zsh'
export NODE_ENV='development'
export DOTFILES="$HOME/.dotfiles"
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

######
# ZSH
######
export ZDOTDIR="$HOME/.config/zsh"
export ZPRIVATEDOTDIR="$HOME/.config-private/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export KEYTIMEOUT=1 #switch du mode vim
export SPROMPT='Fix %R to %r ? [y:Yes, n:No, a:Abord, e:Edit]' #prompt pour l'auto-correction
if [ -f "$ZPRIVATEDOTDIR/env" ] ; then
  source "$ZPRIVATEDOTDIR/env"
fi

############
# oh-my-zsh
############
export ZSH=$HOME/.oh-my-zsh

#######
# RUST
#######
export PATH="$HOME/.cargo/bin:$PATH"

######
# GO
######
export PATH=$PATH:/usr/local/go/bin

#####################################
## NVM https://github.com/nvm-sh/nvm
#####################################
export NVM_DIR="$HOME/.nvm"

#######################################
## FZF https://github.com/junegunn/fzf
#######################################
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND





