#!/bin/bash

source ./scripts/params.sh

$DOCKER build -t $IMAGE_NAME:$VERSION .
