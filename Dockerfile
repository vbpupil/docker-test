FROM php:7.4-alpine

RUN apk update \
    && apk add git \
    && apk add composer

WORKDIR /var/www/html/

RUN git clone --branch main --single-branch --depth 1 https://github.com/vbpupil/php-test.git . \
    && composer update