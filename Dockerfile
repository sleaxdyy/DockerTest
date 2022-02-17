FROM php:5.6-apache
RUN apt-get update && \
        curl \
        vim \
        libmemcached-dev \
        libz-dev \
        libpq-dev \
        libjpeg-dev \
        
# Customize apache config
COPY ./mydomain.conf  /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www/html

RUN usermod -u 1000 www-data
RUN chown -R www-data:www-data /var/www/html
