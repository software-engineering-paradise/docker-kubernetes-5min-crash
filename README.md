# Docker & Kubernetes: Zero to Pro in 5 Minutes

> YouTube Crash Course by @software.engineering.paradise

Full video tutorial that takes you from Dockerfile to production K8s in 5 minutes.

[![Instagram](https://img.shields.io/badge/Instagram-@software.engineering.paradise-E4405F)](https://instagram.com/software.engineering.paradise)
[![YouTube](https://img.shields.io/badge/YouTube-@software.engineering.paradise-FF0000)](https://youtube.com/@software.engineering.paradise)
[![GitHub](https://img.shields.io/badge/GitHub-software--engineering--paradise-181717)](https://github.com/software-engineering-paradise)

## 🚀 Quick Start

### Docker
```bash
docker build -t myapp .
docker run -p 3000:3000 myapp
# Open http://localhost:3000
```

### Docker Compose (App + Redis)
```bash
docker-compose up -d --build
```

### Kubernetes (Local)
```bash
minikube start
kubectl apply -f k8s/
kubectl get pods -w
kubectl port-forward svc/myapp-service 8080:80
# Open http://localhost:8080
```

## 📁 Structure
- `app/` - Simple Node.js API
- `Dockerfile` - Production-ready Dockerfile with layer caching
- `docker-compose.yml` - Multi-container
- `k8s/` - All K8s manifests (Deployment with probes, Service, Ingress, HPA, ConfigMap/Secret)

## 🧠 What You Learn
1. VM vs Container
2. Dockerfile, Image, Container flow
3. Volumes, Networks, Compose
4. K8s Architecture & Core Objects (Pod, Deployment, Service)
5. Production checklist (Probes, Resources, HPA)

## 📸 Slides
Full 16-slide deck included in YouTube description.

## 🤝 Contributing
Star this repo if this 5-min video helped you!

---
Made with ❤️ by [Adrish Bhattacharyay](https://github.com/software-engineering-paradise)
