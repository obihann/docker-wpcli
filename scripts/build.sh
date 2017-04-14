#!/bin/bash

source ./scripts/params.sh

$DOCKER build -t $IMAGE_NAME:$VERSION .
$DOCKER tag $IMAGE_NAME:$VERSION $IMAGE_NAME:latest
