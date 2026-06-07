$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/Xiaoxun/sl8521e_1h10ll-common/common.mk)

PRODUCT_COPY_FILES += \
    device/Xiaoxun/sl8521e_1h10ll_sw763/prebuilt/kernel:kernel \
    device/Xiaoxun/sl8521e_1h10ll_sw763/prebuilt/dt.img:dt.img

PRODUCT_NAME := sl8521e_1h10ll_sw763
