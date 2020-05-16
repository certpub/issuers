#!/bin/sh

set -e

REF=${REF:-dev}

for env in $(ls src); do
    pem=target/certpub-$env-$REF.pem

    for cert in $(find src/$env -type f -name *.crt); do
        cat $cert >> $pem
        echo >> $pem
    done
done