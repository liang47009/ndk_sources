LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgreGLES2

LOCAL_CFLAGS	:= -I${LOCAL_PATH}/RenderSystems/GLES2/include
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES2/include/EGL
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES2/include/EGL/Android
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES2/include/GLES2
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES2/include/GLES3
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES2/src/GLSLES/include
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES2/src/StateCacheManager

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/RenderSystems/GLES2/include
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/RenderSystems/GLES2/include/EGL
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/RenderSystems/GLES2/include/EGL/Android

LOCAL_STATIC_LIBRARIES := OgreMain

GLES2_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/RenderSystems/GLES2/src/*.cpp) \
				$(wildcard $(LOCAL_PATH)/RenderSystems/GLES2/src/*/*.cpp) \
				$(wildcard $(LOCAL_PATH)/RenderSystems/GLES2/src/*/*/*.cpp)

LOCAL_SRC_FILES := $(GLES2_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgreGLES
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/RenderSystems/GLES/include
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES/include/EGL
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES/include/EGL/Android
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/RenderSystems/GLES/src/StateCacheManager

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/RenderSystems/GLES/include
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/RenderSystems/GLES/include/EGL
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/RenderSystems/GLES/include/EGL/Android

LOCAL_STATIC_LIBRARIES := OgreMain
GLES_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/RenderSystems/GLES/src/*.cpp) \
				$(wildcard $(LOCAL_PATH)/RenderSystems/GLES/src/*/*.cpp) \
				$(wildcard $(LOCAL_PATH)/RenderSystems/GLES/src/*/*/*.cpp)

LOCAL_SRC_FILES := $(GLES_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

$(call import-module,ogre/OgreMain) 