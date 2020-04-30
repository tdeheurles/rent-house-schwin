#!/bin/bash

BUCKET_ID="s3://${PROJECT_ID}"

# create bucket
function create_bucket {
    if [[ "$(aws s3 ls | grep "${PROJECT_ID}")" == "" ]];then
        aws s3 mb "${BUCKET_ID}"
    fi
}

function sync_files {
    aws s3 sync $1 $2
}

function sync_files_no_cache {
    aws s3 sync --cache-control 'max-age=604800' --exclude index.html build/ \${artifact_url}
}