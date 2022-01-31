#!/bin/bash

# starship minimal, blazing-fast, and infinitely customizable prompt
# https://starship.rs/
echo '[*] Install starship'
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
# ls => lsd - https://github.com/Peltoche/lsd
echo '[*] Install lsd to replace ls'
cargo install lsd
# du => dust - https://github.com/bootandy/dust
echo '[*] Install dust to replace du'
cargo install du-dust
# find => fd - https://github.com/sharkdp/fd
echo '[*] Install fd to replace find'
cargo install fd-find
# top => bottom - https://github.com/ClementTsang/bottom
echo '[*] Install bottom to replace top'
cargo install bottom
# bat - https://github.com/sharkdp/bat
echo '[*] Install bat'
cargo install --locked bat
# bat - https://github.com/BurntSushi/ripgrep
echo '[*] Install ripgrep'
cargo install ripgrep
# tealdeer - https://github.com/dbrgn/tealdeer
echo '[*] Install tealdeer'
cargo install tealdeer
# procs - https://github.com/dalance/procs
echo '[*] Install procs'
cargo install procs
# tokei - https://github.com/XAMPPRocky/tokei
echo '[*] Install tokei'
cargo install tokei
# delta - https://github.com/dandavison/delta
echo '[*] Install Delta for Git'
cargo install cargo install git-delta
