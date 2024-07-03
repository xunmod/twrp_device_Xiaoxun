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

COMMON_FOLDER := device/Xiaoxun/sl8521e_1h10ll-common

PRODUCT_COPY_FILES += \
    $(COMMON_FOLDER)/rootdir/init.recovery.sl8521e_1h10ll.rc:root/init.recovery.sl8521e_1h10ll.rc \
    $(COMMON_FOLDER)/rootdir/init.recovery.usb.rc:root/init.recovery.usb.rc \
    $(COMMON_FOLDER)/rootdir/ueventd.sl8521e_1h10ll.rc:root/ueventd.sl8521e_1h10ll.rc \
    $(COMMON_FOLDER)/save_logs.sh:root/sbin/save_logs.sh

ADDITIONAL_BUILD_PROPERTIES += \
    sys.usb.configfs=1 \
    sys.usb.controller=musb-hdrc.0.auto
