FROM smartdevs/magento-php-7.0-cli:latest

RUN docker-php-ext-enable xdebug
ADD "config/xdebug.ini" "$PHP_INI_DIR/conf.d/"

CMD ["/bin/bash"]
