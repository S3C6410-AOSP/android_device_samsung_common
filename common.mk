#
# Copyright (C) 2009 The Android Open Source Project
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

# This lists the aspects that are unique to HTC but shared between all
# HTC devices

# Sets an Samsung-specific device-agnostic overlay
DEVICE_PACKAGE_OVERLAYS := device/samsung/common/overlay

# Get additional product configuration from the non-open-source
# counterpart to this file, if it exists
$(call inherit-product-if-exists, device/samsung/common/common-device.mk)

# Override - we don't want to use any inherited value
PRODUCT_MANUFACTURER := SAMSUNG

# Key Layouts
PRODUCT_COPY_FILES += \
    device/samsung/common/proprietary/usr/keychars/melfas_ts_input.kcm.bin:system/usr/keychars/melfas_ts_input.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/optjoy_device.kcm.bin:system/usr/keychars/optjoy_device.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/s3c-keypad-rev0000.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/s3c-keypad-rev001a.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/s3c-keypad-rev0010.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/s3c-keypad-rev0020.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/s3c-keypad-rev0030.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/s3c-keypad-rev0040.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
    device/samsung/common/proprietary/usr/keychars/s3c-keypad-rev0050.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin

PRODUCT_COPY_FILES += \
    device/samsung/common/proprietary/usr/keylayout/melfas_ts_input.kl:system/usr/keylayout/melfas_ts_input.kl \
    device/samsung/common/proprietary/usr/keylayout/s3c-keypad-rev0050.kl:system/usr/keylayout/s3c-keypad-rev0050.kl \
    device/samsung/common/proprietary/usr/keylayout/sec_headset.kl:system/usr/keylayout/sec_headset.kl
