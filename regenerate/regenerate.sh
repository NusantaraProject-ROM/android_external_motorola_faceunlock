#!/bin/bash
echo "Regenerating FaceUnlock..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/external/motorola/faceunlock/regenerate"

cd packages/apps/Settings
git am $CURRENT_DIR/0001-Settings-Port-face-unlock-feature.patch

cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/0002-base-Port-face-unlock-feature.patch

cd $ROOTDIR
echo "Done"
