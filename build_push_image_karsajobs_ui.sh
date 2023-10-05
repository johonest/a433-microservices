#!/bin/bash

# Build Docker image
docker build -t ghcr.io/johonest/karsajobs-ui:latest .

# Log in to GitHub Container Registry
docker login ghcr.io -u johonest -p $GHCR_TOKEN

# Push Docker image to GitHub Container Registry
docker push ghcr.io/johonest/karsajobs-ui:latest