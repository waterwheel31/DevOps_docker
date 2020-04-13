#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
echo "step1"
dockerpath=238254733520.dkr.ecr.us-east-1.amazonaws.com/udacity

# Step 2
# Run the Docker Hub container with kubernetes  
echo "step2"
kubectl run eksworkshop-eksctl --image=udacity --port=80

# Step 3:
# List kubernetes pods
echo "step3"
kubectl get pods 

# Step 4:
# Forward the container port to a host
echo "step4"
kubectl port-forward deployment/eksworkshop-eksctl 8000:80
kubectl logs --selector app=udacity