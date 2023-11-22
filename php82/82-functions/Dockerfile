from gcr.io/gae-runtimes/buildpacks/php82/run:php82_20231119_8_2_12_RC00

ARG UID=1000
ARG USER=intec
USER root

COPY entrypoint.sh /scripts/entrypoint.sh
COPY --from=composer:2 /usr/bin/composer /usr/local/bin

RUN apt update && \
    apt install -y sudo nano grc autoconf gcc make && \
    pecl install xdebug -y && \
    apt purge autoconf gcc -y && \
    apt clean && \
    rm -rf /tmp/* && \
    useradd -G www-data -u ${UID} -d /home/${USER} ${USER} && \
    echo '' > /etc/99-xdebug.ini && \
    chown -R ${USER}:${USER} /etc/99-xdebug.ini && \
    chown -R ${USER}:${USER} /srv && \
    chown -R ${USER}:${USER} /var/log && \
    chown -R ${USER}:${USER} /scripts/entrypoint.sh && \
    chmod +x /scripts/entrypoint.sh

USER ${USER}
WORKDIR /srv/

ENTRYPOINT ["/scripts/entrypoint.sh"]

# Set a runtime name (required by the base image)
ENV GAE_RUNTIME php82
