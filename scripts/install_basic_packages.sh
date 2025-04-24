#!/bin/bash

# Exit on error
set -e

echo "Installing basic system packages..."

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install required packages
echo "Installing required packages..."
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git \
    openssh-server

echo "Basic package installation complete!" 