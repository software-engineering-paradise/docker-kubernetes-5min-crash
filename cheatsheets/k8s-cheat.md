# Kubernetes Cheat Sheet - @software.engineering.paradise

## Get Info
kubectl get pods,svc,deploy,nodes -o wide
kubectl get pods -A
kubectl describe pod <pod>
kubectl logs -f <pod>
kubectl exec -it <pod> -- sh

## Deploy
kubectl apply -f k8s/
kubectl delete -f k8s/
kubectl rollout status deployment/myapp
kubectl rollout undo deployment/myapp

## Scale & Debug
kubectl scale deployment myapp --replicas=10
kubectl port-forward svc/myapp-service 8080:80
kubectl get events --sort-by=.lastTimestamp
kubectl top pods
kubectl get hpa

## Config
kubectl get contexts
kubectl use-context minikube
kubectl cluster-info
