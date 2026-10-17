# Windows Setup - Docker & K8s in 5 min
# Run as Administrator
Write-Host "Setting up Docker & K8s for Windows..."

# Install Chocolatey if needed
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install docker-desktop -y
choco install kubernetes-cli -y
choco install minikube -y

Write-Host "Enable WSL2 backend in Docker Desktop > Settings > General"
Write-Host "Enable Kubernetes in Docker Desktop > Settings > Kubernetes"
Write-Host "Verify:"
Write-Host "docker --version"
Write-Host "kubectl version --client"
Write-Host "kubectl cluster-info"
