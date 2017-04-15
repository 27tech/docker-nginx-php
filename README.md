# docker-nginx-php-phalcon
Docker compose nginx 1.10.3 + php 7.1.3 + phalcon 3.1.2

Usage

docker run -d -p 9000:9000 --name phalcon -v \`pwd\`/html:/var/www/html 27tech/phalcon

docker run -d -p 8080:80 --name nginx-php -v \`pwd\`/html:/var/www/html --link phalcon:php 27tech/nginx-php