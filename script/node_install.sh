#!/bin/bash

set -eo pipefail

sudo apt-get update && sudo apt-get install -y sphinxsearch mysql-client

echo "Checking nvm installation"

if [[ -f ~/.nvm/nvm.sh ]] ; then
    echo "NVM already installed"
else
    echo "Installing nvm ..."
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
fi

echo "setting nvm"
source ~/.nvm/nvm.sh

nvm install "$NODE_VERSION"
nvm alias default "$NODE_VERSION"