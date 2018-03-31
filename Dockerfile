FROM php:7.2-cli

RUN docker-php-ext-install pcntl
RUN docker-php-ext-install sockets

COPY . /usr/src/app

WORKDIR /usr/src/app

ENTRYPOINT [ "./bin/console.php"]

EXPOSE 2222