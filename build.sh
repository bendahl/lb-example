#!/bin/sh

echo "Building go binary 'lb-example'"
go build -tags netgo -a -v

echo "Building Docker image"
docker build -t lb-example:2.0 .

echo "------------------------------------------------------------------------"
echo "DONE. You may now setup the local test cluster using 'docker-compose up'"