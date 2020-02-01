#!/bin/sh

VERSION=$1
IMAGE="lb-example"

if [ -z $VERSION ]; then
    echo "Missing version number. Enter a version number for the Docker image and repeat the build."
    exit 1
fi

echo "Building go binary 'lb-example'"
go build -tags netgo -a -v

echo "Building Docker image $IMAGE:$VERSION"
docker build -t $IMAGE:$VERSION .

echo "------------------------------------------------------------------------"
echo "DONE. You may now setup the local test cluster using 'docker-compose up'"
