#!/bin/sh
set -e

if [ ! -d "build" ] ; then
  mkdir build
fi

packwiz mr export -o build/TheTraxPack-$PACK_VERSION.mrpack --pack-file pack/pack.toml
