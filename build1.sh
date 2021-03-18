#!/bin/sh

time \
docker run -it --rm \
       -v "$(pwd)":/opt/maven \
       -w /opt/maven \
       maven:3-openjdk-16 \
       mvn clean install \
       && \
docker build -f Dockerfile-simple . 
