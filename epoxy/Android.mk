LOCAL_PATH:= $(call my-dir)

MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/*/*.c)

include $(CLEAR_VARS)

LOCAL_MODULE    		:= epoxy

LOCAL_C_INCLUDES 		:= $(LOCAL_PATH)/include 
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include 

LOCAL_SRC_FILES 		:= $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)
