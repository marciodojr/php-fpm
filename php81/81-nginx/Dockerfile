FROM marciodojr/php-fpm:81

USER root

COPY entrypoint.sh /scripts/entrypoint.sh

RUN apt update && \
    apt install -y nginx && \
    apt clean && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /run/nginx && \
    chown -R intec:intec /run/nginx && \
    chown -R intec:intec /var/log/nginx && \
    chown -R intec:intec /var/lib/nginx && \
    chown -R intec:intec /scripts/entrypoint.sh && \
    chmod +x /scripts/entrypoint.sh

COPY nginx.conf /etc/nginx/nginx.conf
COPY enabled.conf /etc/nginx/sites/enabled.conf

USER intec

EXPOSE 8080

ENTRYPOINT ["/scripts/entrypoint.sh"]