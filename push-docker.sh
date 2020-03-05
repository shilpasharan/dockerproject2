#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=dockerproject2 .


dockerpath="shilpasharan/dockerproject2"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag app $dockerpath

# Push Image
docker image push $dockerpath 