#!/bin/sh

root=${PWD}
root=$root/Docker
echo root=$root

mkdir -p $root

# docker-compose.yml
echo "curl -sL https://../docker-compose.build.yml -o $root/docker-compose.build.yml"
curl -sL https://raw.githubusercontent.com/smallsaas/sandbox/master/tag/docker/docker-compose.build.yml -o $root/docker-compose.build.yml
if [ ! -f $root/docker-compose.build.yml ];then
  echo download docker-compose.yml fails !
  exit
fi

# docker-compose.yml
echo "curl -sL https://../Dockerfile -o $root/Dockerfile"
curl -sL https://raw.githubusercontent.com/smallsaas/sandbox/master/tag/docker/Dockerfile -o $root/Dockerfile
if [ ! -f $root/Dockerfile ];then
  echo download Dockerfile fails !
  exit
fi


## run
cd $root
COMPOSE_DOCKER_CLI_BUILD=1 docker-compose -f docker-compose.build.yml build
docker-compose -f docker-compose.build.yml run --rm api
