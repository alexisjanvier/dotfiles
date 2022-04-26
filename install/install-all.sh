#!/bin/bash
#
# Installation de tous les outils utilisés par mon terminal
# Prérequis : les outils installés par le script install-first.sh

echo '[*] Making all installation script executable ...'
chmod +x *.sh

./install-zsh-tools.sh
./install-kitty.sh
./install-rust.sh
./install-cli-tools.sh
./stow-all.sh
source ~/.zshrc
./install-asdf.sh
