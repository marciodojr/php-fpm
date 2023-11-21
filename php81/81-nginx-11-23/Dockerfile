FROM marciodojr/php-fpm:81-nginx

USER root

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

USER intec

EXPOSE 8080

ENTRYPOINT ["/scripts/entrypoint.sh"]