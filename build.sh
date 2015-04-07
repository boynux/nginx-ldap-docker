#!/bin/bash

echo "Building base build image ..."
sudo docker build -t nginx-build - < Dockerfile.build

echo "Building NginX + LDAP"
sudo docker run --rm=true -t -v $(readlink -f $1):/src nginx-build

echo "Deleting build image ..."
sudo docker rmi -f nginx-build

echo "Copying binary build ..."
sudo cp "$1/nginx" ./nginx -a

echo "Building nginx+ldap final image ..."
sudo docker build -t nginx-ldap - < Dockerfile.pack
