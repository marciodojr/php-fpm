FROM marciodojr/php-fpm:82

USER root

COPY xdebug.ini /etc/php/8.2/fpm/conf.d/25-xdebug.ini
COPY entrypoint.sh /scripts/entrypoint.sh

RUN apt update && \
    apt install -y php8.2-xdebug iproute2 git sudo && \
    apt clean && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    cp /etc/php/8.2/fpm/conf.d/25-xdebug.ini /etc/php/8.2/cli/conf.d/25-xdebug.ini && \
    chown -R intec:intec /scripts/entrypoint.sh && \
    chown -R intec:intec /etc/php/8.2/fpm/conf.d/25-xdebug.ini && \
    chown -R intec:intec /etc/php/8.2/cli/conf.d/25-xdebug.ini && \
    echo "intec  ALL = ( ALL ) NOPASSWD: ALL" >> /etc/sudoers && \
    chmod +x /scripts/entrypoint.sh

USER intec

ENTRYPOINT ["/scripts/entrypoint.sh"]
