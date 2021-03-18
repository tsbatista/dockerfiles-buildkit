#!/bin/sh

# lets make docker use buildkit
DOCKER_BUILDKIT=1 time \
docker build -f Dockerfile-multi-stage-cache . 

#note: to clean the build cache you can run
#docker builder prune
