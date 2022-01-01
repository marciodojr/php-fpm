#!/usr/bin/env bash

/usr/sbin/php-fpm8.1 -D -O
nginx -g 'daemon off;'