# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH:= $(call my-dir)

MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/*/*.c)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/*/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/*/*/*.c)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/*/*/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/*/*/*/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/*/*/*/*/*.cpp)

include $(CLEAR_VARS)

LOCAL_MODULE    		:= CEGUI

LOCAL_C_INCLUDES 		:= $(LOCAL_PATH)/include $(LOCAL_PATH)/cegui/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/cegui/include

LOCAL_SRC_FILES 		:= $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_STATIC_LIBRARIES 	:= minizip freeimage freetype android_support

include $(BUILD_STATIC_LIBRARY)

$(call import-module, ogre/FreeImage)
$(call import-module, ogre/minizip)
$(call import-module, ogre/freetype)
$(call import-module, android/support)
