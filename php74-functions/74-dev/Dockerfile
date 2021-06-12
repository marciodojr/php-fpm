FROM gcr.io/gae-runtimes/php74:php74_20210216_7_4_15_RC00

WORKDIR /srv/

# NOTE: The entrypoint "/start", which starts up NGINX and PHP-FPM,
# is configured by creating a `.googleconfig/app_start.json` file with the
# contents:
#
#     {"entrypointContents": "CUSTOM_ENTRYPOINT"}
#
# We configure it to use the `router.php` file included in this package.
RUN mkdir .googleconfig && \
    echo '{"entrypointContents": "serve vendor/bin/router.php"}' > .googleconfig/app_start.json

# Copy over composer files and run "composer install"
COPY --from=composer:2 /usr/bin/composer /usr/local/bin

# Set a runtime name (required by the base image)
ENV GAE_RUNTIME php74