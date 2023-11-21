FROM marciodojr/php-fpm:81-nginx

USER root

COPY entrypoint.sh /scripts/entrypoint.sh

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean 


RUN rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /run/nginx && \
    chown -R intec:intec /run/nginx && \
    chown -R intec:intec /var/log/nginx && \
    chown -R intec:intec /var/lib/nginx && \
    chown -R intec:intec /scripts/entrypoint.sh && \
    chmod +x /scripts/entrypoint.sh

RUN mkdir -p /run/php && chown -R intec:intec /run/php

COPY nginx.conf /etc/nginx/nginx.conf
COPY enabled.conf /etc/nginx/sites/enabled.conf

USER intec

EXPOSE 8080

ENTRYPOINT ["/scripts/entrypoint.sh"]