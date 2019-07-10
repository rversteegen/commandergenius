APP_PROJECT_PATH := $(call my-dir)/..

include jni/Settings.mk

APP_STL := gnustl_static
#APP_CFLAGS := -O3 -DNDEBUG -g # arm-linux-androideabi-4.4.3 crashes in -O0 mode on SDL sources
APP_CFLAGS := -g # arm-linux-androideabi-4.4.3 crashes in -O0 mode on SDL sources
APP_PLATFORM := android-9  # (android 2.3) Must be same as android:minSdkVersion (ideally) or smaller.
                           # Warning: if this is smaller than your NDK version supports it
                           # may default to some value larger than minSdkVersion!
APP_PIE := false # This feature makes executables incompatible to Android API 15 or lower

# Global compiler flags
ifneq ($(filter armeabi-v7a-hard, $(APP_ABI)),)
# Link-time optimization enabled for optimization junkies. -O9001 etc
APP_CFLAGS := -flto
APP_CXXFLAGS := -flto
APP_LDFLAGS := -flto
endif
