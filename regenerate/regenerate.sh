#!/bin/bash
echo "Regenerating FaceUnlock..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/external/moto/faceunlock/regenerate"
CRDROID_GITHUB="https://github.com/crDroidAndroid"

cd packages/apps/Settings
git am $CURRENT_DIR/0001-Settings-Add-strings-for-face-unlock-feature.patch
git am $CURRENT_DIR/0002-Settings-Port-face-unlock-feature.patch

cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/0003-base-Port-face-unlock-feature.patch

cd $ROOTDIR
echo "Done."