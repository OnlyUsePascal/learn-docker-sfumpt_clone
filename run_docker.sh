#!/bin/bash

echo "path: ${1}"

docker compose \
  -f $1/docker-compose.yml \
  --env-file .env \
  up --build --detach