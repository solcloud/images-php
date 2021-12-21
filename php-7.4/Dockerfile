FROM php:7.4-apache-bullseye

RUN apt-get update && \
    apt-get install -y \
    git unzip imagemagick \
    libfreetype6-dev libjpeg62-turbo-dev libpng-dev libwebp-dev libmcrypt-dev libzip-dev libmagickwand-dev libicu-dev libonig-dev


RUN pecl install imagick \
    && pecl install xdebug-2.9.8 \
    && pecl install zip \
    && pecl install redis \
    && docker-php-ext-enable imagick zip redis


RUN docker-php-ext-install -j$(nproc) iconv intl pdo pdo_mysql mysqli mbstring bcmath sockets \
    && docker-php-ext-configure gd --with-freetype --with-webp --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd


RUN a2enmod rewrite
RUN apt-get install -y vim
RUN echo 'umask 007' >> /etc/apache2/envvars
RUN echo 'export HOME=/tmp' >> /etc/apache2/envvars
