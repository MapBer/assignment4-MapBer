#!/bin/bash
# Clean script to run 'make distclean' in the buildroot directory.
# Usage: ./clean.sh

set -euo pipefail

# Move to repository root (script lives in repo root)
cd "$(dirname "$0")"

if [ -d buildroot ]; then
    echo "Running: make -C buildroot distclean"
    make -C buildroot distclean
    echo "Buildroot cleaned."
else
    echo "Error: buildroot directory not found at $(pwd)/buildroot" >&2
    exit 1
fi
