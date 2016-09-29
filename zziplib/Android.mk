LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := zziplib
LOCAL_CFLAGS := -DNDEBUG
LOCAL_SRC_FILES := zzip/dir.c \
				zzip/err.c \
				zzip/fetch.c \
				zzip/file.c \
				zzip/fseeko.c \
				zzip/info.c \
				zzip/memdisk.c \
				zzip/mmapped.c \
				zzip/plugin.c \
				zzip/stat.c \
				zzip/write.c \
				zzip/zip.c \

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}

include $(BUILD_STATIC_LIBRARY)

$(call import-module,cxx-stl/gnu-libstdc++) 