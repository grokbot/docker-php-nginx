FROM alpine:edge
MAINTAINER Dave Ramsington <grokbot.dwr@gmail.com>

# Install packages
RUN apk --no-cache add nginx supervisor libwebp \
		&& apk --no-cache add php7-fpm php7-json php7-zlib php7-xml composer  \
		php7-pdo_mysql php7-mysqli php7-pdo php7-openssl \
		php7-gd php7-iconv php7-mcrypt php7-mbstring \
		php7-mysqli php7-curl php7-opcache php7-ctype \
		php7-intl php7-bcmath php7-dom php7-xmlreader mysql-client \
		--repository http://nl.alpinelinux.org/alpine/edge/testing/ \
		&& apk add --no-cache musl

# Configure nginx
COPY config/nginx.conf /etc/nginx/nginx.conf

# Configure PHP-FPM
COPY config/fpm-pool.conf /etc/php7/php-fpm.d/zzz_custom.conf
COPY config/php.ini /etc/php7/conf.d/zzz_custom.ini

# Configure supervisord
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add application
RUN mkdir -p /var/www/html

EXPOSE 80 443
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
