FROM phpdockerio/php74-fpm

ARG UID=1000
ARG USER=intec
ENV TERM=xterm-256color \
    COLORTERM=truecolor \
    COMPOSER_PROCESS_TIMEOUT=1200

# Repository/Image Maintainer
LABEL maintainer="Márcio Dias <marciojr91@gmail.com>"

RUN apt update && \
    apt install -y make php7.4-gd php7.4-imap php7.4-intl php7.4-pdo-mysql php7.4-soap php7.4-imagick php7.4-bcmath nano grc wget && \
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

COPY overrides.conf /etc/php/7.4/fpm/pool.d/z-overrides.conf
COPY bashrc /home/${USER}/.bashrc

USER ${USER}

WORKDIR /var/www/app