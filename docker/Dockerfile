FROM caddy:latest AS builder

FROM php:fpm-alpine

LABEL maintainer="Harald Dumdey"

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

RUN chmod 0755 /usr/bin/caddy \
    && chmod 0755 /usr/local/bin/install-php-extensions && sync \
    && install-php-extensions gd zip

#COPY public_html/* /srv/app/
COPY docker/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY docker/Caddyfile /etc/caddy/Caddyfile

WORKDIR /srv/app/public_html
RUN chown -R www-data:www-data /srv/app/public_html
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
CMD ["sh", "/usr/local/bin/docker-entrypoint.sh"]