LOCAL_PATH := $(call my-dir)

INSERTHEADER := $(HOST_OUT_EXECUTABLES)/imgheaderinsert$(HOST_EXECUTABLE_SUFFIX)
SPRDSIGN := $(HOST_OUT_EXECUTABLES)/sprd_sign$(HOST_EXECUTABLE_SUFFIX)
INSTALLED_DTIMAGE_TARGET := $(PRODUCT_OUT)/dt.img
SIGNED_IMG := $(PRODUCT_OUT)/recovery-sign.img

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(INSTALLED_DTIMAGE_TARGET) \
		$(INSERTHEADER) $(SPRDSIGN) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo -e ${PRT_IMG}"----- Making recovery image ------"${CL_RST}
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --dt $(INSTALLED_DTIMAGE_TARGET) --output $@
	$(hide) $(INSERTHEADER) $@ 0
	$(hide) $(SPRDSIGN) $(SIGNED_IMG) $(LOCAL_PATH)/signimage/config
	$(hide) mv $(SIGNED_IMG) $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE))
	@echo -e ${PRT_IMG}"----- Made recovery image: $@ --------"${CL_RST}
