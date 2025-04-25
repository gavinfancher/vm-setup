# Ubuntu VM Setup Automation

## Directory Structure

```
vm-setup/
├── setup.sh              # Main setup script
├── scripts/              # Individual setup scripts
│   ├── install_basic_packages.sh
│   ├── install_docker.sh
│   └── setup_github_ssh.sh
└── README.md
```

### Full Setup

1. Clone this repository to your VM:
   ```bash
   git clone <repository-url>
   cd vm-setup
   ```

2. Make the setup script executable:
   ```bash
   chmod +x setup.sh
   ```

3. Run the setup script:
   ```bash
   ./setup.sh
   ```

### Individual Components

You can also run individual setup scripts from the `scripts` directory:

- Basic system packages:
  ```bash
  ./scripts/install_basic_packages.sh
  ```

- Docker installation:
  ```bash
  ./scripts/install_docker.sh
  ```

- GitHub SSH setup:
  ```bash
  ./scripts/setup_github_ssh.sh
  ```

## What Each Script Does

### install_basic_packages.sh
- Updates system packages
- Installs basic required packages (curl, git, etc.)

### install_docker.sh
- Installs Docker and its dependencies
- Configures Docker to run without sudo
- Adds current user to docker group

### setup_github_ssh.sh
- Sets up SSH for GitHub access
- Generates a new SSH key if one doesn't exist
- Displays the public key to add to GitHub

## Notes

- You may need to log out and back in for Docker group changes to take effect
- The scripts use the latest stable version of Docker
- SSH keys are generated using ED25519 algorithm for better security