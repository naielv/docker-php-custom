FROM php:8.2-apache

RUN apt-get update \
    && apt-get install -y openssh-client imagemagick libjpeg62-turbo-dev libpng-dev ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo pdo_mysql

ADD local.ini $PHP_INI_DIR/conf.d/local.ini
