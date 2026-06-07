COMMON_PATH := $(call my-dir)

INSHEAD := $(COMMON_PATH)/insertheader/prebuilt/bin/imgheaderinsert
SIGNEDIMG ?= $(PRODUCT_OUT)/recovery-sign.img
INSTALLED_DTIMAGE_TARGET := $(PRODUCT_OUT)/dt.img
SPRDSIGN := $(COMMON_PATH)/signimage/prebuilt/bin/sprd_sign
SPRDSIGNCFG := $(COMMON_PATH)/signimage/config

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(INSTALLED_DTIMAGE_TARGET) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo -e ${PRT_IMG}"----- Making recovery image ------"${CL_RST}
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --dt $(INSTALLED_DTIMAGE_TARGET) --output $@
	$(hide) $(INSHEAD) $(INSTALLED_RECOVERYIMAGE_TARGET) 0
	$(hide) mv $(SIGNEDIMG) $(INSTALLED_RECOVERYIMAGE_TARGET)
	$(hide) $(SPRDSIGN) $(INSTALLED_RECOVERYIMAGE_TARGET) $(SPRDSIGNCFG)
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE))
	@echo -e ${PRT_IMG}"----- Made recovery image: $@ --------"${CL_RST}
