# docker-nginx-php
Docker nginx 1.10.3 + php 7


**Docker Compose Usage:**

docker-compose up

Browse http://localhost:8080


**CLI Usage**

docker run -d -p 9000:9000 --name php -v \`pwd\`/html:/var/www/html php:7-fpm-alpine

docker run -d -p 8080:80 --name nginx-php -v \`pwd\`/html:/var/www/html --link php 27tech/nginx-php

Browse http://localhost:8080



**Refrences:**
- [nginx Dockerfile](https://github.com/27tech/docker-nginx-php/blob/master/Dockerfile)