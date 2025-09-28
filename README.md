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
