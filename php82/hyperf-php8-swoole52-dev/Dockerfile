FROM marciodojr/hyperf-php8.1-swoole5.0.2

COPY xdebug.ini /etc/php81/conf.d/00_xdebug.ini

RUN apk update && apk upgrade \
    && apk add php81-xdebug \
    && apk add php81-mongodb
