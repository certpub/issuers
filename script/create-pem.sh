#!/bin/sh

set -e

for env in $(ls src); do
    pem=target/$env.pem

    for cert in $(find src/$env -type f -name *.crt); do
        cat $cert >> $pem
        echo >> $pem
    done
done