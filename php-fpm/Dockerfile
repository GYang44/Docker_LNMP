######
# See: https://hub.docker.com/_/php/
######

FROM php:fpm
MAINTAINER micooz <micooz@hotmail.com>

######
# You can install php extensions using docker-php-ext-install
######

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        #libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv pdo pdo_mysql mysqli\
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
