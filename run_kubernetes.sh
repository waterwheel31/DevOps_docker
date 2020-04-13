#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
echo "step1"
dockerpath=sihaiweijia/udacity

# Step 2
# Run the Docker Hub container with kubernetes  
echo "step2"
kubectl run udacity-kube7 --image=sihaiweijia/udacity:latest --port=80

# Step 3:
# List kubernetes pods
echo "step3"
kubectl get pods 

# Step 4:
# Forward the container port to a host
echo "step4"
kubectl port-forward deployment/udacity-kube7 8000:80
kubectl logs --selector app=udacity-kube7