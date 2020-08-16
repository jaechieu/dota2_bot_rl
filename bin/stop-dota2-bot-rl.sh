#!/bin/bash

IDS=$(docker ps -a | grep -e 'odota-parser' | awk '{print $1}')

echo "killing..."
echo $(echo "$IDS" | xargs -I {} docker kill {})
echo

echo "removing..."
echo $(echo "$IDS" | xargs -I {} docker rm -v {})
echo

docker network prune -f
