#!/bin/sh
# Keep in sync with install-kernelsu-manager.sh
VERSION=11089
VERSION_NAME=0.6.2

curl -f -L https://github.com/tiann/KernelSU/releases/download/v${VERSION_NAME}/KernelSU_v${VERSION_NAME}_${VERSION}-release.apk -o prebuilt/KernelSU.apk
