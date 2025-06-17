#!/bin/bash

set -e

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER