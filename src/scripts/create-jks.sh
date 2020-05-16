#!/bin/sh

set -e

REF=${REF:-dev}

for env in $(ls src/certificates); do
    for cert in $(find src/certificates/$env -type f -name *.crt); do
        keytool -import \
            -alias $(basename $cert | sed "s:\.crt$::") \
            -file $cert \
            -keystore target/certpub-$env-$REF.jks \
            --storepass "changeit" \
            -noprompt
    done
done