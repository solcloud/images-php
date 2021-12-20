FROM php:8.1-apache-bullseye

RUN apt-get update && \
    apt-get install -y \
    git unzip imagemagick \
    libpng-dev libwebp-dev libzip-dev libmagickwand-dev libonig-dev


RUN pecl install imagick \
    && pecl install xdebug \
    && pecl install zip \
    && pecl install redis \
    && docker-php-ext-enable imagick xdebug zip redis

RUN docker-php-ext-install \
    iconv intl pdo pdo_mysql mysqli mbstring bcmath gd sockets


RUN apt-get install -y vim
RUN echo 'umask 007' >> /etc/apache2/envvars
RUN echo 'export HOME=/tmp' >> /etc/apache2/envvars
