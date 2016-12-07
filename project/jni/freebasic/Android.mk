LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libfb

# the old fbc android fork
LOCAL_CFLAGS := -DDISABLE_X11 -DDISABLE_FFI -DDISABLE_NCURSES -DENABLE_MT
# the new support
LOCAL_CFLAGS += -DDISABLE_NCURSES -DDISABLE_X11 -DDISABLE_FFI -DDISABLE_LANGINFO -DDISABLE_WCHAR

RTLIB_DIRS := rtlib rtlib/unix rtlib/android

LOCAL_SRC_FILES := $(foreach F, $(RTLIB_DIRS), $(addprefix $(F)/,$(notdir $(wildcard $(LOCAL_PATH)/$(F)/*.c))))

LOCAL_LDLIBS :=

include $(BUILD_STATIC_LIBRARY)
