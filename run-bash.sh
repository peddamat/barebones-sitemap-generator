#!/bin/sh

docker run -it --rm \
    --entrypoint /bin/bash \
    -v "$(pwd)/mirror":/root/mirror \
    -v "$(pwd)/output":/root/output \
    urlextract:latest
