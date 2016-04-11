Docker PHP-FPM 7.0 & Nginx 1.8 on Alpine Linux
==============================================
Example PHP-FPM 7.0 & Nginx 1.8 setup for Docker, build on [Alpine Linux](http://www.alpinelinux.org/).

Includes many extensions - see Dockerfile

Docker Compose friendly. Expects files mounted to /var/www/html to serve website properly.

Usage
-----
In docker-compose.yml:

    web:
      image: grokbot/alpine-php-nginx:latest
      volumes:
        - '/path/to/your/webfiles:/var/www/html'

Resources & inspiration
-----------------------
Forked from:
https://hub.docker.com/r/trafex/alpine-nginx-php7/


https://github.com/etopian/alpine-php-wordpress
