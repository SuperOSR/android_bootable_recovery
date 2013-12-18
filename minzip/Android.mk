LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	Hash.c \
	SysUtil.c \
	DirUtil.c \
	Inlines.c \
	Zip.c

LOCAL_C_INCLUDES := \
	external/zlib \
	external/safe-iop/include

LOCAL_STATIC_LIBRARIES := libselinux

ifeq ($(TARGET_BOARD_PLATFORM), fiber)
    LOCAL_CFLAGS += -DTARGET_BOARD_FIBER
endif

LOCAL_MODULE := libminzip

LOCAL_CFLAGS += -Wall

include $(BUILD_STATIC_LIBRARY)
