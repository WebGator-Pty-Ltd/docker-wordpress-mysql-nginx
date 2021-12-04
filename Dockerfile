FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
#or docker run the image, and then install it from inside the container:
#
#docker exec -ti <your-php-container> sh
#>> docker-php-ext-install mysqli
#>> docker-php-ext-enable mysqli
#>> apachectl restart

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
