LOCAL_PATH := $(call my-dir)

ifeq ($(WITH_KERNELSU),true)

include $(CLEAR_VARS)
LOCAL_MODULE := KernelSU.apk
LOCAL_MODULE_CLASS := DATA
LOCAL_SRC_FILES := prebuilt/KernelSU.apk
LOCAL_MODULE_PATH := $(TARGET_OUT)/preinstall
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := kernelsu.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := install-kernelsu-manager.sh
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := install-kernelsu-manager.sh
include $(BUILD_PREBUILT)

endif
