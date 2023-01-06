FROM composer:latest

FROM php:8-fpm

COPY app /var/www/app

WORKDIR /var/www/app
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN composer i

CMD ["php-fpm", "-F"]