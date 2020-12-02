#!/bin/bash
php-fpm -D
/usr/bin/caddy run -config /etc/caddy/Caddyfile --adapter caddyfile