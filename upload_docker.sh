#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="mwenewezi/mlmicroservice:v1.0.0"


# Step 2:  
# Authenticate & tag
docker login
docker tag mlmicroservice $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
