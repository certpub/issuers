#!/bin/sh

set -e

REF=${REF:-dev}

for env in $(ls src/certificates); do
    pem=target/certpub-$env-$REF.pem

    for cert in $(find src/certificates/$env -type f -name *.crt); do
        cat $cert >> $pem
        echo >> $pem
    done
done