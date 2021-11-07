#!/bin/bash

# https://sw.kovidgoyal.net/kitty/
echo '[*] Install kitty'
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

cd ~/.local/stow
stow -v kitty.app
