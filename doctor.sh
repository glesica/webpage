#!/bin/sh

set -e

FAILED=0

check() {
    set +e
    which "$1" &> /dev/null
    set -e
    if [[ $? -ne 0 ]]; then
        echo "$1 not found"
        FAILED=1
    fi
}

check make
check pandoc
check python3

if [[ $FAILED -ne 0 ]]; then
    echo "some dependencies missing"
    exit 1
fi

echo "all dependencies satisfied"
exit 0

