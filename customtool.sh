#!/usr/bin/env bash
dir=$1
commit=$2
cmd=$3 

function version() {
    echo 1
}

function applicable() {
    echo "true"
}

function run() {
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    if [[ "$BRANCH" == "patch4" ]] ; then
        echo "[{ \"type\": \"Info Tool Note Without Line Number on branch: $BRANCH\", \
                \"message\": \"$BRANCH\", \
                \"file\": \"$BRANCH\", \
                \"details_url\": \"https://example.com/#example\" \
            }]"
    else
        echo "[]"
    fi
}


if [[ "$cmd" = "run" ]] ; then 
    run 
fi 
if [[ "$cmd" = "applicable" ]] ; then 
    applicable 
fi 
if [[ "$cmd" = "version" ]] ; then 
    version 
fi
