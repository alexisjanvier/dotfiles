#!/bin/bash

# starship minimal, blazing-fast, and infinitely customizable prompt
# https://starship.rs/
echo '[*] Install starship'
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
# ls => lsd - https://github.com/Peltoche/lsd
echo '[*] Install lsd to replace ls'
cargo install lsd
