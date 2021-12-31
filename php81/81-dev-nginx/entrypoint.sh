#!/usr/bin/env bash

echo "xdebug.client_host=`ip route|awk '/default/ { print $3 }'`" | tee -a /etc/php/8.1/fpm/conf.d/25-xdebug.ini > /dev/null
echo "xdebug.client_host=`ip route|awk '/default/ { print $3 }'`" | tee -a /etc/php/8.1/cli/conf.d/25-xdebug.ini > /dev/null

nginx
/usr/sbin/php-fpm8.1 -O