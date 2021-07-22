kubectl create -f voting-app-pod.yaml
kubectl create -f voting-app-service.yaml

kubectl create -f redis-pod.yaml
kubectl create -f redis-service.yaml 

kubectl create -f postgres-pod.yaml
kubectl create -f postgres-service.yaml 

kubectl create -f worker-app-pod.yaml

kubectl create -f result-app-pod.yaml 
kubectl create -f result-app-service.yaml

VARIABLE=$(minikube service voting-service --url)
VARIABLES=$(minikube service result-service --url)

echo "${VARIABLE}"
echo "${VARIABLES}"