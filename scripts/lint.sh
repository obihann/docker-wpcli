#!/bin/bash

source ./scripts/params.sh

$DOCKER run -it --rm --privileged -v `pwd`:/root/ \
    projectatomic/dockerfile-lint \
    dockerfile_lint
