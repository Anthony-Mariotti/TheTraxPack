#!/bin/sh

cp -r pack/config multimc/.minecraft
cp -r pack/journeymap multimc/.minecraft
cp -r pack/kubejs multimc/.minecraft

cd multimc
zip -r TheTraxPack-MultiMC-$PACK_VERSION.zip * .minecraft/*