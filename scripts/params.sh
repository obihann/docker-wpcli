#!/bin/bash

# executables
DOCKER=/usr/local/bin/docker
GIT=/usr/local/bin/git

# settings
IMAGE_NAME=wpcli
VERSION=1.0.0
HOST_WPPATH="$(pwd)/wp"
CONTAINER_WPPATH=/mnt
