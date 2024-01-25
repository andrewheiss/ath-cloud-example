FROM php:8.2-fpm-alpine

RUN apk update && apk add imagemagick ghostscript-fonts ghostscript

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions opcache imagick memcached redis ssh2 sockets bcmath exif intl zip mysqli
