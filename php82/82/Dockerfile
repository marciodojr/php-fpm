FROM phpdockerio/php:8.2-fpm

ARG UID=1000
ARG USER=intec
ENV TERM=xterm-256color \
    COLORTERM=truecolor \
    COMPOSER_PROCESS_TIMEOUT=1200

# Repository/Image Maintainer
LABEL maintainer="Márcio Dias <marciojr91@gmail.com>"

RUN apt update && \
    apt install -y make php8.2-gd php8.2-imap php8.2-intl php8.2-pdo-mysql php8.2-soap php8.2-imagick php8.2-bcmath php8.2-curl php8.2-redis php8.2-memcached nano grc wget && \
    apt clean && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -G www-data -u ${UID} -d /home/${USER} ${USER} && \
    mkdir -p /var/www/app && \
    mkdir -p /run/php && \
    mkdir -p /home/${USER}/.composer && \
    chown -R ${USER}:${USER} /var/www && \
    chown -R ${USER}:${USER} /run/php && \
    chown -R ${USER}:${USER} /home/${USER}

COPY --chown=${USER}:${USER} overrides.conf /etc/php/8.2/fpm/pool.d/z-overrides.conf
COPY --chown=${USER}:${USER} 98_overrides.ini /etc/php/8.2/fpm/conf.d/98_overrides.ini
COPY bashrc /home/${USER}/.bashrc

USER ${USER}

WORKDIR /var/www/app
