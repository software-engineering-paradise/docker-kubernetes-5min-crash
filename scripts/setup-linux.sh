#!/bin/bash
# Linux / WSL Ubuntu Setup
set -e
echo "Setting up Docker & K8s..."

# Docker
sudo apt update
sudo apt install -y docker.io curl
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

echo "Done! Run: newgrp docker && minikube start"
echo "Verify: docker ps && kubectl get nodes"
