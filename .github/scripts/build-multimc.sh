#!/bin/sh

cp -r pack/config multimc/.minecraft
cp -r pack/journeymap multimc/.minecraft
cp -r pack/kubejs multimc/.minecraft

zip -r TheTraxPack-MultiMC-$env.GitVersion_SemVer.zip multimc/* multimc/.minecraft/*