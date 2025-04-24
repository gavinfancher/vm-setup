#!/bin/bash

# Exit on error
set -e

echo "Setting up SSH for GitHub..."

# Create .ssh directory if it doesn't exist
if [ ! -d ~/.ssh ]; then
    mkdir ~/.ssh
    chmod 700 ~/.ssh
fi

# Generate SSH key if it doesn't exist
if [ ! -f ~/.ssh/id_ed25519 ]; then
    echo "Generating new SSH key..."
    ssh-keygen -t ed25519 -C "github-setup" -f ~/.ssh/id_ed25519 -N ""
fi

# Start SSH agent and add key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "GitHub SSH setup complete!"
echo "Please add the following SSH public key to your GitHub account:"
cat ~/.ssh/id_ed25519.pub
echo ""
echo "After adding the key to GitHub, you can test the connection with:"
echo "ssh -T git@github.com" 