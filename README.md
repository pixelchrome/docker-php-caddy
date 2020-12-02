# Caddy Webserver Docker Container with PHP

Sometimes there is need for quick testing a webserver with php as a docker container. Caddy is is easy to configure.

This is Container is currently based on [Caddy V2](https://caddyserver.com) and [PHP 8](https://www.php.net)

# How to use

This container is for testing only! Don't run this in production!


## Build

`docker-compose up --build`

## Run

`docker-compose up`

# Inspiration

[Paul Redmond](https://github.com/paulredmond) described in [this article](https://bitpress.io/caddy-with-docker-and-php/) exactly what I need. I've simply updated it to Caddy V2 and PHP 8.