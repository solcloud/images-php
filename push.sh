#!/bin/sh

[ -n "$1" ] || {
    echo "Usage: $0 PHP_VERSION"
    exit 1
}
PHP_VERSION=$1

docker login
docker push solcloud/php:$PHP_VERSION
docker logout
