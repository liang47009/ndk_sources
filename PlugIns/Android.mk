LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := BSPSceneManager
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/PlugIns/BSPSceneManager/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/PlugIns/BSPSceneManager/include
LOCAL_STATIC_LIBRARIES := OgreMain

BSPSceneManager_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/PlugIns/BSPSceneManager/src/*.cpp)
LOCAL_SRC_FILES := $(BSPSceneManager_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := OctreeSceneManager
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/PlugIns/OctreeSceneManager/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/PlugIns/OctreeSceneManager/include
LOCAL_STATIC_LIBRARIES := OgreMain PCZSceneManager

OctreeSceneManager_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/PlugIns/OctreeSceneManager/src/*.cpp)
LOCAL_SRC_FILES := $(OctreeSceneManager_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := OctreeZone
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/PlugIns/OctreeZone/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/PlugIns/OctreeZone/include
LOCAL_STATIC_LIBRARIES := OgreMain PCZSceneManager

OctreeZone_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/PlugIns/OctreeZone/src/*.cpp)
LOCAL_SRC_FILES := $(OctreeZone_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := ParticleFX
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/PlugIns/ParticleFX/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/PlugIns/ParticleFX/include
LOCAL_STATIC_LIBRARIES := OgreMain

ParticleFX_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/PlugIns/ParticleFX/src/*.cpp)
LOCAL_SRC_FILES := $(ParticleFX_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := PCZSceneManager
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/PlugIns/PCZSceneManager/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/PlugIns/PCZSceneManager/include
LOCAL_STATIC_LIBRARIES := OgreMain

PCZSceneManager_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/PlugIns/PCZSceneManager/src/*.cpp)
LOCAL_SRC_FILES := $(PCZSceneManager_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := EXRCodec
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/PlugIns/EXRCodec/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/PlugIns/EXRCodec/include
LOCAL_STATIC_LIBRARIES := OgreMain

EXRCodec_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/PlugIns/EXRCodec/src/*.cpp)
LOCAL_SRC_FILES := $(EXRCodec_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)
$(call import-module,ogre/OgreMain) 