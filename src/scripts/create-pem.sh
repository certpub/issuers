#!/bin/sh

set -e

REF=${REF:-dev}

for env in $(ls src/certificates); do
    openssl pkcs12 \
        -in target/certpub-$env-$REF.p12 \
        -out target/certpub-$env-$REF.pem \
        -password pass:changeit
done