LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := OIS
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/includes
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/src/extras/LIRC

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/includes

LOCAL_SRC_FILES := src/extras/LIRC/OISLIRC.cpp \
src/extras/LIRC/OISLIRCFactoryCreator.cpp \
src/OISEffect.cpp \
src/OISException.cpp \
src/OISForceFeedback.cpp \
src/OISInputManager.cpp \
src/OISJoyStick.cpp \
src/OISKeyboard.cpp \
src/OISObject.cpp \

include $(BUILD_STATIC_LIBRARY)
