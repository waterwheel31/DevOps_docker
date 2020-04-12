#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath

dockerpath=app/path


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository

# Tag
docker tag app:latest 238254733520.dkr.ecr.us-east-1.amazonaws.com/udacity:latest

# Push 
docker push 238254733520.dkr.ecr.us-east-1.amazonaws.com/udacity:latest