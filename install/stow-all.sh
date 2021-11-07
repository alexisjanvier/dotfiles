#!/bin/bash

echo '[*] Removing default configurations ...'
rm rf ~/.local/share/fonts/DankMono ~/.config/lsd

echo '[*] Stowing/Creating simlinks for fonts'
cd ../dotfiles && stow -vSt ~ fonts && cd ../install
echo '[*] Stowing/Creating simlinks for lsd'
cd ../dotfiles && stow -vSt ~ lsd && cd ../install
