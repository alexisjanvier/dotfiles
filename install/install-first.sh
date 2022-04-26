#!/bin/bash

# Ce script installe les outils minimums indispensables au fonctionnement de ma console
# et à l'installation des outils complémentaires.  C'est-à-dire :
# - git
# - curl
# - stow
# - zsh
# - oh-my-zsh

echo '[*] Install apt requierements ...'
sudo apt -y install apt-transport-https curl gnupg stow git zsh

echo '[*] Make zsh the default shell ...'
chsh -s $(which zsh)

echo '[*] install oh-my-zsh ...'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
