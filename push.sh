#!/bin/sh

[ -n "$1" ] || {
    echo "Usage: $0 PHP_VERSION"
    exit 1
}
PHP_VERSION=$1

echo "Use login ID not email, eg: solcloud"
docker login
docker push solcloud/php:$PHP_VERSION
docker logout
