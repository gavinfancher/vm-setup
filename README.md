# Ubuntu VM Setup Automation

## Directory Structure

```
vm-setup/
├── setup.sh              # Main setup script
├── scripts/              # Individual setup scripts
│   ├── install_basic_packages.sh
│   ├── install_docker.sh
└── README.md
```


#### What commands are run

```
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


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER
```