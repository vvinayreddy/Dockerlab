#!/bin/bash
docker ps -a -q | xargs -n 1 -I {} docker rm {}
docker images -q | xargs docker rmi
