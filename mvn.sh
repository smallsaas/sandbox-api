#!/bin/sh
docker-compose -f maven.yml run --rm maven mvn $@
