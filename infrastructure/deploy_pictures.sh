#!/bin/bash
set -euo pipefail

. ../config.sh
. ./common.sh

create_bucket
aws s3 sync --cache-control 'max-age=604800' "${PICTURES_PATH}" "${BUCKET_ID}/pictures"
