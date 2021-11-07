#!/bin/bash

echo '[*] Install apt requierements ...'
sudo apt -y install apt-transport-https curl gnupg stow

echo '[*] Making all installation script executable ...'
chmod +x *.sh

./install-kitty.sh
./install-rust.sh
./install-cli-tools.sh
./stow-all.sh
