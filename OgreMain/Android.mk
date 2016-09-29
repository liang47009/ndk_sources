LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgreMain
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/OgreMain/include
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/OgreMain/include/Android
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/OgreMain/include/Threading
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/OgreMain/src/nedmalloc

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/OgreMain/include 
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/OgreMain/include/Android

LOCAL_STATIC_LIBRARIES := freeimage freetype zlib zziplib android_native_app_glue cpufeatures

GLES_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/OgreMain/src/*.cpp) \
				$(wildcard $(LOCAL_PATH)/OgreMain/src/*/*.cpp) \
				$(wildcard $(LOCAL_PATH)/OgreMain/src/*/*/*.cpp) \
				$(wildcard $(LOCAL_PATH)/OgreMain/src/*/*/*/*.cpp)

LOCAL_SRC_FILES := $(GLES_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

$(call import-module,ogre/FreeImage) 
$(call import-module,ogre/FreeType) 
$(call import-module,ogre/zlib) 
$(call import-module,ogre/zziplib) 
$(call import-module,android/cpufeatures) 
$(call import-module,cxx-stl/gnu-libstdc++) 
$(call import-module,android/native_app_glue) 