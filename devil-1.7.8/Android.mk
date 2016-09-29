LOCAL_PATH := $(call my-dir)

MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/src-IL/src/*.cpp)

include $(CLEAR_VARS)

LOCAL_MODULE    := devil

LOCAL_CFLAGS	:= -I${LOCAL_PATH}/include -I${LOCAL_PATH}/include/src-IL/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/include ${LOCAL_PATH}/include/src-IL/include

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)
