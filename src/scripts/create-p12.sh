#!/bin/sh

set -e

REF=${REF:-dev}

for env in $(ls src/certificates); do
    keytool \
        -importkeystore \
        -srckeystore target/certpub-$env-$REF.jks \
        -destkeystore target/certpub-$env-$REF.p12 \
        -srcstoretype JKS \
        -deststoretype PKCS12 \
        -srcstorepass changeit \
        -deststorepass changeit \
        -noprompt
done