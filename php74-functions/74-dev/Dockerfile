FROM gcr.io/gae-runtimes/php74:php74_20210216_7_4_15_RC00

ARG UID=1000
ARG USER=intec

COPY entrypoint.sh /scripts/entrypoint.sh
COPY --from=composer:2 /usr/bin/composer /usr/local/bin

RUN apt update && \
    apt install -y sudo nano grc autoconf gcc make && \
    pecl install xdebug -y && \
    apt purge autoconf gcc -y && \
    apt clean && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -G www-data -u ${UID} -d /home/${USER} ${USER} && \
    echo '' > /etc/99-xdebug.ini && \
    chown -R ${USER}:${USER} /etc/99-xdebug.ini && \
    chown -R ${USER}:${USER} /srv && \
    chown -R ${USER}:${USER} /var/log && \
    chown -R ${USER}:${USER} /scripts/entrypoint.sh && \
    chmod +x /scripts/entrypoint.sh && \
    echo "intec  ALL = ( ALL ) NOPASSWD: ALL" >> /etc/sudoers

USER ${USER}
WORKDIR /srv/

ENTRYPOINT ["/scripts/entrypoint.sh"]

# Set a runtime name (required by the base image)
ENV GAE_RUNTIME php74