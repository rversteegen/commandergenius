APP_PROJECT_PATH := $(call my-dir)/..

APP_STL := gnustl_static
#APP_CFLAGS := -O3 -DNDEBUG -g # arm-linux-androideabi-4.4.3 crashes in -O0 mode on SDL sources
APP_CFLAGS := -g # arm-linux-androideabi-4.4.3 crashes in -O0 mode on SDL sources
APP_PLATFORM := android-4  # android 1.6
APP_PIE := false # This feature makes executables incompatible to Android API 15 or lower

include jni/Settings.mk

