FROM php:8.0.16-fpm-alpine3.14

RUN mkdir -p /var/www/html

RUN apk --no-cache add shadow && usermod -u 1000 www-data

RUN docker-php-ext-install bcmath pdo pdo_mysql