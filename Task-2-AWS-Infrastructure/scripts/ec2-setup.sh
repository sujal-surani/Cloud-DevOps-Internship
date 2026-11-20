#!/usr/bin/env bash
set -euo pipefail

echo "[1/4] Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "[2/4] Installing Nginx and Git..."
sudo apt install -y nginx git

echo "[3/4] Enabling and starting Nginx service..."
sudo systemctl enable nginx
sudo systemctl restart nginx

echo "[4/4] Verifying Nginx status and local HTTP response..."
sudo systemctl is-active --quiet nginx && echo "Nginx is active and running."
curl -sI http://localhost | head -n 1