#!/bin/sh

set -e

[ -n "$1" ] || {
    echo "Usage: $0 PHP_VERSION"
    exit 1
}
PHP_VERSION=$1

cd "php-$PHP_VERSION"
docker build --tag solcloud/php:$PHP_VERSION .
