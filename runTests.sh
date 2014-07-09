#!/bin/sh

composer install

# Code style
php vendor/bin/phpcs ./src/ --standard=PSR1 --encoding=utf-8 --report=full
php vendor/bin/phpcs ./src/ --standard=PSR2 --encoding=utf-8 --report=full

# PHPUnit tests
php vendor/bin/phpunit --coverage-html .reports

# open .reports/index.html