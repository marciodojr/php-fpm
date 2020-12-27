FROM marciodojr/php-fpm:74

USER root

COPY xdebug.ini /etc/php/7.4/fpm/conf.d/25-xdebug.ini
COPY entrypoint.sh /scripts/entrypoint.sh

RUN apt update && \
    apt install -y php7.4-xdebug iproute2 && \
    apt clean && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    cp /etc/php/7.4/fpm/conf.d/25-xdebug.ini /etc/php/7.4/cli/conf.d/25-xdebug.ini && \
    chown -R intec:intec /scripts/entrypoint.sh && \
    chown -R intec:intec /etc/php/7.4/fpm/conf.d/25-xdebug.ini && \
    chown -R intec:intec /etc/php/7.4/cli/conf.d/25-xdebug.ini && \
    chmod +x /scripts/entrypoint.sh

USER intec

ENTRYPOINT ["/scripts/entrypoint.sh"]