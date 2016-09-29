LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgreOverlay
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/Components/Overlay/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/Components/Overlay/include

LOCAL_STATIC_LIBRARIES := OgreMain

OgreOverlay_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/Components/Overlay/src/*.cpp)

LOCAL_SRC_FILES := $(OgreOverlay_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgrePaging
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/Components/Paging/include
LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/Components/Paging/include
LOCAL_STATIC_LIBRARIES := OgreMain
Paging_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/Components/Paging/src/*.cpp)
LOCAL_SRC_FILES := $(Paging_CPPFILE_LIST:$(LOCAL_PATH)/%=%)
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgreRTShaderSystem
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/Components/RTShaderSystem/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/Components/RTShaderSystem/include
LOCAL_STATIC_LIBRARIES := OgreMain

RTShaderSystem_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/Components/RTShaderSystem/src/*.cpp)
LOCAL_SRC_FILES := $(RTShaderSystem_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgreTerrain
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/Components/Terrain/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/Components/Terrain/include
LOCAL_STATIC_LIBRARIES := OgreMain OgrePaging

Terrain_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/Components/Terrain/src/*.cpp)
LOCAL_SRC_FILES := $(Terrain_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := OgreVolume
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/Components/Volume/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/Components/Volume/include
LOCAL_STATIC_LIBRARIES := OgreMain

Volume_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/Components/Volume/src/*.cpp)
LOCAL_SRC_FILES := $(Volume_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := MeshLodGenerator
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/Components/MeshLodGenerator/include

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/Components/MeshLodGenerator/include
LOCAL_STATIC_LIBRARIES := OgreMain

MeshLodGenerator_CPPFILE_LIST := $(wildcard $(LOCAL_PATH)/Components/MeshLodGenerator/src/*.cpp)
LOCAL_SRC_FILES := $(MeshLodGenerator_CPPFILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_STATIC_LIBRARY)

$(call import-module,ogre/OgreMain) 