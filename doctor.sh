#!/bin/sh

set -e

which make &> /dev/null || echo "make not found"
which pandoc &> /dev/null || echo "pandoc not found"
which python3 &> /dev/null || echo "python3 not found"

