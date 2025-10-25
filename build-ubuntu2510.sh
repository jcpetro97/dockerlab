#!/bin/bash

echo "<--- Building ubuntu 2510 --->"
docker build -f Dockerfile-ubuntu2510 --no-cache -t ansibletest-ubuntu:latest .
echo "<--- Finished building ubuntu 2510 --->"
