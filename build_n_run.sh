#!/bin/bash
# Build Incursion and run it from the repo root (it finds lib/ and fonts/ relative to its own location).
set -e
cd "$(dirname "$0")"
bash build.sh
mv build/incursion/incursion ./incursion
# The game data module is compiled from lib/*.irc once (the compiler is only in this DEBUG build).
[ -f mod/Incursion.Mod ] || ./incursion -compile
exec ./incursion "$@"
