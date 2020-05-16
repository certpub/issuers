#!/bin/sh

set -e

export REF=${REF:-dev}
export TIMESTAMP=${TIMESTAMP:-"$(date -u +%Y%m%d-%H%Mz)"}

cat src/template/README.md | envsubst > target/README.md