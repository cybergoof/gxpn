#!/bin/bash
# Stop All Containers
docker stop $(docker ps -a -q)

# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi -f $(docker images -q)

# Remove the containers
docker volume ls -qf dangling=true | xargs docker volume rm

# remove exited containers
docker rm -v $(docker ps -a -q -f status=exited)

# Remove unwanted images
docker rmi $(docker images -f "dangling=true" -q)

# Remove docker networks
docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')
