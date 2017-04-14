#!/bin/bash

set +e

source ./scripts/params.sh

rm -rf $HOST_WPPATH
$GIT checkout -- $HOST_WPPATH
$DOCKER rmi $IMAGE_NAME:$VERSION
