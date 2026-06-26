FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    zip \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev

RUN docker-php-ext-install \
    pdo_mysql \
    mbstring \
    zip \
    exif \
    pcntl

# Install Node.js 16
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# # Set ownership and permissions for Laravel
# RUN chown -R www-data:www-data /var/www/html
# RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Change user to www-data
# USER www-data

CMD ["php-fpm"]
