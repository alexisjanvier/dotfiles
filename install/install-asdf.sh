#!/bin/bash

echo '[*] Install asdf managed tools'
asdf plugin-add direnv
asdf install direnv latest
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 18.0.0
