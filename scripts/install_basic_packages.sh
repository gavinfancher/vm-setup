#!/bin/bash

set -e

echo "starting basic packages script"

sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git \
    openssh-server \
    python3-venv

echo "basic packages script complete" 