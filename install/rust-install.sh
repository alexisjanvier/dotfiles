#!/bin/bash

sudo apt -y install apt-transport-https curl gnupg
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
