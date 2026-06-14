LOCAL_PATH:=$(call my-dir)
    include $(CLEAR_VARS)
$(warning sprdsign)
mysrc_path:=$(LOCAL_PATH)/../../common

file_list:=$(wildcard $(mysrc_path)/pk1/src/*.c)

file_list += $(wildcard $(mysrc_path)/rsa/src/*.c)
file_list += $(wildcard $(mysrc_path)/sha256/src/*.c)
file_list += $(wildcard $(mysrc_path)/verify/src/*.c)

LOCAL_C_INCLUDES := \
			$(mysrc_path)/pk1/inc \
			$(mysrc_path)/rsa/inc \
			$(mysrc_path)/sha256/inc \
			$(mysrc_path)/verify/inc \
			external/openssl/include

LOCAL_SRC_FILES := start.c
LOCAL_SRC_FILES += $(file_list:$(LOCAL_PATH)/%=%)

LOCAL_LDFLAGS := -ldl
ifeq ($(strip $(USE_SOC_ID)),true)
LOCAL_CFLAGS += -DSoC_ID
endif
#LOCAL_STATIC_LIBRARIES += libcrypto_static
LOCAL_SHARED_LIBRARIES := libcrypto-host # += libssl-host

LOCAL_MODULE := sprd_sign
LOCAL_MODULE_PATH := $(HOST_OUT_EXECUTABLES)

include $(BUILD_HOST_EXECUTABLE)
