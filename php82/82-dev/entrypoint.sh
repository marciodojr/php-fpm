#!/usr/bin/env bash

echo "xdebug.client_host=`ip route|awk '/default/ { print $3 }'`" | tee -a /etc/php/8.2/fpm/conf.d/25-xdebug.ini > /dev/null
echo "xdebug.client_host=`ip route|awk '/default/ { print $3 }'`" | tee -a /etc/php/8.2/cli/conf.d/25-xdebug.ini > /dev/null

/usr/sbin/php-fpm8.2 -O
