#!/bin/sh

GIT_REPO=$1
DOCKER_REPO=$2

echo "Cloning $GIT_REPO"
git clone https://github.com/$GIT_REPO.git

REPO_NAME=$(basename $GIT_REPO .git)
cd $REPO_NAME

echo "Building Docker image"
docker build . -t $DOCKER_REPO

docker login

echo "Pushing Docker image to $DOCKER_REPO"
docker push $DOCKER_REPO