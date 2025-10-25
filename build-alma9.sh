#!/bin/bash

echo "<--- Building alma 9 --->"
docker build -f Dockerfile-alma9 --no-cache -t ansibletest-alma:latest .
echo " <--- Finished Building alma 9 --->"