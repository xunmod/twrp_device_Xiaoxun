#
# Copyright (C) 2024 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := sl8521e
TARGET_BOOTLOADER_BOARD_NAME := sl8521e_1h10ll 
TARGET_NO_BOOTLOADER := true

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
	--base 0 \
	--pagesize 2048 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x05400000 \
	--tags_offset 0x00000100
BOARD_KERNEL_SEPARATED_DT := true

RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := watch_mdpi
TW_DEFAULT_BRIGHTNESS := 165
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_MAX_BRIGHTNESS := 255
TW_SCREEN_BLANK_ON_BOOT := true
# TW_EXCLUDE_BASH := true
# TW_EXCLUDE_TZDATA := true
# TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
# TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NANO := true
# TW_INCLUDE_SUPERSU := true
TW_DEFAULT_LANGUAGE := zh-CN
