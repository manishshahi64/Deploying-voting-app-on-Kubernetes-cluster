#!/bin/bash

cd kubernetes_voting_app

kubectl create -f voting-app-deploy.yaml
kubectl create -f voting-app-service.yaml

kubectl create -f redis-deploy.yaml
kubectl create -f redis-service.yaml

kubectl create -f postgres-deploy.yaml
kubectl create -f postgres-service.yaml

kubectl create -f worker-app-deploy.yaml

kubectl create -f result-app-deploy.yaml 
kubectl create -f result-app-service.yaml

VARIABLE=$(minikube service voting-service --url)
VARIABLES=$(minikube service result-service --url)

echo "${VARIABLE}"
echo "${VARIABLES}"