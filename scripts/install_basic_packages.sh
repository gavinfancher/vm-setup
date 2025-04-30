#!/bin/bash

set -e

echo "starting basic packages script"

sudo yum update -y

sudo yum install -y \
    curl \
    git \
    openssh-server \
    python3 \
    python3-pip \
    python3-devel \
    gcc \
    make \
    openssl-devel \
    bzip2-devel \
    libffi-devel

echo "basic packages script complete" 