#!/bin/bash

source ./scripts/params.sh

$DOCKER run --rm \
    -v $HOST_WPPATH:$CONTAINER_WPPATH \
    $IMAGE_NAME:$VERSION \
    $@
