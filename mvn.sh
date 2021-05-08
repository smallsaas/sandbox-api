#!/bin/sh
COMPOSE_DOCKER_CLI_BUILD=1 docker-compose -f maven.yml run --rm maven mvn $@
