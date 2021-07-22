# Deploying-voting-app-on-Kubernetes-cluster

This a simple voting app which uses a "frontend", "backend", "redis" and "postgres" 

# To Run clone this repository and
1) minikube start --driver=docker
2) chmod +755 voting.sh
    or
   chmod +755 voting-app-Deployment.sh
3) # Run using pods or # Run using deployments 

4) go to the shown ip address (open both url on the browser)
# Run using pods

Execute "voting.sh" 

# Run using deployments 

Execute "voting-app-Deployment.sh"

# To increase the scale of replicaset to 3

RUN "kubectl scale deployment voting-app-deploy --replicas=3"