#!/bin/sh

set -e

REF=${REF:-dev}

for env in $(ls src/certificates); do
    openssl pkcs12 -export -nokeys \
        -in target/certpub-$env-$REF.pem \
        -out target/certpub-$env-$REF.p12 \
        -passout pass:
done