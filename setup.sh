#!/bin/bash

# Exit on error
set -e

echo "Starting VM setup process..."

# Make all scripts executable
chmod +x scripts/*.sh

# Run the individual setup scripts
echo "Running basic package installation..."
./scripts/install_basic_packages.sh

echo "Setting up Docker..."
./scripts/install_docker.sh

apt install python3.12-venv

echo "Setting up GitHub SSH..."
./scripts/setup_github_ssh.sh


echo "Setup complete!"
echo "Note: You may need to log out and back in for Docker group changes to take effect"

