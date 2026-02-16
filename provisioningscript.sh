#!/bin/bash
set -e  # Exit on any error
echo "Starting EC2 setup..."

# 1️⃣ Update & upgrade system packages
sudo apt update -y
sudo apt upgrade -y

# 2️⃣ Install Git, Docker, Docker Compose
sudo apt install -y git docker.io docker-compose-plugin

# 3️⃣ Enable Docker to start on boot
sudo systemctl enable docker --now
sudo usermod -aG docker $USER

# 4️⃣ Pull your repository (or copy files manually beforehand)
# Example: clone if your repo is on GitHub
# git clone https://github.com/username/your-repo.git
# cd your-repo

# 5️⃣ Start Docker Compose stack
docker compose up -d

echo "Deployment complete! Your site should be running."

