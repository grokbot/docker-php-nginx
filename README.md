Docker PHP-FPM 7.0 & Nginx 1.9 on Alpine Linux
==============================================
Example PHP-FPM 7.0 & Nginx 1.9 setup for Docker, built on [Alpine Linux](http://www.alpinelinux.org/).

Includes many extensions - see Dockerfile

Docker Compose (1.6+) friendly. Expects files mounted to /var/www/html to serve website properly.

Usage
-----
In docker-compose.yml:

    web:
      image: grokbot/alpine-php-nginx:latest
      ports:
        - '8080:80'
      volumes:
        - '/path/to/your/webfiles:/var/www/html'

then

    docker-compose up

and then open browser to http://localhost:8080


Resources & inspiration
-----------------------
Forked from:
https://hub.docker.com/r/trafex/alpine-nginx-php7/


https://github.com/etopian/alpine-php-wordpress
