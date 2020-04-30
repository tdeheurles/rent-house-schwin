#!/bin/bash
set -euo pipefail

. ../config.sh
. ./common.sh

create_bucket

(
    cd ../website
    yarn build
)

aws s3 sync                          \
    --cache-control 'max-age=604800' \
    --exclude index.html             \
    ../website/build                 \
    "${BUCKET_ID}"

aws s3 cp                       \
    --cache-control 'no-cache'  \
    ../website/build/index.html \
    "${BUCKET_ID}/index.html"
