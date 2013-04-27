LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v13 android-support-v4

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := ROMControl
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

# include java jar used by CardsUI
include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := nineoldandroids-2.4.0:../../../external/jbirdvegas/mGerrit/libs/nineoldandroids-2.4.0.jar
include $(BUILD_MULTI_PREBUILT)
# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
