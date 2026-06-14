LOCAL_PATH := $(call my-dir)

ifneq ($(filter sl8521e_1h10ll%, $(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
