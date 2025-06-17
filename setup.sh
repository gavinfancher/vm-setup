#!/bin/bash


set -e

chmod +x scripts/*.sh

./scripts/install_basic_packages.sh

./scripts/install_docker.sh

echo """




all scripts complete




"""