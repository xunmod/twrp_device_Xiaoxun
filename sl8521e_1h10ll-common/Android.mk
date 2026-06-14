$(warning sprd9820common)
ifneq ($(filter sl8521e_1h10ll%, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

$(warning sprd9820commonbuild)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
