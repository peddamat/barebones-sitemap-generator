#!/bin/sh

docker run -it --rm \
    -v "$(pwd)/output":/root/output \
    urlextract:latest

# Use this if you already have a local mirror of the website
#docker run -it --rm \
#    -v "$(pwd)/mirror":/root/mirror \
#    -v "$(pwd)/output":/root/output \
#    urlextract:latest
