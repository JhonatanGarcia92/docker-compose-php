FROM php:8.2-fpm

RUN apt-get update \
    && apt-get install -y \
        zlib1g-dev \
        libicu-dev \
        libgif-dev \
        libjpeg-dev \
        libcairo2-dev \
        libpango1.0-dev \
        libpng-dev \
        libpq-dev \
        libmcrypt-dev \
        libpng-dev \
        libzip-dev \
        zip \
        build-essential \
        g++ \
        git \
        libxml2-dev \
        vim \
        supervisor \
	    tzdata \
	    libjpeg62-turbo-dev \
        make \
    && pecl upgrade timezonedb.tgz \
    && docker-php-ext-configure intl \
    && docker-php-ext-enable timezonedb \
    && docker-php-ext-configure zip \
    && docker-php-ext-configure soap --enable-soap \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install intl zip gd opcache pdo_pgsql soap \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && chmod +x /usr/local/bin/composer

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
