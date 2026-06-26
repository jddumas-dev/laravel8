FROM php:7.4-cli

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apt-get update && apt-get install -y \
    unzip \
    zip \
    git \
    curl

RUN groupadd -g 1000 laravel \
 && useradd -u 1000 -g laravel -m -s /bin/bash laravel

USER laravel

WORKDIR /var/www/html

ENTRYPOINT ["composer"]
# ENTRYPOINT ["composer", "--ignore-platform-reqs"]
