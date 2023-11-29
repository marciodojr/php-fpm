#!/usr/bin/env bash

echo "xdebug.client_host=`ip route|awk '/default/ { print $3 }'`" > /srv/99-xdebug.ini

exec /start