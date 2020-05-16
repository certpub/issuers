#!/bin/sh

for env in $(ls src); do
    tmp=$env.tmp.pem

    for cert in $(find src/$env -type f -name *.crt); do
        cat $cert >> $tmp
        echo >> $tmp
    done

    openssl pkcs12 -export -nokeys -in $tmp -out target/$env.p12 -passout pass:
    rm $tmp
done