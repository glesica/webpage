#!/bin/sh

set -e

FAILED=0

which make &> /dev/null || echo "make not found" && FAILED=1
which pandoc &> /dev/null || echo "pandoc not found" && FAILED=1
which python3 &> /dev/null || echo "python3 not found" && FAILED=1

if [[ $FAILED -ne 0 ]]; then
    exit 1
fi

echo "all dependencies satisfied"

