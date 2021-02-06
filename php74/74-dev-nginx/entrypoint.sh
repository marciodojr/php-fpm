#!/usr/bin/env bash

echo "xdebug.client_host=`ip route|awk '/default/ { print $3 }'`" | tee -a /etc/php/7.4/fpm/conf.d/25-xdebug.ini > /dev/null
echo "xdebug.client_host=`ip route|awk '/default/ { print $3 }'`" | tee -a /etc/php/7.4/cli/conf.d/25-xdebug.ini > /dev/null

nginx
/usr/sbin/php-fpm7.4 -O