#!/usr/bin/env bash

/usr/sbin/php-fpm8.2 -D -O
nginx -g 'daemon off;'
