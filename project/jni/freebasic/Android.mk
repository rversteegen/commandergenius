LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libfb

LOCAL_CFLAGS := -DDISABLE_X11 -DDISABLE_FFI -DDISABLE_NCURSES -DENABLE_MT

RTLIB_DIRS := rtlib rtlib/unix rtlib/android

LOCAL_SRC_FILES := $(foreach F, $(RTLIB_DIRS), $(addprefix $(F)/,$(notdir $(wildcard $(LOCAL_PATH)/$(F)/*.c))))

LOCAL_LDLIBS :=

include $(BUILD_STATIC_LIBRARY)
