#!/bin/sh
# COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up --build --remove-orphans
COMPOSE_DOCKER_CLI_BUILD=1 docker-compose -f docker-compose.bundle.yml up --build --detach
 
