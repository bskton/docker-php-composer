FROM php:7.3-cli

RUN php -r "copy('https://getcomposer.org/download/1.10.19/composer.phar', 'composer.phar');" \
&& php -r "if (hash_file('sha256', 'composer.phar') === '688bf8f868643b420dded326614fcdf969572ac8ad7fbbb92c28a631157d39e8') { echo 'File verified'; } else { echo 'File corrupt'; unlink('composer.phar'); } echo PHP_EOL;" \
&& mv composer.phar /usr/local/bin/composer \
&& chmod 0755 /usr/local/bin/composer

WORKDIR /app

CMD ["composer", "install"]