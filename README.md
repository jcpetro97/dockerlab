# Docker Lab
Small Ansible lab using Docker containers as SSH-enabled test nodes. Use containers to test whatever you need, whether it's ansible based or not.

# About
- This project provides a ready-to-use environment for testing Ansible locally with Docker.
- Build an Ubuntu-based image or an Alma0-based image with SSH preconfigured
- Use docker-compose to launch multiple nodes with static IPs
- Connect via Ansible using inventory.ini (user + password)
- Run and test playbooks exactly as you would on real servers
- Tear down and recreate nodes in seconds
- Perfect for role development, playbook testing, and learning Ansible without cloud VMs or physical test servers.

# File Structure
```
DockerLab/
├── build-alma9.sh
├── build.sh
├── build-ubuntu2404.sh
├── build-ubuntu2510.sh
├── docker-compose.alma.yml
├── docker-compose.ubuntu.yml
├── Dockerfile-alma9
├── Dockerfile-ubuntu2404
├── Dockerfile-ubuntu2510
├── inventory.ini
├── playbooks
│   └── install-nginx.yml
└── README.md
```

# Usage Guide

## 🚀 Quick Start

### 1. Build the SSH-enabled Ubuntu image
```bash
docker build -f Dockerfile-ubuntu2404 --no-cache -t ansibletest-ubuntu:latest .
or
docker build -f Dockerfile-ubuntu2510 --no-cache -t ansibletest-ubuntu:latest .

# [or] use the build.sh script provided

bash build-ubuntu2404.sh
or
bash build-ubuntu2510.sh
```

### 2. Build the SSH-enabled Alma image
```bash
docker build -f Dockerfile-alma9 --no-cache -t ansibletest-alma:latest .

# [or] use the build.sh script provided

bash build-alma9.sh
```

*NOTE:* You can build a ubuntu image and alma image at once using `build.sh`

### 3. Start the test nodes
```bash
# Ubuntu
docker-compose -f docker-compose.ubuntu.yml up -d

# Alma
docker-compose -f docker-compose.alma.yml up -d

# both Ubuntu and Alma
docker-compose up -d
```

You now have 3 ubuntu nodes running at:
- `10.171.0.11`
- `10.171.0.12`
- `10.171.0.13`

alma nodes will be running at:
- `10.171.0.21`
- `10.171.0.22`
- `10.171.0.23`

### 4. Verify SSH connectivity
```bash
ssh ansibletest@10.171.0.11
# password: ansibletest
```

### 5. Run an Ansible playbook
```bash
# for Ubuntu
ansible-playbook -i inventory.ini playbooks/install-nginx.yml -l ubuntu

# for Alma
ansible-playbook -i inventory.ini playbooks/install-nginx.yml -l alma 

# for both Ubuntu and Alma
ansible-playbook -i inventory.ini playbooks/install-nginx.yml
```

### 6. Tear down
```bash
# Ubuntu
docker-compose -f docker-compose.ubuntu.yml down 

# Alma
docker-compose -f docker-compose.ubuntu.yml down

# Ubuntu AND Alma
docker-compose down
```

## 🛠 Default Credentials
```
Username: ansibletest
Password: ansibletest
Privilege: sudo enabled
```


## Author
- Original lab created by [AKI1620](https://github.com/AKI1620/ansible-docker-lab)
- Customized by [John Petro](https://github.com/jcpetro97)