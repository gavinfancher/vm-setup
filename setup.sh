#!/bin/bash


set -e

echo "starting setup script"

chmod +x scripts/*.sh

./scripts/install_basic_packages.sh

./scripts/install_docker.sh

./scripts/setup_github_ssh.sh

echo "all scripts complete"