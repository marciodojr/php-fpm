FROM marciodojr/php-fpm:81-dev-nginx as php-build
USER root

RUN apt-get update && apt-get -y install autoconf zlib1g-dev php8.1-dev php8.1-xml php-pear
RUN pecl install opencensus-alpha && apt clean && rm -rf /tmp/* && rm -rf /var/lib/apt/lists/*

FROM marciodojr/php-fpm:81-dev-nginx
USER root

COPY --from=php-build /usr/lib/php/20210902/opencensus.so /usr/lib/php/20210902/opencensus.so

RUN echo "extension=opencensus.so" > /etc/php/8.1/cli/conf.d/10-opencensus.ini
RUN echo "extension=opencensus.so" > /etc/php/8.1/fpm/conf.d/10-opencensus.ini

USER intec