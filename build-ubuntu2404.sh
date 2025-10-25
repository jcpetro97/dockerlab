#!/bin/bash

echo "<--- Building ubuntu 2404 --->"
docker build -f Dockerfile-ubuntu2404 --no-cache -t ansibletest-ubuntu:latest .
echo "<--- Finished building ubuntu 2404 --->"
