FROM phpdockerio/php:8.1-fpm

ARG UID=1000
ARG USER=intec
ENV TERM=xterm-256color \
    COLORTERM=truecolor \
    COMPOSER_PROCESS_TIMEOUT=1200

# Repository/Image Maintainer
LABEL maintainer="Márcio Dias <marciojr91@gmail.com>"

RUN apt update && \
    apt install -y make php8.1-gd php8.1-imap php8.1-intl php8.1-pdo-mysql php8.1-soap php8.1-imagick php8.1-bcmath nano grc wget && \
    apt install -y software-properties-common && add-apt-repository ppa:openswoole/ppa -y && \
    apt install -y php8.1-openswoole && \
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

COPY overrides.conf /etc/php/8.1/fpm/pool.d/z-overrides.conf
COPY bashrc /home/${USER}/.bashrc

USER ${USER}

WORKDIR /var/www/app