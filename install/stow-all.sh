#!/bin/bash

echo '[*] Removing default configurations ...'
rm rf ~/.local/share/fonts/DankMono ~/.config/lsd ~/.config/kitty ~/.config/starship.toml ~/.zshenv ~/zshrc ~/.config/zsh

echo '[*] Stowing/Creating simlinks for zsh'
cd ../dotfiles && stow -vSt ~ zsh && cd ../install
echo '[*] Stowing/Creating simlinks for asdf'
cd ../dotfiles && stow -vSt ~ asdf && cd ../install
echo '[*] Stowing/Creating simlinks for fonts'
cd ../dotfiles && stow -vSt ~ fonts && cd ../install
fc-cache -f -v
echo '[*] Stowing/Creating simlinks for kitty'
cd ../dotfiles && stow -vSt ~ kitty && cd ../install
echo '[*] Stowing/Creating simlinks for starship'
cd ../dotfiles && stow -vSt ~ starship && cd ../install
echo '[*] Stowing/Creating simlinks for lsd'
cd ../dotfiles && stow -vSt ~ lsd && cd ../install
echo '[*] Stowing/Creating simlinks for ripgrep'
cd ../dotfiles && stow -vSt ~ ripgrep && cd ../install
echo '[*] Stowing/Creating simlinks for git'
cd ../dotfiles && stow -vSt ~ git && cd ../install
echo '[*] Stowing/Creating simlinks for abcde'
cd ../dotfiles && stow -vSt ~ abcde && cd ../install
