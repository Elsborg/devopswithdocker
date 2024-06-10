#!/bin/bash

GIT_REPO="$1"
DOCKER_REPO="$2"

echo "Cloning $GIT_REPO"
git clone "https://github.com/$GIT_REPO.git"

REPO_NAME=$(basename "$GIT_REPO")

echo "Building Docker image"
docker build -t "$DOCKER_REPO" "$REPO_NAME"

echo "Logging in to Docker Hub as $DOCKER_USER"
docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"

docker push "$DOCKER_REPO"

echo "Docker image pushed to $DOCKER_REPO"
