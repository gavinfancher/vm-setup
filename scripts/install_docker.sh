#!/bin/bash

set -e

echo "starting docker script"

# Install required packages
sudo yum update -y
sudo yum install -y docker

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to docker group
sudo usermod -aG docker $USER

echo "docker script complete"