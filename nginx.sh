#!/bin/bash

cat /usr/local/nginx/conf/nginx.conf | envsubst | tee /usr/local/nginx/conf/nginx.conf
useradd nginx

/usr/local/nginx/sbin/nginx

