FROM php:8.2-apache

RUN apt-get update \
    && apt-get install -y openssh-client libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install gd
