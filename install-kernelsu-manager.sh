#!/system/bin/sh
TAG=install-kernelsu-manager.sh

VERSION=11041
log -t $TAG "Version to install: $VERSION"

INSTALLED_VERSION=$(dumpsys package me.weishu.kernelsu | sed -n 's/.*versionCode=\([[:digit:]]*\).*/\1/p')
log -t $TAG "Installed version: ${INSTALLED_VERSION:-none}"

if [ $VERSION != "$INSTALLED_VERSION" ]
then
  log -t $TAG "Installing"
  pm install /system/preinstall/KernelSU.apk | log -t $TAG
fi
