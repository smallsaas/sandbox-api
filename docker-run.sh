#!/bin/sh

root=${PWD}
echo root=$root

mkdir -p $root/Docker
# docker-compose.yml
echo "curl -sL https://../docker-compose.yml -o $root/Docker/docker-compose.yml"
curl -sL https://raw.githubusercontent.com/smallsaas/sandbox/master/docker-compose.yml -o $root/Docker/docker-compose.yml
if [ ! -f $root/Docker/docker-compose.yml ];then
  echo download docker-compose.yml fails !
  exit
fi

## config
mkdir -p  $root/config
echo "curl -sL https://../config/application.yml -o $root/config/application.yml"
curl -sL https://raw.githubusercontent.com/smallsaas/sandbox/master/config/application.yml -o $root/config/application.yml
if [ ! -f $root/config/application.yml ];then
  echo download application.yml fails !
  exit
fi

## run
cd $root
docker-compose run --rm api