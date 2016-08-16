FROM helder/php-5.3

RUN  apt-get update \
  && pecl install xdebug-2.2.0 \
  && pecl install redis-2.2.7 \
  && pecl install gearman \
  && apt-get -y install libgearman-dev \
  && pecl install memcache \
  && apt-get -y install libmemcached-dev build-essential \
  && pecl install memcached --with-libmemcached-dir


COPY php.ini-production /usr/local/etc/php/php.ini

EXPOSE 9000
