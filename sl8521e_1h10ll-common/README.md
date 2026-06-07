# TWRP common device tree for Xiaoxun sl8521e\_1h10ll watch

In `BoardConfig.mk`:
```
include device/Xiaoxun/sl8521e_1h10ll-common/BoardConfigCommon.mk

TARGET_PREBUILT_DTIMAGE := (path to dt.img)
```

In `device.mk`:
```
$(call inherit-product, device/Xiaoxun/sl8521e_1h10ll-common/common.mk)
```
