#!/bin/bash

set -e

sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git \
    openssh-server \
    python3-venv \
    tmux