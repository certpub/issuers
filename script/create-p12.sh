#!/bin/sh

set -e

for env in $(ls src); do
    openssl pkcs12 -export -nokeys -in target/$env.pem -out target/$env.p12 -passout pass:
done