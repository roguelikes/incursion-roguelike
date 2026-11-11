#!/bin/bash
# Build Incursion and run it from the repo root (it finds lib/ and fonts/ relative to its own location).
set -e
cd "$(dirname "$0")"
bash build.sh
mv build/incursion/incursion ./incursion
exec ./incursion "$@"
