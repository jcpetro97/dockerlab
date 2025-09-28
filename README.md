# ansible-docker-lab
Lightweight Ansible lab using Docker containers as SSH-enabled test nodes. Spin up disposable “servers” locally to test roles, playbooks, and automation without needing real VMs.

# About
- This project provides a ready-to-use environment for testing Ansible locally with Docker.
- Build an Ubuntu-based image with SSH preconfigured
- Use docker-compose to launch multiple nodes with static IPs
- Connect via Ansible using inventory.ini (user + password)
- Run and test playbooks exactly as you would on real servers
- Tear down and recreate nodes in seconds
- Perfect for role development, playbook testing, and learning Ansible without cloud VMs or physical test servers.

# File Structure
```
ansible-docker-lab/
├── build.sh
├── Dockerfile
├── docker-compose.yml
├── inventory.ini
├── playbooks/
│   └── install-nginx.yml
├── README.md
```

# Usage Guide
This repo demonstrates how to use Docker containers as lightweight Ansible test nodes.

## 🚀 Quick Start

### 1. Build the SSH-enabled Ubuntu image
```bash
docker build --no-cache -t sshimage:uat .

# [or] use the build.sh script provided

bash build.sh
```

### 2. Start the test nodes
```bash
docker-compose up -d
```

You now have 3 nodes running at:
- `10.20.0.10`
- `10.20.0.11`
- `10.20.0.12`

### 3. Verify SSH connectivity
```bash
ssh appuser@10.20.0.10
# password: Admin@123
```

### 4. Run an Ansible playbook
```bash
ansible-playbook -i inventory.ini playbooks/install-nginx.yml
```

### 5. Tear down
```bash
docker-compose down
```

## 🛠 Default Credentials
```
Username: appuser
Password: Admin@123
Privilege: sudo enabled
```