# docker-nginx-php
Docker compose nginx 1.10.3 + php 7

Usage

docker run -d -p 9000:9000 --name php -v \`pwd\`/html:/var/www/html php:7-fpm-alpine

docker run -d -p 8080:80 --name nginx-php -v \`pwd\`/html:/var/www/html --link php 27tech/nginx-php

Browse http://localhost:8080