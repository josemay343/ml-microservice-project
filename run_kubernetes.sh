#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=josemay343/prediction-app:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction-app --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl port-forward prediction-app 8000:80
