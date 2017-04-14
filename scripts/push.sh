#!/bin/bash

source ./scripts/params.sh

$DOCKER push $IMAGE_NAME:$VERSION
$DOCKER push $IMAGE_NAME:latest

