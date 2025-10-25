#!/bin/bash

echo "Building ubuntu 2404"
docker build -f Dockerfile-ubuntu2404 --no-cache -t ansibletest-ubuntu:latest .

echo "building alma 9"
docker build -f Dockerfile-alma9 --no-cache -t ansibletest-alma:latest .