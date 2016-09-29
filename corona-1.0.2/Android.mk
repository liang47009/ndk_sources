LOCAL_PATH := $(call my-dir)

MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/src/*.cpp)

include $(CLEAR_VARS)

LOCAL_MODULE    := corona

LOCAL_CFLAGS	:= -I${LOCAL_PATH}/src

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/src

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)
