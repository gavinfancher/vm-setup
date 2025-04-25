#!/bin/bash

set -e

echo "starting github ssh setup script"

if [ ! -d ~/.ssh ]; then
    mkdir ~/.ssh
    chmod 700 ~/.ssh
fi

if [ ! -f ~/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 -C "github-setup" -f ~/.ssh/id_ed25519 -N ""
fi

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "github ssh setup script complete"

echo "add the following ssh key to github:"
cat ~/.ssh/id_ed25519.pub
echo ""
echo "test connection with: ssh -T git@github.com" 